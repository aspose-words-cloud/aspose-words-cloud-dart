final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final folderToCopy = '/TestCopyFolder';

final copyRequest = CopyFolderRequest(folderToCopy + 'Dest', folderToCopy + 'Src');
await wordsApi.copyFolder(copyRequest);