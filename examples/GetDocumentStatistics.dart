final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetDocumentStatisticsRequest('Sample.docx');
await wordsApi.getDocumentStatistics(request);