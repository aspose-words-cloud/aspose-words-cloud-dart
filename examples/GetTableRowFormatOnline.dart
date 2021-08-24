final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetTableRowFormatOnlineRequest(requestDocument, 'sections/0/tables/2', 0);
await wordsApi.getTableRowFormatOnline(request);