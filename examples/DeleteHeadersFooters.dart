final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteHeadersFootersRequest('Sample.docx', '');
await wordsApi.deleteHeadersFooters(deleteRequest);