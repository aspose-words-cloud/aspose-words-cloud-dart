final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetHeaderFooterOfSectionRequest('Sample.docx', 0, 0);
await wordsApi.getHeaderFooterOfSection(request);