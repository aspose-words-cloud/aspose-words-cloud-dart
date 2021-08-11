final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetOfficeMathObjectRequest('Sample.docx', 0);
await wordsApi.getOfficeMathObject(request);