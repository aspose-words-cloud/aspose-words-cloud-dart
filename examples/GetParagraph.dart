final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetParagraphRequest('Sample.docx', 0);
await wordsApi.getParagraph(request);