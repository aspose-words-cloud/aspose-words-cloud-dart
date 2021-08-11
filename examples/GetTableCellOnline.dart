final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final request = GetTableCellOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', 0);
await wordsApi.getTableCellOnline(request);