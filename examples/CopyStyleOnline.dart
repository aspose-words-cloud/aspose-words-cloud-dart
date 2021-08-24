final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestStyleCopy = StyleCopy();
requestStyleCopy.styleName = 'Heading 1';
final copyRequest = CopyStyleOnlineRequest(requestDocument, requestStyleCopy);
await wordsApi.copyStyleOnline(copyRequest);