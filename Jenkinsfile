pipeline {
    agent { docker { image 'maven:3.6.1-jdk-8' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn -version'
                                sh 'echo "Hello World"'
                                sh '''
                                    echo "Multiline shell steps works too"
                                    ls -lah
                                '''

            }
        }
    }
}
