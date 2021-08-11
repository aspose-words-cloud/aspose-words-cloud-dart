final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestStyleUpdate = StyleUpdate();
requestStyleUpdate.name = 'My Style';
final updateRequest = UpdateStyleRequest('Sample.docx', 'Heading 1', requestStyleUpdate);
await wordsApi.updateStyle(updateRequest);