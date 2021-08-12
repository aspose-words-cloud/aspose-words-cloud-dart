final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final request = GetFormFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
await wordsApi.getFormFieldOnline(request);