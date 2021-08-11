final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestField = FieldInsert();
requestField.fieldCode = '{ NUMPAGES }';
final insertRequest = InsertFieldRequest('Sample.docx', requestField);
await wordsApi.insertField(insertRequest);