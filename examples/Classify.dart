final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final classifyRequest = ClassifyRequest('Try text classification', bestClassesCount: '3');
await wordsApi.classify(classifyRequest);