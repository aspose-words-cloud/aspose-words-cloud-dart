final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final request = GetTableRowFormatOnlineRequest(requestDocumentData, 'sections/0/tables/2', 0);
await wordsApi.getTableRowFormatOnline(request);