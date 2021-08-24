final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final bookmarkName = 'aspose';

final requestDocument = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final requestBookmarkData = BookmarkData();
requestBookmarkData.name = bookmarkName;
requestBookmarkData.text = 'This will be the text for Aspose';
final updateRequest = UpdateBookmarkOnlineRequest(requestDocument, bookmarkName, requestBookmarkData, destFileName: 'Sample.docx');
await wordsApi.updateBookmarkOnline(updateRequest);