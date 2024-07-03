pipeline{
    agent{
        label "linux-node"
    }
    stages{
        stage("Build"){
            steps{
                nodejs('nodejs') {
                    echo 'Building...'
                    sh '''
                    w
                    npm install'''
                    echo 'Built'
                }
            }
        }
        stage("Deploy") {
            steps {
                sh 'docker run --name node-app -p 3000:3000 -v $(pwd):/home/node/app node:lts-slim start'
            }
        }
    }
}