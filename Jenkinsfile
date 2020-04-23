pipeline {
agent any
stages {
stage('Build') {
steps {
   xcodeBuild appURL: '',
                    assetPackManifestURL: '',
                    buildDir: '',
                    bundleID: 'com.lockdown.app',
                    bundleIDInfoPlistPath: 'iOSPipeline/Info.plist',
                    cfBundleShortVersionStringValue: '',
                    cfBundleVersionValue: '',
                    changeBundleID: true,
                    configuration: 'Debug',
                    developmentTeamID: '',
                    developmentTeamName: 'Tregaron India Holdings, LLC',
                    displayImageURL: '',
                    fullSizeImageURL: '',
                    ipaExportMethod: 'development',
                    ipaName: 'career-coach',
                    ipaOutputDirectory: '',
                    keychainName: '',
                    keychainPath: '',
                    keychainPwd: keychainPwd: hudson.util.Secret.fromString(''),
                    logfileOutputDirectory: '',
                    provisioningProfiles: [[provisioningProfileAppId: '', provisioningProfileUUID: '']],
                    sdk: '',
                    symRoot: '',
                    target: 'iOSPipeline',
                    thinning: '',
                    xcodeProjectFile: '',
                    xcodeProjectPath: 'iOSPipeline',
                    xcodeSchema: 'iOSPipeline',
                    xcodeWorkspaceFile: 'iOSPipeline',
                    xcodebuildArguments: ''


}
                   } 
     } 
post {

          always { 
echo 'Hi'
//sh 'ln -s test-results-unit.xml $WORKSPACE'
//junit allowEmptyResults: true, testResults: '**/test-results/*.xml'
//archiveArtifacts artifacts: '**/*.ipa', fingerprint: true
          //  junit 'build/reports/**/*.xml'
         } 
         success { 
  mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "SUCCESS CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com";

         } 
         failure { 
           mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com"; 
       } 
         unstable { 
mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "UNSTABLE CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com"; 
         } 
         changed { 
mail bcc: '', body: "<b>Details</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "PREVIOUSLY FAILING BUT IS NOW SUCCESSFUL CI: Project name -> ${env.JOB_NAME}", to: "nkdiyasys@gmail.com";
}
                   } 
}