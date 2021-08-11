final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final renderRequest = RenderDrawingObjectRequest('Sample.docx', 'png', 0);
await wordsApi.renderDrawingObject(renderRequest);