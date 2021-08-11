final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.newPassword = '123';
final protectRequest = ProtectDocumentOnlineRequest(requestDocumentData, requestProtectionRequest);
await wordsApi.protectDocumentOnline(protectRequest);