final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetFormFieldsOnlineRequest(requestDocument, nodePath: 'sections/0');
await wordsApi.getFormFieldsOnline(request);