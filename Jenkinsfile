properties([
    gitLabConnection('gitlab'),
    [$class: 'ParametersDefinitionProperty', 
        parameterDefinitions: [
            [$class: 'StringParameterDefinition', name: 'branch', defaultValue: 'master', description: 'the branch to build'],
            [$class: 'StringParameterDefinition', name: 'apiUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'api url'],
            [$class: 'BooleanParameterDefinition', name: 'ignoreCiSkip', defaultValue: false, description: 'ignore CI Skip'],
            [$class: 'StringParameterDefinition', name: 'credentialsId', defaultValue: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', description: 'credentials id'],
            [$class: 'BooleanParameterDefinition', name: 'packageTesting', defaultValue: false, description: 'Testing package from repository without local sources. Used for prodhealthcheck'],
        ]
    ]
])

def needToBuild = false
def packageTesting = false

node('words-linux') {
    cleanWs()
    dir('dart') {
        try {
            stage('checkout'){
                checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/words-cloud-dart.git']]])

                sh 'git show -s HEAD > gitMessage'
                def commitMessage = readFile('gitMessage').trim()
                echo commitMessage
                needToBuild = params.ignoreCiSkip || !commitMessage.contains('[ci skip]')
                packageTesting = params.packageTesting
                sh 'git clean -fdx'
                
                if (needToBuild || packageTesting) {
                    withCredentials([usernamePassword(credentialsId: params.credentialsId, passwordVariable: 'ClientSecret', usernameVariable: 'ClientId')]) {
                        sh 'mkdir -p settings'
                        sh 'echo "{\\"ClientId\\": \\"$ClientId\\", \\"ClientSecret\\": \\"$ClientSecret\\",\\"BaseUrl\\": \\"$apiUrl\\"}" > settings/servercreds.json'
                    }
                }
            }
            
            if (packageTesting) {
                docker.image('google/dart:2.14').inside {
                    stage('prepare'){
                        sh "rm -rf lib"
                        sh "cp ./pubspec_package_testing.yaml ./pubspec.yaml"
                        sh "dart pub add aspose_words_cloud"
                        sh "pub get"
                        sh "pub global activate junitreport"
                    }
                    
                    stage('lint'){
                        sh "dartanalyzer --fatal-infos --fatal-warnings --options analysis_options.yaml ."
                    }
                
                    stage('tests'){
                        try {
                            sh "pub run test test/aspose_words_cloud_tests.dart --concurrency=1 --no-color --reporter expanded --file-reporter json:testReport.json"
                        } finally {
                            sh "pub global run junitreport:tojunit --input testReport.json --output testReport.xml"
                            junit 'testReport.xml'
                        }
                    }
                } 
            }
            else if (needToBuild) {
                docker.image('google/dart:2.14').inside {
                    stage('prepare'){
                        sh "pub get"
                        sh "pub global activate junitreport"
                    }
                    
                    stage('lint'){
                        sh "dartanalyzer --fatal-infos --fatal-warnings --options analysis_options.yaml ."
                    }
                
                    stage('tests'){
                        try {
                            sh "pub run test test/aspose_words_cloud_tests.dart --concurrency=1 --no-color --reporter expanded --file-reporter json:testReport.json"
                        } finally {
                            sh "pub global run junitreport:tojunit --input testReport.json --output testReport.xml"
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