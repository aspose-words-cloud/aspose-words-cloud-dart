final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteParagraphTabStopOnlineRequest(requestDocumentData, 72.0, 0, nodePath: '');
await wordsApi.deleteParagraphTabStopOnline(deleteRequest);