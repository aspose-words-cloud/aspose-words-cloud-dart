final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestStyleInsert = StyleInsert();
requestStyleInsert.styleName = 'My Style';
requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;
final insertRequest = InsertStyleRequest('Sample.docx', requestStyleInsert);
await wordsApi.insertStyle(insertRequest);