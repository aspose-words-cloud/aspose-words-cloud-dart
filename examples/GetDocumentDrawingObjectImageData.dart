final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentDrawingObjectImageDataRequest('Sample.docx', 0);
await wordsApi.getDocumentDrawingObjectImageData(request);