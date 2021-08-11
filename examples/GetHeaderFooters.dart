final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetHeaderFootersRequest('Sample.docx', '');
await wordsApi.getHeaderFooters(request);