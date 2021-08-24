final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestStyleUpdate = StyleUpdate();
requestStyleUpdate.name = 'My Style';
final updateRequest = UpdateStyleOnlineRequest(requestDocument, 'Heading 1', requestStyleUpdate);
await wordsApi.updateStyleOnline(updateRequest);