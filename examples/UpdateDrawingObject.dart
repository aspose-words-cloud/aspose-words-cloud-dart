final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
final requestDrawingObject = DrawingObjectUpdate();
requestDrawingObject.left = 0;
final updateRequest = UpdateDrawingObjectRequest('Sample.docx', requestDrawingObject, requestImageFileData, 0);
await wordsApi.updateDrawingObject(updateRequest);