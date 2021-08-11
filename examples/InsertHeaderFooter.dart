final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final insertRequest = InsertHeaderFooterRequest('Sample.docx', '', 'FooterEven');
await wordsApi.insertHeaderFooter(insertRequest);