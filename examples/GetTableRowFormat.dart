final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetTableRowFormatRequest('Sample.docx', 'sections/0/tables/2', 0);
await wordsApi.getTableRowFormat(request);