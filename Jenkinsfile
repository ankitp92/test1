pipeline {
    agent any


    stages {
        stage('build') {

          steps{
              script{
                if [ $GIT_BRANCH=='origin/master' ]
                then
                  sh "printenv"
                fi
                }
            }
          }
    }

}
