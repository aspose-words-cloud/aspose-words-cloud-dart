final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetParagraphTabStopsRequest('Sample.docx', 0);
await wordsApi.getParagraphTabStops(request);