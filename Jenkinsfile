pipeline {
    agent any
          stages {
            stage('build') {
              steps {
                 script{
                    sh 'ruby -v'
                    sh 'echo 构建fir'
                 }
              }
              post {
                success {
                    mail to: 'cashier@chupinxiu.com', subject: 'fir-cli构建完成', body: ''
                }
                failure {
                    mail to: 'cashier@chupinxiu.com',  subject: 'fir-cli构建失败', body: " Build ${env.BUILD_NUMBER} failed; ${env.BUILD_URL}"
                }
              }
            }
          }
}