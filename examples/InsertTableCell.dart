final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestCell = TableCellInsert();

final insertRequest = InsertTableCellRequest('Sample.docx', 'sections/0/tables/2/rows/0', requestCell);
await wordsApi.insertTableCell(insertRequest);