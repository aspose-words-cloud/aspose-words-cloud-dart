final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetParagraphListFormatRequest('Sample.docx', 0);
await wordsApi.getParagraphListFormat(request);