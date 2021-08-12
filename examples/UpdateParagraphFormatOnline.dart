final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestParagraphFormatDto = ParagraphFormatUpdate();
requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;
final updateRequest = UpdateParagraphFormatOnlineRequest(requestDocumentData, requestParagraphFormatDto, 0);
await wordsApi.updateParagraphFormatOnline(updateRequest);