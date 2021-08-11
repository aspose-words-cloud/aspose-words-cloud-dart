final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteSectionRequest('Sample.docx', 0);
await wordsApi.deleteSection(deleteRequest);