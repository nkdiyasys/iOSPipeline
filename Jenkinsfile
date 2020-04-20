@Library('github.com/mozmeao/jenkins-pipeline@master')

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
					input('Do you want to proceed?')
					}	
				}
 			stage('Build and Test'){
				steps { 
     			       parallel iOS_9_3_Simulator: {
        		        buildAndTest 'iOS Simulator', env.IOS93SIMULATOR
       				 }, failFast: false
  			    }
			}
			}
		}