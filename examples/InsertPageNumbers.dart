final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestPageNumber = PageNumber();
requestPageNumber.alignment = 'center';
requestPageNumber.format = '{PAGE} of {NUMPAGES}';
final insertRequest = InsertPageNumbersRequest(remoteFileName, requestPageNumber, destFileName: remoteFileName);
await wordsApi.insertPageNumbers(insertRequest);