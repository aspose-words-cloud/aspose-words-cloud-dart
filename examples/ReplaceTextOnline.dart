final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestReplaceText = ReplaceTextParameters();
requestReplaceText.oldValue = 'aspose';
requestReplaceText.newValue = 'aspose new';
final replaceRequest = ReplaceTextOnlineRequest(requestDocumentData, requestReplaceText);
await wordsApi.replaceTextOnline(replaceRequest);