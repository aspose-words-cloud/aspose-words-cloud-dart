final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Common/Sample.docx").readAsBytes()).buffer.asByteData();
final requestPageNumber = PageNumber();
requestPageNumber.alignment = 'center';
requestPageNumber.format = '{PAGE} of {NUMPAGES}';
final insertRequest = InsertPageNumbersOnlineRequest(requestDocumentData, requestPageNumber);
await wordsApi.insertPageNumbersOnline(insertRequest);