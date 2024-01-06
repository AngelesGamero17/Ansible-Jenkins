pipeline {
    agent any
    stages {
        stage("Ejecutar el playbox") {
            steps {
                script {
                    ansiblePlaybook installation: 'Ansible-prueba', inventory: '/home/angeles/kafka/hosts.yaml', playbook: '/home/angeles/kafka/test2.yaml', vaultTmpPath: ''
            }
        }
    }
}