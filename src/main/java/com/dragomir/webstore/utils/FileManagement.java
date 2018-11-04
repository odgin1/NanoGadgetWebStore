package com.dragomir.webstore.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.AccessDeniedException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;

public class FileManagement {

	@Autowired
	private ServletContext context;

	public static void fileCopy(String source, String destination) {

		try {
			Files.copy(new File(source).toPath(), new File(destination).toPath());
		} catch (AccessDeniedException a) {
			a.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void copyImagesToRootDir() {
		String imageContextpPath = new String(context.getRealPath("/") + "\\resources\\images\\");
		String imageRepoPath = Constants.IMAGE_REPOSITORY;
		File f = new File(imageRepoPath);

		ArrayList<File> files = new ArrayList<File>(Arrays.asList(f.listFiles()));

		for (File file : files) {
			String fileName = file.getName();
			if (!fileName.equals("mainPic.jpg")) {
				FileManagement.fileCopy(imageRepoPath + fileName, imageContextpPath + fileName);
			}
		}
	}
}
