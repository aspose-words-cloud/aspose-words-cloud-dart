final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentWithFormatRequest('Sample.docx', 'text', outPath: '/TestGetDocumentWithFormatAndOutPath.text');
await wordsApi.getDocumentWithFormat(request);