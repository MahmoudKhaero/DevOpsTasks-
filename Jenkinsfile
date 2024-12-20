pipeline {
    agent {
        label 'slave'
    }
    stages {
        stage('Build') {
            steps {
                git branch: 'dev', url: 'https://github.com/MahmoudKhaero/DevOpsTasks-.git'

                sh "whoami"

                withCredentials([usernamePassword(credentialsId: 'dockerid', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh '''
                    docker build -t ${USER}/ngin -f Dockerfile .
                    docker login -u ${USER} -p ${PASS}
                    docker push ${USER}/ngin
                    '''
                }
            }
        }
    }
}
