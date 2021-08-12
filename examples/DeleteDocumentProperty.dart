final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteDocumentPropertyRequest('Sample.docx', 'testProp');
await wordsApi.deleteDocumentProperty(deleteRequest);