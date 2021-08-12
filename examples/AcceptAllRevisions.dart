final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final acceptRequest = AcceptAllRevisionsRequest('Sample.docx');
await wordsApi.acceptAllRevisions(acceptRequest);