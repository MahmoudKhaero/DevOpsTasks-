pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                git branch: 'dev', url: "https://github.com/MahmoudKhaero/DevOpsTasks-.git"
            }
        }
        
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
