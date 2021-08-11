final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetTablePropertiesRequest('Sample.docx', 1);
await wordsApi.getTableProperties(request);