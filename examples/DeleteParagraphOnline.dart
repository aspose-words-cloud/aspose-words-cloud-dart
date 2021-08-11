final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteParagraphOnlineRequest(requestDocumentData, 0, nodePath: '');
await wordsApi.deleteParagraphOnline(deleteRequest);