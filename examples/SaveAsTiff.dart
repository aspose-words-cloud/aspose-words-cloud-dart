final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestSaveOptions = TiffSaveOptionsData();
requestSaveOptions.saveFormat = 'tiff';
requestSaveOptions.fileName = '/abc.tiff';
final saveRequest = SaveAsTiffRequest('Sample.docx', requestSaveOptions);
await wordsApi.saveAsTiff(saveRequest);