final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final request = GetRangeTextOnlineRequest(requestDocument, 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
await wordsApi.getRangeTextOnline(request);