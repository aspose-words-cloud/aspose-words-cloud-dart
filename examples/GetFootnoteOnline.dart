final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
final request = GetFootnoteOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.getFootnoteOnline(request);