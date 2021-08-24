final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFileContent = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final uploadRequest = UploadFileRequest(requestFileContent, 'Sample.docx');
await wordsApi.uploadFile(uploadRequest);