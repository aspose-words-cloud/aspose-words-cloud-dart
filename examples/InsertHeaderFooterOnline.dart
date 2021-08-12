final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final insertRequest = InsertHeaderFooterOnlineRequest(requestDocumentData, '', 'FooterEven');
await wordsApi.insertHeaderFooterOnline(insertRequest);