/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="paragraph_tests.dart">
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

/// Example of how to work with paragraph.
class ParagraphTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String listFolder;
  String tabStopFolder;

  ParagraphTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Paragraphs';
    localFile = 'Common/test_multi_pages.docx';
    listFolder = 'DocumentElements/ParagraphListFormat';
    tabStopFolder = 'DocumentElements/Paragraphs';
  }

  /// Test for getting paragraph.
  Future<void> testGetDocumentParagraphByIndex() async
  {
    final remoteFileName = 'TestGetDocumentParagraphByIndex.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().getParagraph(request);
  }

  /// Test for getting paragraph without node path.
  Future<void> testGetDocumentParagraphByIndexWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphByIndexWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getParagraph(request);
  }

  /// Test for getting all paragraphs.
  Future<void> testGetDocumentParagraphs() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphs(request);
  }

  /// Test for getting all paragraphs without node path.
  Future<void> testGetDocumentParagraphsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphs(request);
  }

  /// Test for getting paragraph run.
  Future<void> testGetDocumentParagraphRun() async
  {
    final remoteFileName = 'TestGetDocumentParagraphRun.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getRun(request);
  }

  /// Test for getting paragraph run font.
  Future<void> testGetDocumentParagraphRunFont() async
  {
    final remoteFileName = 'TestGetDocumentParagraphRunFont.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunFontRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getRunFont(request);
  }

  /// Test for getting paragraph runs.
  Future<void> testGetParagraphRuns() async
  {
    final remoteFileName = 'TestGetParagraphRuns.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunsRequest(
      remoteFileName,
      'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().getRuns(request);
  }

  /// Test for updating paragraph run font.
  Future<void> testUpdateRunFont() async
  {
    final remoteFileName = 'TestUpdateRunFont.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFontDto = Font();
    requestFontDto.bold = true;

    final request = UpdateRunFontRequest(
      remoteFileName,
      requestFontDto,
      'paragraphs/0',
      0,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().updateRunFont(request);
  }

  /// Test for adding paragraph.
  Future<void> testInsertParagraph() async
  {
    final remoteFileName = 'TestInsertParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestParagraph = ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().insertParagraph(request);
  }

  /// Test for adding paragraph without node path.
  Future<void> testInsertParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestParagraph = ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      folder: remoteDataFolder
    );

    await context.getApi().insertParagraph(request);
  }

  /// Test for paragraph rendering.
  Future<void> testRenderParagraph() async
  {
    final remoteFileName = 'TestRenderParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().renderParagraph(request);
  }

  /// Test for paragraph rendering without node path.
  Future<void> testRenderParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestRenderParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().renderParagraph(request);
  }

  /// Test for getting paragraph format settings.
  Future<void> testGetParagraphFormat() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphFormat(request);
  }

  /// Test for getting paragraph format settings without node path.
  Future<void> testGetParagraphFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphFormat(request);
  }

  /// Test for updating  paragraph format settings.
  Future<void> testUpdateParagraphFormat() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDto = ParagraphFormatUpdate();
    requestDto.alignment = ParagraphFormatBase_AlignmentEnum.right;

    final request = UpdateParagraphFormatRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().updateParagraphFormat(request);
  }

  /// Test for deleting  a paragraph.
  Future<void> testDeleteParagraph() async
  {
    final remoteFileName = 'TestDeleteParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraph(request);
  }

  /// Test for deleting  a paragraph without node path.
  Future<void> testDeleteParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraph(request);
  }

  /// Test for getting paragraph list format.
  Future<void> testGetParagraphListFormat() async
  {
    final remoteFileName = 'TestParagraphGetListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphListFormat(request);
  }

  /// Test for getting paragraph list format without node path.
  Future<void> testGetParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestParagraphGetListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphListFormat(request);
  }

  /// Test for updating paragraph list format.
  Future<void> testUpdateParagraphListFormat() async
  {
    final remoteFileName = 'TestUpdateParagraphListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    var requestDto = ListFormatUpdate();
    requestDto.listId = 2;

    final request = UpdateParagraphListFormatRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().updateParagraphListFormat(request);
  }

  /// Test for updating paragraph list format without node path.
  Future<void> testUpdateParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateParagraphListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    var requestDto = ListFormatUpdate();
    requestDto.listId = 2;

    final request = UpdateParagraphListFormatRequest(
      remoteFileName,
      requestDto,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().updateParagraphListFormat(request);
  }

  /// Test for deleting paragraph list format.
  Future<void> testDeleteParagraphListFormat() async
  {
    final remoteFileName = 'TestDeleteParagraphListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for deleting paragraph list format without node path.
  Future<void> testDeleteParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for getting paragraph tab stops.
  Future<void> testGetParagraphTabStops() async
  {
    final remoteFileName = 'TestGetParagraphTabStops.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphTabStops(request);
  }

  /// Test for getting paragraph tab stops without node path.
  Future<void> testGetParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetParagraphTabStopsWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getParagraphTabStops(request);
  }

  /// Test for inserting paragraph tab stop.
  Future<void> testInsertParagraphTabStops() async
  {
    final remoteFileName = 'TestInsertOrUpdateParagraphTabStop.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 72;

    final request = InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().insertOrUpdateParagraphTabStop(request);
  }

  /// Test for inserting paragraph tab stop without node path.
  Future<void> testInsertParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 72;

    final request = InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().insertOrUpdateParagraphTabStop(request);
  }

  /// Test for deleting all paragraph tab stops.
  Future<void> testDeleteAllParagraphTabStops() async
  {
    final remoteFileName = 'TestDeleteAllParagraphTabStops.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteAllParagraphTabStops(request);
  }

  /// Test for deleting all paragraph tab stops without node path.
  Future<void> testDeleteAllParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteAllParagraphTabStopsWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteAllParagraphTabStops(request);
  }

  /// Test for deleting a tab stops.
  Future<void> testDeleteParagraphTabStop() async
  {
    final remoteFileName = 'TestDeleteParagraphTabStop.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphTabStopRequest(
      remoteFileName,
      72,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphTabStop(request);
  }

  /// Test for deleting a tab stops without node path.
  Future<void> testDeleteParagraphTabStopWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphTabStopWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphTabStopRequest(
      remoteFileName,
      72,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphTabStop(request);
  }
}
