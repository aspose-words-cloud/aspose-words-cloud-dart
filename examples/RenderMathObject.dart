final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final renderRequest = RenderMathObjectRequest('Sample.docx', 'png', 0);
await wordsApi.renderMathObject(renderRequest);