final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestListUpdate = ListUpdate();
requestListUpdate.isRestartAtEachSection = true;
final updateRequest = UpdateListRequest('TestGetLists.doc', 1, requestListUpdate);
await wordsApi.updateList(updateRequest);