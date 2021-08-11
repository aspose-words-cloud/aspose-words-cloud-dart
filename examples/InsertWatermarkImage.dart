final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final insertRequest = InsertWatermarkImageRequest(remoteFileName, imageFile: null, destFileName: remoteFileName, image: 'Sample.png');
await wordsApi.insertWatermarkImage(insertRequest);