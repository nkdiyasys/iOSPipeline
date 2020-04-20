#!groovy

// This Jenkinsfile is used to build, test, and generate code coverage for an iOS project
// If you want to use this Jenkinsfile with your own project you'll need to make some changes:
// 1. Change the following variables to match your project
def xcodeproj = 'iOSPipeline.xcodeproj' // Path to the xcodeproj
def xcarchive_name = "iOSPipeline.xcarchive" // Name of the archive to build
def build_scheme = 'iOSPipeline' // Scheme to build the app
def test_scheme = 'iOSPipeline' // Scheme to build tests
def simulator_device = 'iPhone 7' // Name of the device type to use for tests
// 2. If you want to upload builds to a server, update the buildURL variable and uncomment the scp command under stage('Save')
// 3. If you want Slack notifications, return true in the functions below and set the Slack channel
def slackChannel = '#general'


//Library('general-pipeline') _

def sendStartNotification() {
    // Send a Slack notification when the build starts?
    false
}

def sendSuccessNotification() {
    // Send a Slack notification when the build succeeds?
    false
}

def sendUnstableNotification() {
    // Send a Slack notification when the build is unstable (such as when tests fail)?
    false
}

def sendFailNotification() {
    // Send a Slack notification when the build fails (such as build failures)?
    false
}

def slackMessagePrefix() {
    // Generate a nicer name for branches in Slack notifications
    // Converts Job Name/feature%2Fnew-feature to Job Name - feature/new-feature
    def jobName = env.JOB_NAME.replaceAll("/", " - ").replaceAll("%2F", "/")

    "${jobName} - #${env.BUILD_NUMBER}"
}

// Configure Jenkins to keep the last 200 build results and the last 50 build artifacts for this job
properties([buildDiscarder(logRotator(artifactNumToKeepStr: '50', numToKeepStr: '200'))])

node {
    def startTime = System.currentTimeMillis()
    def buildURL = "https://example.com/builds/ios"
    def branchNameForURL = env.BRANCH_NAME.replaceAll("/", "-")

    try {
        stage('Check project') {
            if (sendStartNotification()) {
                slackSend channel: slackChannel, color: colorForBuildResult(currentBuild.getPreviousBuild()), message: slackMessagePrefix() + " Started (<${env.BUILD_URL}|Open>)"
            }

            checkout scm
            
            // Delete and recreate build directory
            dir('build') {
                deleteDir()
            }

            sh "mkdir -p build"
        }

            

 
            def endTime = System.currentTimeMillis()
            def durationString = createDurationString(startTime, endTime)
            def testResults = getTestResult()
            def testResultString = getTestResultString()
            def unstableFromTests = testResults && (testResults[1] > 0 || testResults[2] > 0)

            if (sendSuccessNotification() || (unstableFromTests && sendUnstableNotification())) {
                def status = unstableFromTests ? 'Unstable' : 'Success'
                def color = unstableFromTests ? 'warning' : 'good'
                def message = slackMessagePrefix() + " ${status} after ${durationString} (<${env.BUILD_URL}|Open>)\n\t${testResultString}"

                if (buildURL) {
                    message = message + "\n" + buildURL
                }

                slackSend channel: slackChannel, color: color, message: message
            }
     
    } catch (e) {
        def endTime = System.currentTimeMillis()
        def durationString = createDurationString(startTime, endTime)
        def testResultString = getTestResultString()

        if (sendFailNotification()) {
            slackSend channel: slackChannel, color: 'danger', message: slackMessagePrefix() + " Failed after ${durationString} (<${env.BUILD_URL}|Open>)\n\t${testResultString}"
        }

        throw e
    }
}

def createDurationString(startTime, endTime) {
    def duration = endTime - startTime
    def minutes = (int)(duration / 60000)
    def seconds = (int)(duration / 1000) % 60

    /${minutes} min ${seconds} sec/
}

def colorForBuildResult(build) {
    if (build == null || build.result == 'SUCCESS') {
        'good'
    } else if (build.result == 'UNSTABLE') {
        'warning'
    } else {
        'danger'
    }
}
