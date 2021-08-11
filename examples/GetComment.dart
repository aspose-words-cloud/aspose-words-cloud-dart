final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetCommentRequest('Sample.docx', 0);
await wordsApi.getComment(request);