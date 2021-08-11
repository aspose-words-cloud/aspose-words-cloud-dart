final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentDrawingObjectByIndexRequest('Sample.docx', 0);
await wordsApi.getDocumentDrawingObjectByIndex(request);