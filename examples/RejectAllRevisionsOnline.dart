final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final rejectRequest = RejectAllRevisionsOnlineRequest(requestDocument);
await wordsApi.rejectAllRevisionsOnline(rejectRequest);