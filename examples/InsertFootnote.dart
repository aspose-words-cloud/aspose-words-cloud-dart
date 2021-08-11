final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFootnoteDto = FootnoteInsert();
requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
requestFootnoteDto.text = 'test endnote';
final insertRequest = InsertFootnoteRequest('Sample.docx', requestFootnoteDto);
await wordsApi.insertFootnote(insertRequest);