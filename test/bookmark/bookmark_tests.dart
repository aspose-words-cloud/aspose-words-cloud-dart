/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="bookmark_tests.dart">
 *   Copyright (c) 2020 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import '../test_context.dart';
import 'package:test/test.dart';

/// Example of how to get all bookmarks from document.
class BookmarkTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  BookmarkTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Bookmarks';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting bookmarks from document.
  Future<void> testGetBookmarks() async
  {
    final String remoteFileName = 'TestGetDocumentBookmarks.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetBookmarksRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getBookmarks(request);
    expect(result.bookmarks, isNotNull);
    expect(result.bookmarks.bookmarkList.length, 3);
    expect(result.bookmarks.bookmarkList[1].name, 'aspose');
  }

  /// Test for getting bookmark by specified name.
  Future<void> testGetBookmarkByName() async
  {
    final String remoteFileName = 'TestGetDocumentBookmarkByName.docx';
    final String bookmarkName = 'aspose';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetBookmarkByNameRequest(
      remoteFileName,
      bookmarkName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getBookmarkByName(request);
    expect(result.bookmark, isNotNull);
    expect(result.bookmark.name, bookmarkName);
  }

  /// Test for updating existed bookmark.
  Future<void> testUpdateBookmark() async
  {
    final String remoteFileName = 'TestUpdateDocumentBookmark.docx';
    final String bookmarkName = 'aspose';
    final String bookmarkText = 'This will be the text for Aspose';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestBookmarkData = new BookmarkData();
    requestBookmarkData.name = bookmarkName;
    requestBookmarkData.text = bookmarkText;

    final request = new UpdateBookmarkRequest(
      remoteFileName,
      requestBookmarkData,
      bookmarkName,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().updateBookmark(request);
    expect(result.bookmark, isNotNull);
    expect(result.bookmark.name, bookmarkName);
    expect(result.bookmark.text, bookmarkText);
  }
}
