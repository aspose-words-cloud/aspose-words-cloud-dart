final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final removeRequest = RemoveRangeOnlineRequest(requestDocumentData, 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
await wordsApi.removeRangeOnline(removeRequest);