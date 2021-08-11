final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetRangeTextRequest('Sample.docx', 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
await wordsApi.getRangeText(request);