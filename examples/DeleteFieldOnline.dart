final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0/paragraphs/0');
await wordsApi.deleteFieldOnline(deleteRequest);