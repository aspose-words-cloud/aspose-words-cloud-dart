final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestReplaceText = ReplaceTextParameters();
requestReplaceText.oldValue = 'Testing';
requestReplaceText.newValue = 'Aspose testing';
final replaceRequest = ReplaceTextRequest(remoteFileName, requestReplaceText, destFileName: remoteFileName);
await wordsApi.replaceText(replaceRequest);