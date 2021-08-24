final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final renderRequest = RenderMathObjectOnlineRequest(requestDocument, 'png', 0);
await wordsApi.renderMathObjectOnline(renderRequest);