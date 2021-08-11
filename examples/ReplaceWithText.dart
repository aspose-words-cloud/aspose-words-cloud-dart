final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestRangeText = ReplaceRange();
requestRangeText.text = 'Replaced header';
final replaceRequest = ReplaceWithTextRequest('Sample.docx', 'id0.0.0', requestRangeText, rangeEndIdentifier: 'id0.0.1');
await wordsApi.replaceWithText(replaceRequest);