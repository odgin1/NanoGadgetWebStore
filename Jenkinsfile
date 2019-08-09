pipeline {
    agent { docker { image 'maven:3.3.9' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'java -jar target/webstore-0.0.1-SNAPSHOT.war'
            }
        }
    }
}