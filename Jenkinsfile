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
                script {
                    def scriptPath = "/var/jenkins_home/tus_scripts_groovy/tu_script.groovy"
                    sh "groovy ${scriptPath}"
                }
            }
        }
    }

    post {
        always {
            // Puedes agregar pasos adicionales que siempre se ejecutarán, incluso si hay errores.
        }
    }
}
