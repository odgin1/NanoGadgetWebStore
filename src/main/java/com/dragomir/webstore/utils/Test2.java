package com.dragomir.webstore.utils;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import javax.swing.filechooser.FileSystemView;

public class Test2 {
    public static void main(String[] args){

      List <File>files = Arrays.asList(File.listRoots());
      for (File f : files) {
        String s1 = FileSystemView.getFileSystemView().getSystemDisplayName (f);
        String s2 = FileSystemView.getFileSystemView().getSystemTypeDescription(f);
        String s3 = FileSystemView.getFileSystemView().getSystemDisplayName(f);
        System.out.println("getSystemDisplayName : " + s1);
        System.out.println("getSystemTypeDescription : " + s2);
        System.out.println("");
        
        
      }
      System.out.println("=======================================");

      File[] roots = File.listRoots();
      for(int i = 0; i < roots.length ; i++)
          System.out.println("Root["+i+"]:" + roots[i]);
      /* output (French WinXP)

          getSystemDisplayName : 
          getSystemTypeDescription : Disquette 3D pouces

          getSystemDisplayName : REGA1 (C:)
          getSystemTypeDescription : Disque local

          getSystemDisplayName : 
          getSystemTypeDescription : Lecteur CD

          getSystemDisplayName : My Book (F:)
          getSystemTypeDescription : Disque local
      */
    }
}