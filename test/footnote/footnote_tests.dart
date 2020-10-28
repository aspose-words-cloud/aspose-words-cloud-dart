/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote_tests.dart">
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

/// Example of how to work with footnotes.
class FootnoteTests
{
  final TestContext context;
  String remoteDataFolder;
  String footnoteFolder;

  FootnoteTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Footnotes';
    footnoteFolder = 'DocumentElements/Footnotes';
  }

  /// Test for adding footnote.
  Future<void> testInsertFootnote() async
  {
    final String remoteFileName = 'TestInsertFootnote.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    var requestFootnoteDto = new FootnoteInsert();
    requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
    requestFootnoteDto.text = 'test endnote';

    final request = new InsertFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertFootnote(request);
  }

  /// Test for adding footnote without node path.
  Future<void> testInsertFootnoteWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertFootnoteWithoutNodePath.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    var requestFootnoteDto = new FootnoteInsert();
    requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
    requestFootnoteDto.text = 'test endnote';

    final request = new InsertFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertFootnote(request);
  }

  /// Test for deleting footnote.
  Future<void> testDeleteFootnote() async
  {
    final String remoteFileName = 'TestDeleteFootnote.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFootnoteRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFootnote(request);
  }

  /// Test for deleting footnote without node path.
  Future<void> testDeleteFootnoteWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteFootnoteWithoutNodePath.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFootnoteRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFootnote(request);
  }

  /// Test for getting footnotes.
  Future<void> testGetFootnotes() async
  {
    final String remoteFileName = 'TestGetFootnotes.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFootnotesRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFootnotes(request);
  }

  /// Test for getting footnotes without node path.
  Future<void> testGetFootnotesWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetFootnotesWithoutNodePath.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFootnotesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFootnotes(request);
  }

  /// Test for getting footnote.
  Future<void> testGetFootnote() async
  {
    final String remoteFileName = 'TestGetFootnote.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFootnoteRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFootnote(request);
  }

  /// Test for getting footnote without node path.
  Future<void> testGetFootnoteWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetFootnoteWithoutNodePath.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFootnoteRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFootnote(request);
  }

  /// Test for updating footnote.
  Future<void> testUpdateFootnote() async
  {
    final String remoteFileName = 'TestUpdateFootnote.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    var requestFootnoteDto = new FootnoteUpdate();
    requestFootnoteDto.text = 'new text is here';

    final request = new UpdateFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateFootnote(request);
  }

  /// Test for updating footnote without node path.
  Future<void> testUpdateFootnoteWithoutNodePath() async
  {
    final String remoteFileName = 'TestUpdateFootnoteWithoutNodePath.docx';
    await this.context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    var requestFootnoteDto = new FootnoteUpdate();
    requestFootnoteDto.text = 'new text is here';

    final request = new UpdateFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateFootnote(request);
  }
}
