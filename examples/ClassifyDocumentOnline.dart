final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final classifyRequest = ClassifyDocumentOnlineRequest(requestDocument, bestClassesCount: '3');
await wordsApi.classifyDocumentOnline(classifyRequest);