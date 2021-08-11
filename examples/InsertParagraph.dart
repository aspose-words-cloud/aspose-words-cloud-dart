final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestParagraph = ParagraphInsert();
requestParagraph.text = 'This is a new paragraph for your document';
final insertRequest = InsertParagraphRequest('Sample.docx', requestParagraph);
await wordsApi.insertParagraph(insertRequest);