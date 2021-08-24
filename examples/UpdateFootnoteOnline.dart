final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.text = 'new text is here';
final updateRequest = UpdateFootnoteOnlineRequest(requestDocument, requestFootnoteDto, 0);
await wordsApi.updateFootnoteOnline(updateRequest);