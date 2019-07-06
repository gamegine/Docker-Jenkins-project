node {
	def app
	
	stage('Clone repository') {
		/* Let's make sure we have the repository cloned to our workspace */
		checkout scm
	}
	
	stage('Build image') {
		/* Builds the actual image; synonymous to
		 * docker build on the command line */
		app = docker.build('samplephpwebsite')
	}

	stage('test') {
		app.inside {
			/* install app  */
			sh 'phpunit /var/www/samplephpwebsite/PHPUnit.php'
		}
	}
}
