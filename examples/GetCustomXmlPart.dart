final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetCustomXmlPartRequest('Sample.docx', 0);
await wordsApi.getCustomXmlPart(request);