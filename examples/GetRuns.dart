final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetRunsRequest('Sample.docx', 'sections/0/paragraphs/0');
await wordsApi.getRuns(request);