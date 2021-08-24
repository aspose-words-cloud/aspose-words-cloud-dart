final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final splitRequest = SplitDocumentOnlineRequest(requestDocument, 'text', destFileName: '/TestSplitDocument.text', from: 1, to: 2);
await wordsApi.splitDocumentOnline(splitRequest);