final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestPageNumber = PageNumber();
requestPageNumber.alignment = 'center';
requestPageNumber.format = '{PAGE} of {NUMPAGES}';
final insertRequest = InsertPageNumbersRequest('Sample.docx', requestPageNumber);
await wordsApi.insertPageNumbers(insertRequest);