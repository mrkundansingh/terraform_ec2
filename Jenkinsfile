pipeline {
    agent any
    stages {
         stage('Clean Workspace') {
            steps {
                sh 'rm -rf *'
            }
        }

       stage ("Checkout from GIT") {
           steps{
		checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], 
       		userRemoteConfigs: [[credentialsId: 'a6da4c8b-3941-4289-8351-98ab69e62374', url: 'https://github.com/mrkundansingh/terraform_ec2.git']]])		
		}
       }
      stage ("Terraform init") {
        steps {
              sh 'terraform init' 
              }
       }
      stage ("Terraform fmt") {
        steps {
            sh 'terraform fmt'
        }
      }
     stage ("Terraform validate") {
        steps {
            sh 'terraform validate'
        }
     }
     stage ("Terraform plan") {
        steps {
              sh 'terraform plan'      
        }
     }
     stage ("Terraform apply") {
        steps {
             sh 'terraform apply --auto-approve'
           
        }
    }
  }
}
