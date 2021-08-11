final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
final insertRequest = InsertWatermarkImageOnlineRequest(requestDocumentData, requestImageFileData);
await wordsApi.insertWatermarkImageOnline(insertRequest);