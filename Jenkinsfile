pipeline{
    agent{
        label "linux-node"
    }
    stages{
        stage("Build"){
            steps{
                nodejs('nodejs') {
                    echo 'Building...'
                    sh 'npm install'
                    echo 'Built'
                }
            }
        }
        stage("Deploy") {
            steps {
                nodejs('nodejs') {
                    echo 'Starting...'
                    sh 'npm start'
                }
            }
        }
    }
}