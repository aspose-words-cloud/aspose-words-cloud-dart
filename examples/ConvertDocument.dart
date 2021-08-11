final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/test_uploadfile.docx").readAsBytes()).buffer.asByteData();
final convertRequest = ConvertDocumentRequest(requestDocumentData, 'pdf');
await wordsApi.convertDocument(convertRequest);