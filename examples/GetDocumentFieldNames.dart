final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentFieldNamesRequest('Sample.docx');
await wordsApi.getDocumentFieldNames(request);