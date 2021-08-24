final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDrawingObject = DrawingObjectUpdate();
requestDrawingObject.left = 0;
final requestImageFile = (await File('Common/aspose-cloud.png').readAsBytes()).buffer.asByteData();
final updateRequest = UpdateDrawingObjectRequest('Sample.docx', requestDrawingObject, requestImageFile, 0);
await wordsApi.updateDrawingObject(updateRequest);