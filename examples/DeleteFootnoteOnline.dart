final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteFootnoteOnlineRequest(requestDocument, 0);
await wordsApi.deleteFootnoteOnline(deleteRequest);