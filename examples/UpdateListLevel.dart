final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestListUpdate = ListLevelUpdate();
requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;
final updateRequest = UpdateListLevelRequest('TestGetLists.doc', 1, 1, requestListUpdate);
await wordsApi.updateListLevel(updateRequest);