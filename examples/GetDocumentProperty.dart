final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentPropertyRequest('Sample.docx', 'Author');
await wordsApi.getDocumentProperty(request);