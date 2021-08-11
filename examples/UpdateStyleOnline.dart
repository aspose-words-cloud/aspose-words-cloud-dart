final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestStyleUpdate = StyleUpdate();
requestStyleUpdate.name = 'My Style';
final updateRequest = UpdateStyleOnlineRequest(requestDocumentData, 'Heading 1', requestStyleUpdate);
await wordsApi.updateStyleOnline(updateRequest);