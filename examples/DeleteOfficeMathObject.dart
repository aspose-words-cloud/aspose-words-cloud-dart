final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final deleteRequest = DeleteOfficeMathObjectRequest('Sample.docx', 0);
await wordsApi.deleteOfficeMathObject(deleteRequest);