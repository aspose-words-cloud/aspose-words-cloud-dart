final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestReplaceText = ReplaceTextParameters();
requestReplaceText.oldValue = 'Testing';
requestReplaceText.newValue = 'Aspose testing';
final replaceRequest = ReplaceTextRequest('Sample.docx', requestReplaceText);
await wordsApi.replaceText(replaceRequest);