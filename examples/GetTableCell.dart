final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetTableCellRequest('Sample.docx', 'sections/0/tables/2/rows/0', 0);
await wordsApi.getTableCell(request);