final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
final request = GetParagraphTabStopsOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.getParagraphTabStopsOnline(request);