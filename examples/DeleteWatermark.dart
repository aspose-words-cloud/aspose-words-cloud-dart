final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final deleteRequest = DeleteWatermarkRequest(remoteFileName, destFileName: remoteFileName);
await wordsApi.deleteWatermark(deleteRequest);