pipeline {
    agent{
      node{
          label 'maven'
      }
    } 

environment{
    PATH = "/opt/apache-maven-3.9.6/bin:$PATH"
}
    stages {
        stage('build') {
            steps {
                sh 'mvn clean deploy' }
        }

        stage('SonarQube analysis') {

            environment{
                scannerHome = tool 'witschey-sonar-scanner';
                JAVA = "/usr/lib/jvm/jdk-17-oracle-x64/bin/java"
            }
            
            steps {
                withSonarQubeEnv('witschey-sonarqube-server') { // If you have configured more than one global server connection, you can specify its name
            sh "${scannerHome}/bin/sonar-scanner" }
            }
        }
    }
}
