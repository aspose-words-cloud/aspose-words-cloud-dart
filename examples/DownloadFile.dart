final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final downloadRequest = DownloadFileRequest('Sample.docx');
await wordsApi.downloadFile(downloadRequest);