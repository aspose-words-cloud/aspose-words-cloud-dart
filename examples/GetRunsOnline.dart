final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetRunsOnlineRequest(requestDocument, 'sections/0/paragraphs/0');
await wordsApi.getRunsOnline(request);