final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestTemplate = (await File('TestExecuteTemplate.doc').readAsBytes()).buffer.asByteData();
final requestData = (await File('TestExecuteTemplateData.txt').readAsBytes()).buffer.asByteData();
final mailMergeRequest = ExecuteMailMergeOnlineRequest(requestTemplate, requestData);
await wordsApi.executeMailMergeOnline(mailMergeRequest);