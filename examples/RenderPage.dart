final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final renderRequest = RenderPageRequest('Sample.docx', 1, 'bmp');
await wordsApi.renderPage(renderRequest);