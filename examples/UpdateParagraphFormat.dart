final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestParagraphFormatDto = ParagraphFormatUpdate();
requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;
final updateRequest = UpdateParagraphFormatRequest('Sample.docx', 0, requestParagraphFormatDto, nodePath: '');
await wordsApi.updateParagraphFormat(updateRequest);