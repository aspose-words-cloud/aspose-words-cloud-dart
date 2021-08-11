final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final splitRequest = SplitDocumentOnlineRequest(requestDocumentData, 'text', destFileName: '/TestSplitDocument.text', from: 1, to: 2);
await wordsApi.splitDocumentOnline(splitRequest);