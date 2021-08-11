final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteRunRequest('Sample.docx', 'paragraphs/1', 0);
await wordsApi.deleteRun(deleteRequest);