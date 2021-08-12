final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final mailMergeRequest = ExecuteMailMergeRequest('Sample.docx', data: 'TestExecuteTemplateData.txt');
await wordsApi.executeMailMerge(mailMergeRequest);