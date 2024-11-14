pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                docker build . -t ${USER}/ngin
                docker login -u ${USER} -p ${PASS}
                docker push ${USER}/ngin
                '''
            }
        }
    }
}
