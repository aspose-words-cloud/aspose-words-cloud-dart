final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteWatermarkRequest('Sample.docx');
await wordsApi.deleteWatermark(deleteRequest);