final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetBookmarkByNameRequest('Sample.docx', 'aspose');
await wordsApi.getBookmarkByName(request);