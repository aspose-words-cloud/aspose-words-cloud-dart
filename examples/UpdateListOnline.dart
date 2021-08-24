final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestListUpdate = ListUpdate();
requestListUpdate.isRestartAtEachSection = true;
final updateRequest = UpdateListOnlineRequest(requestDocument, 1, requestListUpdate);
await wordsApi.updateListOnline(updateRequest);