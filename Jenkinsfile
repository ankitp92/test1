pipeline {
    agent any


    stages {
        stage('build') {
          when{
            branch "test"
          }

          steps{
              echo env.GIT_BRANCH
              sh "printenv"
            }
          }
    }

}
