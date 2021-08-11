final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestBookmarkData = BookmarkData();
requestBookmarkData.name = bookmarkName;
requestBookmarkData.text = 'This will be the text for Aspose';
final updateRequest = UpdateBookmarkRequest(remoteFileName, bookmarkName, requestBookmarkData, destFileName: remoteFileName);
await wordsApi.updateBookmark(updateRequest);