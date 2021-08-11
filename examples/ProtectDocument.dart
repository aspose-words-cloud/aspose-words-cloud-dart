final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.password = '123';
requestProtectionRequest.protectionType = 'ReadOnly';
final protectRequest = ProtectDocumentRequest(remoteFileName, requestProtectionRequest, destFileName: remoteFileName);
await wordsApi.protectDocument(protectRequest);