final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteRunOnlineRequest(requestDocument, 'paragraphs/1', 0);
await wordsApi.deleteRunOnline(deleteRequest);