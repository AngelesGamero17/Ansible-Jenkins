pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Ejecutar Script Groovy') {
            steps {

                echo "hola"

            }
        }
    }

    post {
        always {
            // Puedes agregar pasos adicionales que siempre se ejecutarán, incluso si hay errores.
        }
    }
}
