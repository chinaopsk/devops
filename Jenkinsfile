pipeline {
    stages{
        stage("Prepare"){
            steps{
                echo "Hello World!"s
            }
        }
        stage("Check_version"){
            steps{
                sh "docker --version"
            }
        }        
        stage("Build Image"){
            steps{
                sh "docker build -t hello-nginx ."
            }
        } 
    }
}

