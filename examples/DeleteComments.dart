final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final deleteRequest = DeleteCommentsRequest(remoteFileName, destFileName: remoteFileName);
await wordsApi.deleteComments(deleteRequest);