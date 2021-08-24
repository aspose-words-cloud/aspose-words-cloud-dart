final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestField = FieldInsert();
requestField.fieldCode = '{ NUMPAGES }';
final insertRequest = InsertFieldOnlineRequest(requestDocument, requestField, nodePath: 'sections/0/paragraphs/0');
await wordsApi.insertFieldOnline(insertRequest);