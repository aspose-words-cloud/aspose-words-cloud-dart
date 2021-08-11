final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final deleteRequest = DeleteCustomXmlPartsRequest(remoteFileName, destFileName: remoteFileName);
await wordsApi.deleteCustomXmlParts(deleteRequest);