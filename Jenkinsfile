pipeline {
    agent any

    tools {
        groovy 'Jenkinsfile'
    }

    parameters {
        string(name: 'ANSIBLE_USER', defaultValue: 'ansible', description: 'Usuario de Ansible')
        string(name: 'ANSIBLE_INVENTORY', defaultValue: 'hosts.yml', description: 'Inventario de Ansible')
        string(name: 'ANSIBLE_PLAYBOOK', defaultValue: 'test2.yaml', description: 'Playbook de Ansible')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AngelesGamero17/Ansible-Jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Construyendo el proyecto'
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                echo 'Ejecutando pruebas'
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Desplegando el proyecto...'

                // Llamar a Ansible para la implementación con parámetros
            
            }
        }
    }

    post {
        success {
            echo 'La construcción y las pruebas han sido exitosas.'

            updateGitHubCommitStatus('success', 'La construcción ha sido exitosa.')
        }
        failure {
            echo 'La construcción o las pruebas han fallado. Verifica los detalles.'

            updateGitHubCommitStatus('failure', 'La construcción ha fallado. Verifica los detalles.')
        }
    }
}
