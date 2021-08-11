final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestStyleCopy = StyleCopy();
requestStyleCopy.styleName = 'Heading 1';
final copyRequest = CopyStyleRequest('Sample.docx', requestStyleCopy);
await wordsApi.copyStyle(copyRequest);