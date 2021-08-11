final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final renderRequest = RenderTableRequest('Sample.docx', 'png', 0);
await wordsApi.renderTable(renderRequest);