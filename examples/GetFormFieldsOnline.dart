final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
final request = GetFormFieldsOnlineRequest(requestDocumentData, nodePath: 'sections/0');
await wordsApi.getFormFieldsOnline(request);