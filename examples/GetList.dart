final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetListRequest('TestGetLists.doc', 1);
await wordsApi.getList(request);