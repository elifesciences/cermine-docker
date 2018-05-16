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

            elifeMainlineOnly {
                stage 'Push images', {
                    sh './push.sh'
                }
            }
        },
        'containers--medium'
    )
}
