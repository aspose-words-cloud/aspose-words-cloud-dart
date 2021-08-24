final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestParagraphFormatDto = ParagraphFormatUpdate();
requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;
final updateRequest = UpdateParagraphFormatOnlineRequest(requestDocument, requestParagraphFormatDto, 0);
await wordsApi.updateParagraphFormatOnline(updateRequest);