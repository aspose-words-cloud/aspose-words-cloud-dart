final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final rejectRequest = RejectAllRevisionsRequest('Sample.docx');
await wordsApi.rejectAllRevisions(rejectRequest);