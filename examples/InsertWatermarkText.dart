final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestWatermarkText = WatermarkText();
requestWatermarkText.text = 'This is the text';
requestWatermarkText.rotationAngle = 90.0;
final insertRequest = InsertWatermarkTextRequest(remoteFileName, requestWatermarkText, destFileName: remoteFileName);
await wordsApi.insertWatermarkText(insertRequest);