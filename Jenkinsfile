pipeline{
    agent any 
    stages {
        stage('Lint Checks') {
            steps {
                sh "npm i jslint"   
                sh "~/node_modules/jslint/bin/jslint.js server.js || true"
                sh "Lint Checks Completed"
            }
        } 
        stage('Code Quality Checks') {
            steps {
                sh "echo SonarChecksInProgress"   

            }
        }     

    }   // end of stages 
}  // end of pipelines