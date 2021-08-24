final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestListUpdate = ListLevelUpdate();
requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;
final updateRequest = UpdateListLevelOnlineRequest(requestDocument, 1, requestListUpdate, 1);
await wordsApi.updateListLevelOnline(updateRequest);