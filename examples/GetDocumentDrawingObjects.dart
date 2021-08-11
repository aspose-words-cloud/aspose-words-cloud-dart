final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentDrawingObjectsRequest('Sample.docx');
await wordsApi.getDocumentDrawingObjects(request);