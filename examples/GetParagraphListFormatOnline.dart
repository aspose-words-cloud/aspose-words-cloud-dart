final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final request = GetParagraphListFormatOnlineRequest(requestDocumentData, 0);
await wordsApi.getParagraphListFormatOnline(request);