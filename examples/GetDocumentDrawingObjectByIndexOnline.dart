final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetDocumentDrawingObjectByIndexOnlineRequest(requestDocument, 0, nodePath: 'sections/0');
await wordsApi.getDocumentDrawingObjectByIndexOnline(request);