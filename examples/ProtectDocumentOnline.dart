final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.newPassword = '123';
final protectRequest = ProtectDocumentOnlineRequest(requestDocument, requestProtectionRequest);
await wordsApi.protectDocumentOnline(protectRequest);