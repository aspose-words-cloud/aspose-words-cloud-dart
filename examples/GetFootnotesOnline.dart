final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
final request = GetFootnotesOnlineRequest(requestDocumentData, nodePath: '');
await wordsApi.getFootnotesOnline(request);