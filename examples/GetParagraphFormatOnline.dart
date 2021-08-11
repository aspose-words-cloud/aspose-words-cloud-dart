final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final request = GetParagraphFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.getParagraphFormatOnline(request);