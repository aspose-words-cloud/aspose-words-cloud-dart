final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteCustomXmlPartRequest('Sample.docx', 0);
await wordsApi.deleteCustomXmlPart(deleteRequest);