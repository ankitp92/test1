pipeline {
    agent any


    stages {
        stage('build') {
          when{
            branch "master"
          }

          steps{
              environment {
                is_branch_master = "true"
              }
              echo env.GIT_BRANCH
              sh "printenv"
            }
          }
    }

}
