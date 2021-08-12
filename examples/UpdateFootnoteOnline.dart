final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.text = 'new text is here';
final updateRequest = UpdateFootnoteOnlineRequest(requestDocumentData, requestFootnoteDto, 0);
await wordsApi.updateFootnoteOnline(updateRequest);