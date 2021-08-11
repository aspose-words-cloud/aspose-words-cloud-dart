final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetStyleRequest('Sample.docx', 'Heading 1');
await wordsApi.getStyle(request);