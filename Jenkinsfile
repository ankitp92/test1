pipeline {
    agent any


    stages {
        stage('build') {

          steps{
            script {
              sh 'printenv'
              result = sh ( script: "git log -1 | grep '\\[jenkins test\\]'", returnStatus: true )
              echo "${result}"
              if ( result!=0 ){
                skip_pnl="0"
                echo "Performing PnL"
              }else {
                skip_pnl="1"
                echo "Not performing PnL"
              }
            }
            echo "We are good"

            node('master') {
              build job: '../test2/master', parameters: [[$class: 'StringParameterValue', name: 'SKIP_PnL', value: "${skip_pnl}"],[$class: 'StringParameterValue', name: 'JOB_TRIGGER', value: "1"]]
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




}
