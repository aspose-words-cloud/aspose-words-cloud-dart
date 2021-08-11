final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
final requestField = FieldUpdate();
requestField.fieldCode = '{ NUMPAGES }';
final updateRequest = UpdateFieldOnlineRequest(requestDocumentData, requestField, 0, nodePath: 'sections/0/paragraphs/0');
await wordsApi.updateFieldOnline(updateRequest);