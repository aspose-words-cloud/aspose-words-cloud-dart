final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final bookmarkName = 'aspose';

final requestBookmarkData = BookmarkData();
requestBookmarkData.name = bookmarkName;
requestBookmarkData.text = 'This will be the text for Aspose';
final updateRequest = UpdateBookmarkRequest('Sample.docx', bookmarkName, requestBookmarkData);
await wordsApi.updateBookmark(updateRequest);