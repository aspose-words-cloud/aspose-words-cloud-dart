final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("DocumentElements/Range/RangeGet.doc").readAsBytes()).buffer.asByteData();
final request = GetRangeTextOnlineRequest(requestDocumentData, 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
await wordsApi.getRangeTextOnline(request);