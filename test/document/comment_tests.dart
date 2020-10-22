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
import 'package:test/test.dart';

/// Example of how to get comments from document.
class CommentTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  CommentTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/Comments';
    localFile = 'Common/test_multi_pages.docx';
  }

  void runAll() async {
    await test('Comment.GetComment', () async => await this.testGetComment());
    await test('Comment.GetComments', () async => await this.testGetComments());
    await test('Comment.InsertComment', () async => await this.testInsertComment());
    await test('Comment.UpdateComment', () async => await this.testUpdateComment());
    await test('Comment.DeleteComment', () async => await this.testDeleteComment());
  }

  /// Test for getting comment by specified comment's index.
  void testGetComment() async
  {
    final String remoteFileName = 'TestGetComment.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getComment(request);
  }

  /// Test for getting all comments from document.
  void testGetComments() async
  {
    final String remoteFileName = 'TestGetComments.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetCommentsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getComments(request);
  }

  /// Test for adding comment.
  void testInsertComment() async
  {
    final String remoteFileName = 'TestInsertComment.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCommentRangeStartNode = new NodeLink();
    requestCommentRangeStartNode.nodeId = '0.3.0.3';

    var requestCommentRangeStart = new DocumentPosition();
    requestCommentRangeStart.node = requestCommentRangeStartNode;
    requestCommentRangeStart.offset = 0;

    var requestCommentRangeEndNode = new NodeLink();
    requestCommentRangeEndNode.nodeId = '0.3.0.3';

    var requestCommentRangeEnd = new DocumentPosition();
    requestCommentRangeEnd.node = requestCommentRangeEndNode;
    requestCommentRangeEnd.offset = 0;

    var requestComment = new CommentInsert();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = new InsertCommentRequest(
      remoteFileName,
      requestComment,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertComment(request);
  }

  /// Test for updating comment.
  void testUpdateComment() async
  {
    final String remoteFileName = 'TestUpdateComment.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCommentRangeStartNode = new NodeLink();
    requestCommentRangeStartNode.nodeId = '0.3.0';

    var requestCommentRangeStart = new DocumentPosition();
    requestCommentRangeStart.node = requestCommentRangeStartNode;
    requestCommentRangeStart.offset = 0;

    var requestCommentRangeEndNode = new NodeLink();
    requestCommentRangeEndNode.nodeId = '0.3.0';

    var requestCommentRangeEnd = new DocumentPosition();
    requestCommentRangeEnd.node = requestCommentRangeEndNode;
    requestCommentRangeEnd.offset = 0;

    var requestComment = new CommentUpdate();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = new UpdateCommentRequest(
      remoteFileName,
      0,
      requestComment,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateComment(request);
  }

  /// A test for DeleteComment.
  void testDeleteComment() async
  {
    final String remoteFileName = 'TestDeleteComment.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().deleteComment(request);
  }
}
