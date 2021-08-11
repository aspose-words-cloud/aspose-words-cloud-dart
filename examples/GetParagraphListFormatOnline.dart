final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/ParagraphGetListFormat.doc").readAsBytes()).buffer.asByteData();
final request = GetParagraphListFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.getParagraphListFormatOnline(request);