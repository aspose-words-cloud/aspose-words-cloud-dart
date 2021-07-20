final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';
final bookmarkName = 'aspose';

final testBookmarkData = BookmarkData();
testBookmarkData.name = bookmarkName;
testBookmarkData.text = 'New Bookmark Text';
final updateBookmark = UpdateBookmarkRequest(remoteFileName, bookmarkName, testBookmarkData);
await wordsApi.updateBookmark(updateBookmark);