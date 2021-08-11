final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestCustomXmlPart = CustomXmlPartInsert();
requestCustomXmlPart.id = 'hello';
requestCustomXmlPart.data = '<data>Hello world</data>';
final insertRequest = InsertCustomXmlPartRequest('Sample.docx', requestCustomXmlPart);
await wordsApi.insertCustomXmlPart(insertRequest);