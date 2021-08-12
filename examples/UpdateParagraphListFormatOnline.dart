final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestListFormatDto = ListFormatUpdate();
requestListFormatDto.listId = 2;
final updateRequest = UpdateParagraphListFormatOnlineRequest(requestDocumentData, requestListFormatDto, 0);
await wordsApi.updateParagraphListFormatOnline(updateRequest);