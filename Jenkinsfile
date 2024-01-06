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
    }

    post {
        success {
            echo 'La construc y las pruebas han sido exitosas.'
        }
        failure {
            echo 'La construcción o las pruebas han fallado. Verifica los detalles.'
        }
    }
}
