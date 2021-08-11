final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final classifyRequest = ClassifyDocumentRequest('Sample.docx', bestClassesCount: '3');
await wordsApi.classifyDocument(classifyRequest);