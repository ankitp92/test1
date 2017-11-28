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
    }

    node {
      branch_pushed = env.GIT_BRANCH
      build job: 'test2', parameters: [[$class: 'StringParameterValue', name: 'branch_pushed', value: branch_pushed]]
    }

}
