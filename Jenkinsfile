pipeline {
    agent any


    stages {
        stage('build') {
          steps{
              echo env.GIT_BRANCH
              if(env.GIT_BRANCH == 'origin/master'){
                env.is_master_branch = true
              }
              sh "printenv"
            }
          }
    }

}
