final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final moveRequest = MoveFolderRequest('/TestMoveFolderDest_Sample', '/TestMoveFolderSrc');
await wordsApi.moveFolder(moveRequest);