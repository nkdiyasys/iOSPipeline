//@Library('shared') _

def xcodeproj = 'iOSPipeline.xcodeproj' // Path to the xcodeproj
def xcarchive_name = "iOSPipeline.xcarchive" // Name of the archive to build
def build_scheme = 'iOSPipeline' // Scheme to build the app
def test_scheme = 'iOSPipeline' // Scheme to build tests
def simulator_device = 'iPhone 7' // Name of the device type to use for tests


def clone(udid) {
    checkout changelog: true, poll: true, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: "$udid/ios-mobile-engage-sample-app"]], submoduleCfg: [], userRemoteConfigs: [[url: 'git@github.com:emartech/ios-mobile-engage-sample-app.git']]]
}

def podi(udid) {
  lock("pod") {
    sh "cd $udid/ios-mobile-engage-sample-app && pod repo update && pod update"
  }
}

def uninstallSample(ecid) {
    sh "${env.CFG_UTIL}cfgutil --ecid $ecid remove-app com.emarsys.mobile-engage-sample-app || true"
}

def buildAndTest(platform, udid) {
  lock(udid) {
    def uuid = UUID.randomUUID().toString()
    try {
        sh "mkdir /tmp/$uuid"
        retry(3) {
            sh "cd $udid/ios-mobile-engage-sample-app && fastlane scan --scheme mobile-engage-sample-app-iosUITests -d 'platform=$platform,id=$udid' --derived_data_path $uuid -o test_output/unit/"
        }
    } catch(e) {
        currentBuild.result = 'FAILURE'
        throw e
    } finally {
      junit "$udid/ios-mobile-engage-sample-app/test_output/unit/*.junit"
      archiveArtifacts "$udid/ios-mobile-engage-sample-app/test_output/unit/*"
    }
  }
}

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