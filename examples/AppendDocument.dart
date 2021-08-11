final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestDocumentListDocumentEntries0 = DocumentEntry();
requestDocumentListDocumentEntries0.href = remoteFileName;
requestDocumentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';
final requestDocumentListDocumentEntries = [
  requestDocumentListDocumentEntries0];
final requestDocumentList = DocumentEntryList();
requestDocumentList.documentEntries = requestDocumentListDocumentEntries;
final appendRequest = AppendDocumentRequest(remoteFileName, requestDocumentList, destFileName: remoteFileName);
await wordsApi.appendDocument(appendRequest);