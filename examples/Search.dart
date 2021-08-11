final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final searchRequest = SearchRequest('Sample.docx', 'aspose');
await wordsApi.search(searchRequest);