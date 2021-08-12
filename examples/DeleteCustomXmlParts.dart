final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteCustomXmlPartsRequest('Sample.docx');
await wordsApi.deleteCustomXmlParts(deleteRequest);