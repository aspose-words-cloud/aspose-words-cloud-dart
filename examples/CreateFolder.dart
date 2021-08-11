final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final createRequest = CreateFolderRequest('/TestCreateFolder');
await wordsApi.createFolder(createRequest);