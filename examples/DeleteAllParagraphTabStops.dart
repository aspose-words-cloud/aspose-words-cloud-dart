final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteAllParagraphTabStopsRequest('Sample.docx', 0);
await wordsApi.deleteAllParagraphTabStops(deleteRequest);