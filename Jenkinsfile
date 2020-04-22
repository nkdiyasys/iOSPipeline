pipeline {
    agent any
    
    stages {
        stage('Ok') {
            steps {
                echo "Ok"
            }
        }

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
 }

