final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetOfficeMathObjectsRequest('Sample.docx');
await wordsApi.getOfficeMathObjects(request);