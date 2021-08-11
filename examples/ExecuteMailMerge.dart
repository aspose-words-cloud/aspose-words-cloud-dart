final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final mailMergeRequest = ExecuteMailMergeRequest(remoteFileName, data: 'TestExecuteTemplateData.txt', destFileName: remoteFileName);
await wordsApi.executeMailMerge(mailMergeRequest);