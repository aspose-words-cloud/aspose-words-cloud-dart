final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final createRequest = CreateDocumentRequest(fileName: 'Sample.docx');
await wordsApi.createDocument(createRequest);