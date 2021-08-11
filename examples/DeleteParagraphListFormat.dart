final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteParagraphListFormatRequest('Sample.docx', 0);
await wordsApi.deleteParagraphListFormat(deleteRequest);