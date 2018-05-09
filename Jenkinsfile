pipeline {
    agent any
    environment{
        imageName = "chinaopsk/hello-nginx"
    }
    stages{
        stage("Prepare"){
            steps{
                echo "Hello World!"
            }
        }
        stage("Check_version"){
            steps{
                sh "docker --version"
            }
        }    
        stage("Deploy"){
            steps {
                sshagent(['uat-server']) {
                    sh "ssh core@167.99.237.229 docker pull chinaopsk/hello-nginx"
                }
            } 
        }    
        // stage("Build Image"){
        //     steps{
        //         sh "docker build -t ${env.imageName} ."
        //         sh "docker tag ${env.imageName} ${env.imageName}:1.${env.BUILD_NUMBER}"
        //     }
        // }
        // stage("Push Image"){
        //     steps{
        //         //sh  "docker login -u chinaopsk -p "
        //         //sh  "docker push ${env.imageName}"                
        //         script{
        //             docker.withRegistry('https://docker.io',  'docker-id'){
        //                 def image   =   docker.build("${env.imageName}:1.${env.BUILD_NUMBER}")
        //                 image.push()
        //             }
        //         }
        //     }
        // } 
    }
}

