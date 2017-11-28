pipeline {
    agent any


    stages {
        stage('build') {

          steps{
              if ( $GIT_BRANCH!='origin/master' )
              then
                sh "printenv"
              fi
            }
          }
    }

}
