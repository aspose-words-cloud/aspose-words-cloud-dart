final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetAvailableFontsRequest();
await wordsApi.getAvailableFonts(request);