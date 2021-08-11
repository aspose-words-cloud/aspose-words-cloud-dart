final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
final requestListInsert = ListInsert();
requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;
final insertRequest = InsertListOnlineRequest(requestDocumentData, requestListInsert);
await wordsApi.insertListOnline(insertRequest);