elifePipeline {
    def commit
    stage 'Checkout', {
        checkout scm
        commit = elifeGitRevision()
    }

    elifeOnNode(
        {
            stage 'Build images', {
                checkout scm
                sh './build.sh'
            }

            stage 'Smoke tests', {
                try {
                    sh './run.sh &'
                    sh 'docker-wait-healthy cermine 60'
                } finally {
                    sh 'docker stop cermine'
                }
            }

            elifeMainlineOnly {
                stage 'Push images', {
                    sh './push.sh'
                }
            }
        },
        'containers--medium'
    )
}
