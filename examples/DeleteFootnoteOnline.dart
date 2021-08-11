final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteFootnoteOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.deleteFootnoteOnline(deleteRequest);