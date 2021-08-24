final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final request = GetFootnotesOnlineRequest(requestDocument);
await wordsApi.getFootnotesOnline(request);