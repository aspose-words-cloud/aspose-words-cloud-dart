final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestListInsert = ListInsert();
requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;
final insertRequest = InsertListOnlineRequest(requestDocument, requestListInsert);
await wordsApi.insertListOnline(insertRequest);