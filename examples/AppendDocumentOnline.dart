final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestDocumentListDocumentEntries0 = DocumentEntry();
requestDocumentListDocumentEntries0.href = 'Sample.docx';
requestDocumentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';
final requestDocumentListDocumentEntries = [
  requestDocumentListDocumentEntries0];
final requestDocumentList = DocumentEntryList();
requestDocumentList.documentEntries = requestDocumentListDocumentEntries;
final appendRequest = AppendDocumentOnlineRequest(requestDocument, requestDocumentList);
await wordsApi.appendDocumentOnline(appendRequest);