final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFootnoteDto = FootnoteUpdate();
requestFootnoteDto.text = 'new text is here';
final updateRequest = UpdateFootnoteRequest('Sample.docx', 0, requestFootnoteDto);
await wordsApi.updateFootnote(updateRequest);