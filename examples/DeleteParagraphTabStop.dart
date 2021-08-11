final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteParagraphTabStopRequest('Sample.docx', 72.0, 0);
await wordsApi.deleteParagraphTabStop(deleteRequest);