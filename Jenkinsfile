pipeline {
    agent { docker { image 'maven:3.3.9' } }
    stages {
        stage('build') {
            steps {
                sh 'docker run -v ~/.m2:/var/maven/.m2 -ti --rm -u 1000 -e MAVEN_CONFIG=/var/maven/.m2 maven mvn -Duser.home=/var/maven mvn -version'
            }
        }
    }
}