final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentDrawingObjectOleDataRequest('Sample.docx', 0);
await wordsApi.getDocumentDrawingObjectOleData(request);