//@Library('shared') _

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
						emailext body: 'noting', recipientProviders: [developers()], 	subject: 'sub', to: 'nkdiyasys@gmail.com'
  			    }
			}
			stage('Junit') {
				steps {
  					sh 'ln -s tests/test-results-unit.xml $WORKSPACE'
					junit allowEmptyResults: true, testResults: '**/test-results/*.xml'
				}
			}

			stage('Test') {
				steps {
			//testcompletetest suite: 'Projects\iOSPipeline.pjs'
			xcodebuild -project iOSPipeline.xcodeproj \
			-scheme iOSPipeline \
			-destination 'platform=iOS Simulator,OS=13.3,name=iPhone 11 Pro Max' \
			-enableCodeCoverage YES \test | /usr/local/bin/ocunit2junit
				}
			}
			}
		}