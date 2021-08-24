final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestParagraph = ParagraphInsert();
requestParagraph.text = 'This is a new paragraph for your document';
final insertRequest = InsertParagraphOnlineRequest(requestDocument, requestParagraph, nodePath: 'sections/0');
await wordsApi.insertParagraphOnline(insertRequest);