pipeline {
    agent any


    stages {
        stage('build') {

          steps{
              script{
                if ( env.GIT_BRANCH=='origin/master' )
                {
                  env.branch_pushed="master"
                  sh "printenv"

                }
                }
            }


        }

        stage('build_next') {
          steps {
            script{
              echo "We are here"
            }
          }



        }

    }

    post {
      success {

          node('master') {
            build job: 'test2', parameters: [[$class: 'StringParameterValue', name: 'branch_pushed', value: env.branch_pushed]]
          }

      }
    }


}
