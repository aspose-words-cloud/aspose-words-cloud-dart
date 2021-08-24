final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteDocumentPropertyOnlineRequest(requestDocument, 'testProp');
await wordsApi.deleteDocumentPropertyOnline(deleteRequest);