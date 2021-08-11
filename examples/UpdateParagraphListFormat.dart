final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestListFormatDto = ListFormatUpdate();
requestListFormatDto.listId = 2;
final updateRequest = UpdateParagraphListFormatRequest('Sample.docx', 0, requestListFormatDto);
await wordsApi.updateParagraphListFormat(updateRequest);