pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AngelesGamero17/Ansible-Jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Construyendo el proyecto...'
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                echo 'Ejecutando pruebas...'
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Desplegando el proyecto...'
                
                // Llamar a Ansible para la implementación
                sh 'ansible-playbook -i inventario.ini despliegue.yml'
            }
        }
    }

    post {
        success {
            echo 'La construcción y las pruebas han sido exitosas.'

            // Notificación de éxito en GitHub
            updateGitHubCommitStatus('success', 'La construcción ha sido exitosa.')
        }
        failure {
            echo 'La construcción o las pruebas han fallado. Verifica los detalles.'

            // Notificación de falla en GitHub
            updateGitHubCommitStatus('failure', 'La construcción ha fallado. Verifica los detalles.')
        }
    }
}

