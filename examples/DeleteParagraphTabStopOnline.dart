final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteParagraphTabStopOnlineRequest(requestDocument, 72.0, 0);
await wordsApi.deleteParagraphTabStopOnline(deleteRequest);