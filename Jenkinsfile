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
/*

	stage('Push image') {
		/* Login docker.io with the hidden credentials in docker-hub-credentials'*/
/*
		docker.withRegistry('https://registry-1.docker.io/v2', 'docker-hub-credentials') {
			/* Finally, we'll push the image with two tags:
			 * First, the incremental build number from Jenkins
			 * Second, the 'latest' tag.
			 * Pushing multiple tags is cheap, as all the layers are reused. */
/*
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
*/
}
