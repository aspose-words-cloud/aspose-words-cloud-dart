final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestOptions = OptimizationOptions();
requestOptions.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002;
final optimizeRequest = OptimizeDocumentRequest('Sample.docx', requestOptions);
await wordsApi.optimizeDocument(optimizeRequest);