final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
final requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.text = 'new text is here';
final updateRequest = UpdateFootnoteOnlineRequest(requestDocumentData, requestFootnoteDto, 0, nodePath: '');
await wordsApi.updateFootnoteOnline(updateRequest);