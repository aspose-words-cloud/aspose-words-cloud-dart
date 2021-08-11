final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.deleteAllParagraphTabStopsOnline(deleteRequest);