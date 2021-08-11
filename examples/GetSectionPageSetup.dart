final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetSectionPageSetupRequest('Sample.docx', 0);
await wordsApi.getSectionPageSetup(request);