final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetCustomXmlPartsRequest('Sample.docx');
await wordsApi.getCustomXmlParts(request);