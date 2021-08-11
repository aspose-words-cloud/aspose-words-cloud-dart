final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetHeaderFooterRequest('Sample.docx', 0);
await wordsApi.getHeaderFooter(request);