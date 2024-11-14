pipeline {
    agent any

    stages {
        
        stage('Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerid', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh '''
                    docker build -t ${USER}/ngin -f Dockerfile .
                    echo "docker build done"
                    docker login -u ${USER} -p ${PASS}
                    echo "ready to push"
                    docker push ${USER}/ngin
                    '''
                }
            }
        }
    }
}
