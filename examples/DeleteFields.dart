final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteFieldsRequest('Sample.docx', nodePath: '');
await wordsApi.deleteFields(deleteRequest);