pipeline {  
    agent any 
    tools{
        maven "Maven-3.9.6"
    }
    stages {
        stage('Clone') {
            steps {
               git 'https://github.com/tiencuckoo/maven-web-app.git'
            }
        }
        stage('Build') {
            steps {
               sh 'mvn clean package'
            }
        }        
    }
}
