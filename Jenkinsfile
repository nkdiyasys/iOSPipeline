pipeline {
    agent any stages {
        stage('Ok') {
            steps {
                echo "Ok"
            }
        }
    }
    post {
        always {
            echo 'This will always run'
        }
        success {
            mail bcc: '',
            body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}",
            cc: '',
            charset: 'UTF-8',
            from: '',
            mimeType: 'text/html',
            replyTo: '',
            subject: "SUCCESS CI: Project name -> ${env.JOB_NAME}",
            to: "nkdiyasys@gmail.com";
        }
        failure {
            mail bcc: '',
            body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}",
            cc: '',
            charset: 'UTF-8',
            from: '',
            mimeType: 'text/html',
            replyTo: '',
            subject: "ERROR CI: Project name -> ${env.JOB_NAME}",
            to: "nkdiyasys@gmail.com";
        }
        unstable {
            mail bcc: '',
            body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}",
            cc: '',
            charset: 'UTF-8',
            from: '',
            mimeType: 'text/html',
            replyTo: '',
            subject: "UNSTABLE CI: Project name -> ${env.JOB_NAME}",
            to: "nkdiyasys@gmail.com";
        }
        changed {
            mail bcc: '',
            body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}",
            cc: '',
            charset: 'UTF-8',
            from: '',
            mimeType: 'text/html',
            replyTo: '',
            subject: "PREVIOUSLY FAILING BUT IS NOW SUCCESSFUL CI: Project name -> ${env.JOB_NAME}",
            to: "nkdiyasys@gmail.com";
        }
    }
}