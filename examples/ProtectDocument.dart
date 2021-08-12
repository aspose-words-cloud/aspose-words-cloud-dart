final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.password = '123';
requestProtectionRequest.protectionType = 'ReadOnly';
final protectRequest = ProtectDocumentRequest('Sample.docx', requestProtectionRequest);
await wordsApi.protectDocument(protectRequest);