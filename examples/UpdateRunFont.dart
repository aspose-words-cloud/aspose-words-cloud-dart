final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFontDto = Font();
requestFontDto.bold = true;
final updateRequest = UpdateRunFontRequest('Sample.docx', 'paragraphs/0', 0, requestFontDto);
await wordsApi.updateRunFont(updateRequest);