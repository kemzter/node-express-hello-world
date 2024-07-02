pipeline{
    agent{
        label "linux-node"
    }
    stages{
        stage("Build"){
            steps{
                sh 'ls -l'
                nodejs('nodejs') {
                    echo 'Building...'
                    sh 'npm install'
                    echo 'Built'
                }
            }
        }
    }
}