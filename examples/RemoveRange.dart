final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final removeRequest = RemoveRangeRequest('Sample.docx', 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
await wordsApi.removeRange(removeRequest);