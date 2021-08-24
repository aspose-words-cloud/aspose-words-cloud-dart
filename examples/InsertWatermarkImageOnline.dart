final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestImageFile = (await File('Common/aspose-cloud.png').readAsBytes()).buffer.asByteData();
final insertRequest = InsertWatermarkImageOnlineRequest(requestDocument, requestImageFile);
await wordsApi.insertWatermarkImageOnline(insertRequest);