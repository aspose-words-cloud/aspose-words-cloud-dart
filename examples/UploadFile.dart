final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFileContentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final uploadRequest = UploadFileRequest(requestFileContentData, 'Sample.docx');
await wordsApi.uploadFile(uploadRequest);