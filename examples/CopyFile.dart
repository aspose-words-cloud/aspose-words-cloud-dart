final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final copyRequest = CopyFileRequest('/TestCopyFileDest.docx', 'Sample.docx');
await wordsApi.copyFile(copyRequest);