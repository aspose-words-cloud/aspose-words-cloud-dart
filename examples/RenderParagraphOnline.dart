final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final renderRequest = RenderParagraphOnlineRequest(requestDocumentData, 'png', 0);
await wordsApi.renderParagraphOnline(renderRequest);