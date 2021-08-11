final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteFormFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
await wordsApi.deleteFormFieldOnline(deleteRequest);