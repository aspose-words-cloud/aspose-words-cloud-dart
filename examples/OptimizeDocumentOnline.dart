final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestOptions = OptimizationOptions();
requestOptions.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002;
final optimizeRequest = OptimizeDocumentOnlineRequest(requestDocument, requestOptions);
await wordsApi.optimizeDocumentOnline(optimizeRequest);