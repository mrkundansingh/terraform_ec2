pipeline {
    agent any
    statges {
      // stage ("Checkout from GIT") {
        //steps {
             //sh 'git clone https://github.com/mrkundansingh/terraform_ec2.git'
             // archiveArtifacts artifacts: 'git checkout https://github.com/mrkundansingh/terraform_ec2.git', followSymlinks: false
              //sh 'git log'
              //}
       //}
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
post {
    always {
        echo 'This will always run'
    }
    success {
        echo 'This will run only if successful'
    }
    failure {
        echo 'This will run only if failed'
    }
    unstable {
        echo 'This will run only if the run was marked as unstable'
    }
    changed {
        echo 'This will run only if the state of the Pipeline has changed'
        echo 'For example, if the Pipeline was previously failing but is now successful'
    }
   }
