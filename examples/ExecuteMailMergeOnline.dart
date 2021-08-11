final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestTemplateData = (await File("TestExecuteTemplate.doc").readAsBytes()).buffer.asByteData();
final requestDataData = (await File("TestExecuteTemplateData.txt").readAsBytes()).buffer.asByteData();
final mailMergeRequest = ExecuteMailMergeOnlineRequest(requestTemplateData, requestDataData);
await wordsApi.executeMailMergeOnline(mailMergeRequest);