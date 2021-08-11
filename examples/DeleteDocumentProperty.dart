final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final deleteRequest = DeleteDocumentPropertyRequest(remoteFileName, 'testProp', destFileName: remoteFileName);
await wordsApi.deleteDocumentProperty(deleteRequest);