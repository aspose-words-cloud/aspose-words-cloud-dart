final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final renderRequest = RenderDrawingObjectOnlineRequest(requestDocument, 'png', 0, nodePath: 'sections/0');
await wordsApi.renderDrawingObjectOnline(renderRequest);