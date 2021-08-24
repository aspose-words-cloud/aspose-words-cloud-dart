final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestFontDto = Font();
requestFontDto.bold = true;
final updateRequest = UpdateRunFontOnlineRequest(requestDocument, 'paragraphs/0', requestFontDto, 0);
await wordsApi.updateRunFontOnline(updateRequest);