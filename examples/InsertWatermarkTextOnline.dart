final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestWatermarkText = WatermarkText();
requestWatermarkText.text = 'This is the text';
requestWatermarkText.rotationAngle = 90;
final insertRequest = InsertWatermarkTextOnlineRequest(requestDocumentData, requestWatermarkText);
await wordsApi.insertWatermarkTextOnline(insertRequest);