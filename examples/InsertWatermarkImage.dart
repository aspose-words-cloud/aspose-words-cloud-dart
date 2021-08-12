final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final insertRequest = InsertWatermarkImageRequest('Sample.docx', imageFile: null, image: 'Sample.png');
await wordsApi.insertWatermarkImage(insertRequest);