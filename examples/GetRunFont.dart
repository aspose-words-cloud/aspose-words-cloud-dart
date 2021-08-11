final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetRunFontRequest('Sample.docx', 'paragraphs/0', 0);
await wordsApi.getRunFont(request);