final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetBorderRequest('Sample.docx', 'left', nodePath: 'tables/1/rows/0/cells/0');
await wordsApi.getBorder(request);