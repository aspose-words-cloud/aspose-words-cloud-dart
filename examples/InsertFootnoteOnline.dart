final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestFootnoteDto = FootnoteInsert();
requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
requestFootnoteDto.text = 'test endnote';
final insertRequest = InsertFootnoteOnlineRequest(requestDocumentData, requestFootnoteDto);
await wordsApi.insertFootnoteOnline(insertRequest);