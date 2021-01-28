final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final fileName  = 'test_doc.docx';

// Calls AcceptAllRevisions method for document in cloud.
final request = AcceptAllRevisionsRequest(fileName);
await wordsApi.acceptAllRevisions(request);