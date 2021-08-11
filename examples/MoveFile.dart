final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final moveRequest = MoveFileRequest('/TestMoveFileDest_Sample.docx', 'Sample.docx');
await wordsApi.moveFile(moveRequest);