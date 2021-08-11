final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteBordersRequest('Sample.docx', nodePath: 'tables/1/rows/0/cells/0');
await wordsApi.deleteBorders(deleteRequest);