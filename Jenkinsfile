
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
//  /usr/local/bin/ocunit2junit
xcodeBuild(
			xcodeProjectPath: 'iOSPipeline', 
  xcodeSchema: "iOSPipeline",
  ipaOutputDirectory: 'Debug',
  ipaExportMethod: 'development',
  generateArchive: true,
  buildIpa: true,
  ipaName: "123",
  bundleID: 'com.lockdown.app',
  developmentTeamName: "Tregaron India Holdings, LLC",
			provisioningProfiles: [[provisioningProfileAppId: 'com.lockdown.app', 				provisioningProfileUUID: '4e3f3e97-d9d0-465e-9340-de6a3e0acc30']],
  cleanBeforeBuild: true,
  configuration: 'Debug',
  cfBundleShortVersionStringValue: '1.0.0',
  cfBundleVersionValue: '1'
)
}
}
			 stage('archive') {
            			steps {
					echo 'Bye, Nk.'

				}
				}
		}
	}