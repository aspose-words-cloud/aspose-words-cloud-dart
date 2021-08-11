final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetFootnotesRequest('Sample.docx');
await wordsApi.getFootnotes(request);