pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t ${USER}/ngin -f Dockerfile .
                docker login -u ${USER} -p ${PASS}
                docker push ${USER}/ngin
                '''
            }
        }
    }
}
