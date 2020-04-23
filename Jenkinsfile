
pipeline {
	agent any
 		stages {
	 		stage('Build') {
				steps {
		xcodeBuild appURL: '', assetPackManifestURL: '', 
			buildDir: '',
			 buildIpa: true,
			 bundleID: '',
 			bundleIDInfoPlistPath: '', 
			cfBundleShortVersionStringValue: '', 
			cfBundleVersionValue: '',
			cleanBeforeBuild: true,
			cleanResultBundlePath: false, 
			configuration: 'Debug',
			 developmentTeamID: '',
 			developmentTeamName: 'Tregaron India Holdings, LLC', 
			displayImageURL: '', 
			fullSizeImageURL: '',
		        ipaExportMethod: 'development', 
			ipaName: '${VERSION}_${BUILD_DATE}', 
			ipaOutputDirectory: '', 
			keychainId: '', 
			keychainPath:  '${HOME}/Library/Keychains/login.keychain',
 			keychainPwd: hudson.util.Secret.fromString(''),
 			logfileOutputDirectory: '', 
			provisioningProfiles: [[provisioningProfileAppId: 'com.lockdown.app', 				provisioningProfileUUID: '4e3f3e97-d9d0-465e-9340-de6a3e0acc30']],
 			resultBundlePath: '', 
			sdk: '', 
			signingMethod: 'manual',
			 symRoot: '',
 			target: '', 
			thinning: '',
 			xcodeProjectFile: '', 
			xcodeProjectPath: 'iOSPipeline', 
			xcodeSchema: 'iOSPipeline', 
			xcodeWorkspaceFile: '', 
			xcodebuildArguments: 'test -destination \'platform=iOS Simulator,OS=13.3,name=iPhone 11 Pro Max\''

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
  //sh 'ln -s tests/test-results-unit.xml $WORKSPACE'
//junit allowEmptyResults: true, testResults: 'test-reports/*.xml'
        sh 'xcodebuild -scheme "iOSPipeline" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 6,OS=9.3" -enableCodeCoverage YES | /usr/local/bin/xcpretty -r junit'
        step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])

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

