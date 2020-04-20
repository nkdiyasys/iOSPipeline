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
			}
		}