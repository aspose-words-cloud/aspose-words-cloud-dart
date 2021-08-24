final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteFieldOnlineRequest(requestDocument, 0, nodePath: 'sections/0/paragraphs/0');
await wordsApi.deleteFieldOnline(deleteRequest);