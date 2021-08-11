final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetTableRowRequest('Sample.docx', 'tables/1', 0);
await wordsApi.getTableRow(request);