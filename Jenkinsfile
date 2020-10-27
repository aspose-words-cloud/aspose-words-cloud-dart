properties([
    gitLabConnection('gitlab'),
    [$class: 'ParametersDefinitionProperty', 
        parameterDefinitions: [
            [$class: 'StringParameterDefinition', name: 'branch', defaultValue: 'master', description: 'the branch to build'],
            [$class: 'StringParameterDefinition', name: 'apiUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'api url'],
            [$class: 'BooleanParameterDefinition', name: 'ignoreCiSkip', defaultValue: false, description: 'ignore CI Skip'],
        ]
    ]
])

def needToBuild = false

node('words-linux') {
    cleanWs()
    if (!params.branch.contains("release")) {
        dir('dart') {
            try {
                stage('checkout'){
                    checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'LocalBranch', localBranch: "**"]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/words-cloud-sdk-dart.git']]])
                    
                    sh 'git show -s HEAD > gitMessage'
                    def commitMessage = readFile('gitMessage').trim()
                    echo commitMessage
                    needToBuild = params.ignoreCiSkip || !commitMessage.contains('[ci skip]')
                    sh 'git clean -fdx'
                    
                    if (needToBuild) {
                        withCredentials([usernamePassword(credentialsId: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', passwordVariable: 'AppKey', usernameVariable: 'AppSid')]) {
                            sh 'mkdir -p settings'
                            sh 'echo "{\\"AppSid\\": \\"$AppSid\\",\\"AppKey\\": \\"$AppKey\\", \\"BaseUrl\\": \\"$apiUrl\\"}" > settings/servercreds.json'
                        }
                    }
                }
                
                if (needToBuild) {
                    docker.image('google/dart:latest').inside {
                        stage('prepare'){
                            sh "pub get"
                            sh "pub global activate junitreport"
                        }
                    
                        stage('tests'){
                            try {
                                sh "pub run test test/aspose_words_cloud_tests.dart --reporter json > testReport.json"
                                sh "pub global run junitreport:tojunit --input testReport.json --output testReport.xml"
                            } finally{
                                junit 'testReport.xml'
                            }
                        }
                    } 
                }
            } finally {
                deleteDir()
            }
        }
    }
}