pipeline {
	environment{
		ENV = 'dev'
  	}
	parameters {
        booleanParam(name: 'DEPLOY', defaultValue: false, description: 'Toggle this value')
    }	
	stages{
		stage ('Preparation deploy Infra'){
			when {
				expression { params.DEPLOY == true }
			}
			steps {
				sh "cd environments/${env.ENV} && ls && terraform init -plugin-dir=/tmp/terraform_plugin && terraform plan"
			}
		}
		stage('Approve deployment') {
			when {
				expression { params.DEPLOY == true }
			}
			steps {
				timeout(time: 7, unit: 'DAYS') {
					script {
						env.APPROVE_DEPLOY = input(message: 'Approve deployment', 
						parameters: [booleanParam(defaultValue: true, 
						description: 'Voulez-vous continuer le deploiement ?', name: 'Approved Deployment')])
					}
				}
			}
		}
		stage ('Deploy Infra'){
			when {
        		environment name: 'APPROVE_DEPLOY', value: "true"
			}
			steps {
				sh "cd environments/${env.ENV} && terraform apply -auto-approve"
			}
		}
	}
}
