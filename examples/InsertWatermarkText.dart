final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestWatermarkText = WatermarkText();
requestWatermarkText.text = 'This is the text';
requestWatermarkText.rotationAngle = 90.0;
final insertRequest = InsertWatermarkTextRequest('Sample.docx', requestWatermarkText);
await wordsApi.insertWatermarkText(insertRequest);