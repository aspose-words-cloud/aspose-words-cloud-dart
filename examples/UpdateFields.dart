final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final updateRequest = UpdateFieldsRequest('Sample.docx');
await wordsApi.updateFields(updateRequest);