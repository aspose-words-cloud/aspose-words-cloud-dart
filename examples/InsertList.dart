final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestListInsert = ListInsert();
requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;
final insertRequest = InsertListRequest('TestGetLists.doc', requestListInsert);
await wordsApi.insertList(insertRequest);