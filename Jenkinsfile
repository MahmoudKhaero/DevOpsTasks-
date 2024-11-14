pipeline {
    agent any

    stages {
        
        stage('Build') {
            steps {
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
