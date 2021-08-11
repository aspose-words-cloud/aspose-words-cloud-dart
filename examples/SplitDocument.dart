final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final splitRequest = SplitDocumentRequest('Sample.docx', 'text', destFileName: '/TestSplitDocument.text', from: 1, to: 2);
await wordsApi.splitDocument(splitRequest);