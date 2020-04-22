 pipeline {  
     agent any  
     stages {  
         stage('Test') {  
             steps {  
                 sh 'echo "Fail!"; exit 1'  
             }  
         }  
     }  
   post {
 always {
   sh 'echo "This will always run"'
 }
 success {
  sh 'echo "This will run only if successful"'
 }
 failure {
  sh 'echo "This will run only if failed"'
 }
 unstable {
  sh 'echo "This will run only if the run was marked as unstable"'
 }
 changed {
  sh 'echo "This will run only if the state of the Pipeline has changed"'
  sh 'echo "For example, the Pipeline was previously failing but is now successful"'
  sh 'echo "... or the other way around :)"'
 }

     }  
 }