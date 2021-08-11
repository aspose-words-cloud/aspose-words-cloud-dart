final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestField = FieldUpdate();
requestField.fieldCode = '{ NUMPAGES }';
final updateRequest = UpdateFieldRequest('Sample.docx', 0, requestField, nodePath: 'sections/0/paragraphs/0');
await wordsApi.updateField(updateRequest);