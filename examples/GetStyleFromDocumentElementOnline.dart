final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetStyleFromDocumentElementOnlineRequest(requestDocument, 'paragraphs/1/paragraphFormat');
await wordsApi.getStyleFromDocumentElementOnline(request);