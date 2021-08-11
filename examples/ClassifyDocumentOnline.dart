final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final classifyRequest = ClassifyDocumentOnlineRequest(requestDocumentData, bestClassesCount: '3');
await wordsApi.classifyDocumentOnline(classifyRequest);