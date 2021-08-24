final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestCustomXmlPart = CustomXmlPartUpdate();
requestCustomXmlPart.data = '<data>Hello world</data>';
final updateRequest = UpdateCustomXmlPartOnlineRequest(requestDocument, 0, requestCustomXmlPart);
await wordsApi.updateCustomXmlPartOnline(updateRequest);