pipeline {
    agent any


    stages {
        stage('build') {

          steps{
            script {
              sh 'printenv'
              result = sh (script: "git log -1 | grep '\\[pnl skip\\]'", returnStatus: true)
              echo "${result}"
              if ( result!=0 ){
                env.skip_pnl="0"
                echo "Performing PnL"
              }else {
                env.skip_pnl="1"
                echo "Not performing PnL"
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
            build job: 'test2', parameters: [[$class: 'StringParameterValue', name: 'SKIP_PnL', value: env.skip_pnl],[$class: 'StringParameterValue', name: 'JOB_TRIGGER', value: "1"]]
          }

      }
    }


}
