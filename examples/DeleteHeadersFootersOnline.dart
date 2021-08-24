final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteHeadersFootersOnlineRequest(requestDocument, '');
await wordsApi.deleteHeadersFootersOnline(deleteRequest);