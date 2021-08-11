final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestCustomXmlPart = CustomXmlPartUpdate();
requestCustomXmlPart.data = '<data>Hello world</data>';
final updateRequest = UpdateCustomXmlPartRequest('Sample.docx', 0, requestCustomXmlPart);
await wordsApi.updateCustomXmlPart(updateRequest);