final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.password = 'aspose';
final unprotectRequest = UnprotectDocumentRequest('Sample.docx', requestProtectionRequest);
await wordsApi.unprotectDocument(unprotectRequest);