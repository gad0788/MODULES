pipeline {
    agent any

    environment {
        // Define environment variables if needed
        //TF_VAR_example = "value"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init -no-color'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Run Terraform plan
                sh 'terraform plan -out=tfplan -var EN=$ENVIRONMENT -var size=$INSTANCE_TYPE -var region=$REGION --no-color'
            }
        }
    }
}

//         stage('Terraform Apply') {
//             steps {
//                 // Apply the Terraform plan
//                // sh 'terraform apply -input=false tfplan'
//             }
//         }
//     }

//     post {
//         always {
//             // Clean up the workspace after the build
//             cleanWs()
//         }

//         success {
//             // Notify success
//             echo 'Terraform code applied successfully!'
//         }

//         failure {
//             // Notify failure
//             echo 'Terraform code failed to apply.'
//         }
//     }
// }
