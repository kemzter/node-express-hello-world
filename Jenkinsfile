pipeline{
    agent{
        label "linux-node"
    }
    stages{
        stage("Cleanup") {
            steps {
                sh 'docker stop node-app || true'
                sh 'docker rm node-app || true'
            }
        }
        stage("Build") {
            steps{
                script {
                    image = docker.build("my-node-app")
                }
            }
        }
        stage("Deploy") {
            steps {
                sh 'docker run --name node-app -p 3000:3000 -v $(pwd):/home/node/app my-node-app'
            }
        }
    }
}