final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final deleteRequest = DeleteCommentRequest(remoteFileName, 0, destFileName: remoteFileName);
await wordsApi.deleteComment(deleteRequest);