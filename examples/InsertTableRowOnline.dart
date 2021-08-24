final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestRow = TableRowInsert();
requestRow.columnsCount = 5;
final insertRequest = InsertTableRowOnlineRequest(requestDocument, 'sections/0/tables/2', requestRow);
await wordsApi.insertTableRowOnline(insertRequest);