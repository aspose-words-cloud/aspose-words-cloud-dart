final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteRunOnlineRequest(requestDocumentData, 'paragraphs/1', 0);
await wordsApi.deleteRunOnline(deleteRequest);