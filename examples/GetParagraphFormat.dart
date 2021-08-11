final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetParagraphFormatRequest('Sample.docx', 0);
await wordsApi.getParagraphFormat(request);