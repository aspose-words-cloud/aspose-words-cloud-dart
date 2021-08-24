final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.password = 'aspose';
final unprotectRequest = UnprotectDocumentOnlineRequest(requestDocument, requestProtectionRequest);
await wordsApi.unprotectDocumentOnline(unprotectRequest);