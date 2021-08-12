final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestRangeText = ReplaceRange();
requestRangeText.text = 'Replaced header';
final replaceRequest = ReplaceWithTextOnlineRequest(requestDocumentData, 'id0.0.0', requestRangeText, rangeEndIdentifier: 'id0.0.1');
await wordsApi.replaceWithTextOnline(replaceRequest);