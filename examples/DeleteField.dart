final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteFieldRequest('Sample.docx', 0);
await wordsApi.deleteField(deleteRequest);