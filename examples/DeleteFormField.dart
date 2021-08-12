final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteFormFieldRequest('Sample.docx', 0);
await wordsApi.deleteFormField(deleteRequest);