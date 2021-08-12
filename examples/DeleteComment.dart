final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteCommentRequest('Sample.docx', 0);
await wordsApi.deleteComment(deleteRequest);