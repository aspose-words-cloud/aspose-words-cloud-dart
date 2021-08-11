final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestTable = TableInsert();
requestTable.columnsCount = 5;
requestTable.rowsCount = 4;
final insertRequest = InsertTableRequest('Sample.docx', requestTable);
await wordsApi.insertTable(insertRequest);