/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="comment_tests.dart">
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

/// Example of how to get comments from document.
class CommentTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  CommentTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/Comments';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting comment by specified comment's index.
  Future<void> testGetComment() async
  {
    final remoteFileName = 'TestGetComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getComment(request);
  }

  /// Test for getting all comments from document.
  Future<void> testGetComments() async
  {
    final remoteFileName = 'TestGetComments.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCommentsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getComments(request);
  }

  /// Test for adding comment.
  Future<void> testInsertComment() async
  {
    final remoteFileName = 'TestInsertComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCommentRangeStartNode = NodeLink();
    requestCommentRangeStartNode.nodeId = '0.3.0.3';

    var requestCommentRangeStart = DocumentPosition();
    requestCommentRangeStart.node = requestCommentRangeStartNode;
    requestCommentRangeStart.offset = 0;

    var requestCommentRangeEndNode = NodeLink();
    requestCommentRangeEndNode.nodeId = '0.3.0.3';

    var requestCommentRangeEnd = DocumentPosition();
    requestCommentRangeEnd.node = requestCommentRangeEndNode;
    requestCommentRangeEnd.offset = 0;

    var requestComment = CommentInsert();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = InsertCommentRequest(
      remoteFileName,
      requestComment,
      folder: remoteDataFolder
    );

    await context.getApi().insertComment(request);
  }

  /// Test for updating comment.
  Future<void> testUpdateComment() async
  {
    final remoteFileName = 'TestUpdateComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCommentRangeStartNode = NodeLink();
    requestCommentRangeStartNode.nodeId = '0.3.0';

    var requestCommentRangeStart = DocumentPosition();
    requestCommentRangeStart.node = requestCommentRangeStartNode;
    requestCommentRangeStart.offset = 0;

    var requestCommentRangeEndNode = NodeLink();
    requestCommentRangeEndNode.nodeId = '0.3.0';

    var requestCommentRangeEnd = DocumentPosition();
    requestCommentRangeEnd.node = requestCommentRangeEndNode;
    requestCommentRangeEnd.offset = 0;

    var requestComment = CommentUpdate();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = UpdateCommentRequest(
      remoteFileName,
      0,
      requestComment,
      folder: remoteDataFolder
    );

    await context.getApi().updateComment(request);
  }

  /// A test for DeleteComment.
  Future<void> testDeleteComment() async
  {
    final remoteFileName = 'TestDeleteComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteComment(request);
  }
}
