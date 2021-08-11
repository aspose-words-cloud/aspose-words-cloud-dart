final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestRow = TableRowInsert();
requestRow.columnsCount = 5;
final insertRequest = InsertTableRowRequest('Sample.docx', 'sections/0/tables/2', requestRow);
await wordsApi.insertTableRow(insertRequest);