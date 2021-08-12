final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestListUpdate = ListUpdate();
requestListUpdate.isRestartAtEachSection = true;
final updateRequest = UpdateListOnlineRequest(requestDocumentData, 1, requestListUpdate);
await wordsApi.updateListOnline(updateRequest);