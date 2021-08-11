final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteHeaderFooterRequest('Sample.docx', '', 0);
await wordsApi.deleteHeaderFooter(deleteRequest);