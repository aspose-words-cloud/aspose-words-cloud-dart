final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetSectionRequest('Sample.docx', 0);
await wordsApi.getSection(request);