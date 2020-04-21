
def xcodeproj = 'iOSPipeline.xcodeproj' // Path to the xcodeproj
def xcarchive_name = "iOSPipeline.xcarchive" // Name of the archive to build
def build_scheme = 'iOSPipeline' // Scheme to build the app
def test_scheme = 'iOSPipeline' // Scheme to build tests
def simulator_device = 'iPhone 7' // Name of the device type to use for tests


pipeline {
	agent any
 		stages {
			stage('one') {
				steps {
					echo 'Hi, Nk. How are you'
					}	
				}
			stage('two') {
				steps {
					//input('Do you want to proceed?')
					echo 'commented input'
					}	
				}
 			stage('Email'){
				steps { 
						emailext attachLog: true,body: 'noting', recipientProviders: [developers()], 	subject: 'sub', to: 'nkdiyasys@gmail.com'
  			    }
			}
			stage('Junit') {
				steps {
  					sh 'ln -s tests/test-results-unit.xml $WORKSPACE'
					junit allowEmptyResults: true, testResults: '**/test-results/*.xml'
				}
			}

			stage('Build') {
				steps {
			//testcompletetest suite: 'Projects\iOSPipeline.pjs'
			xcodeBuild appURL: '', assetPackManifestURL: '', 
			buildDir: '',
			 buildIpa: true,
			 bundleID: '',
 			bundleIDInfoPlistPath: '', 
			cfBundleShortVersionStringValue: '', 
			cfBundleVersionValue: '',
			cleanBeforeBuild: true,
			cleanBeforeBuild: false, 
			cleanResultBundlePath: false, 
			configuration: 'Debug', developmentTeamID: '',
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