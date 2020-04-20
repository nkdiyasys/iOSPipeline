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
 			stage('Check project') {
    			        if (sendStartNotification()) {
       			         slackSend channel: slackChannel, color: 	colorForBuildResult(currentBuild.getPreviousBuild()), message: slackMessagePrefix() + " 				Started (<${env.BUILD_URL}|Open>)"
    					        }

     		       checkout scm
            
         	   // Delete and recreate build directory
         	   dir('build') {
          	      deleteDir()
          	  }

         	   sh "mkdir -p build"
      			  }
			}
		}