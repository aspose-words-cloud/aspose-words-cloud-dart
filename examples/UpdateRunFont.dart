final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestFontDto = Font();
requestFontDto.bold = true;
final updateRequest = UpdateRunFontRequest(remoteFileName, 'paragraphs/0', 0, requestFontDto, destFileName: remoteFileName);
await wordsApi.updateRunFont(updateRequest);