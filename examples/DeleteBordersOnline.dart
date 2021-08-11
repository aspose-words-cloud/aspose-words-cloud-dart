final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteBordersOnlineRequest(requestDocumentData, nodePath: 'tables/1/rows/0/cells/0');
await wordsApi.deleteBordersOnline(deleteRequest);