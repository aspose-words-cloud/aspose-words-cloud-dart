final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestCell = TableCellInsert();

final insertRequest = InsertTableCellOnlineRequest(requestDocument, 'sections/0/tables/2/rows/0', requestCell);
await wordsApi.insertTableCellOnline(insertRequest);