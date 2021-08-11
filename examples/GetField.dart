final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetFieldRequest('Sample.docx', 0);
await wordsApi.getField(request);