final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final request = GetStyleFromDocumentElementRequest('Sample.docx', 'paragraphs/1/paragraphFormat');
await wordsApi.getStyleFromDocumentElement(request);