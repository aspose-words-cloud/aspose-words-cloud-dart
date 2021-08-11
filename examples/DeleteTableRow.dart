final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteTableRowRequest('Sample.docx', 'tables/1', 0);
await wordsApi.deleteTableRow(deleteRequest);