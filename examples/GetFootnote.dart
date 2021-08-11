final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetFootnoteRequest('Sample.docx', 0);
await wordsApi.getFootnote(request);