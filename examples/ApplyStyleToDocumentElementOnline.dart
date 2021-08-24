final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestStyleApply = StyleApply();
requestStyleApply.styleName = 'Heading 1';
final applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(requestDocument, 'paragraphs/1/paragraphFormat', requestStyleApply);
await wordsApi.applyStyleToDocumentElementOnline(applyStyleRequest);