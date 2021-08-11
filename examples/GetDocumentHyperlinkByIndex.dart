final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentHyperlinkByIndexRequest('Sample.docx', 0);
await wordsApi.getDocumentHyperlinkByIndex(request);