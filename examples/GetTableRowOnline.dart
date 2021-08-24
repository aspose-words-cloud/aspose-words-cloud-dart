final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetTableRowOnlineRequest(requestDocument, 'tables/1', 0);
await wordsApi.getTableRowOnline(request);