final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/ParagraphDeleteListFormat.doc").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteParagraphListFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.deleteParagraphListFormatOnline(deleteRequest);