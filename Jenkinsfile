
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
 stage('xcarchive') {
            			steps {
xcodebuild build -project iOSPipeline.xcworkspace -scheme iOSPipeline | xcpretty
}
}
			 stage('archive') {
            			steps {

               				xcodebuild -project iOSPipeline.xcworkspace -scheme iOSPipeline -sdk iphoneos -configuration "debug" archive -archivePath /Users/*/*/workspace/*/iOSPipeline.xcarchive | /usr/local/bin/ocunit2junit					}
				}
		}
	}