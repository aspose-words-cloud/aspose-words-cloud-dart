final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteMacrosRequest('Sample.docx');
await wordsApi.deleteMacros(deleteRequest);