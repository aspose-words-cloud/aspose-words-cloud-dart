final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteFootnoteRequest('Sample.docx', 0);
await wordsApi.deleteFootnote(deleteRequest);