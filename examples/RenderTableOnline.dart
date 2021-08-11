final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final renderRequest = RenderTableOnlineRequest(requestDocumentData, 'png', 0, nodePath: '');
await wordsApi.renderTableOnline(renderRequest);