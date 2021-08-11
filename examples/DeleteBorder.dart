final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteBorderRequest('Sample.docx', 'left', nodePath: 'tables/1/rows/0/cells/0');
await wordsApi.deleteBorder(deleteRequest);