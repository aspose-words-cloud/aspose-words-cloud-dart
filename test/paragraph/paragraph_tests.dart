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
import 'package:test/test.dart';

/// Example of how to work with paragraph.
class ParagraphTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String listFolder;
  String tabStopFolder;

  ParagraphTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Paragraphs';
    localFile = 'Common/test_multi_pages.docx';
    listFolder = 'DocumentElements/ParagraphListFormat';
    tabStopFolder = 'DocumentElements/Paragraphs';
  }

  void runAll() async {
    await test('Paragraph.GetDocumentParagraphByIndex', () async => await this.testGetDocumentParagraphByIndex());
    await test('Paragraph.GetDocumentParagraphByIndexWithoutNodePath', () async => await this.testGetDocumentParagraphByIndexWithoutNodePath());
    await test('Paragraph.GetDocumentParagraphs', () async => await this.testGetDocumentParagraphs());
    await test('Paragraph.GetDocumentParagraphsWithoutNodePath', () async => await this.testGetDocumentParagraphsWithoutNodePath());
    await test('Paragraph.GetDocumentParagraphRun', () async => await this.testGetDocumentParagraphRun());
    await test('Paragraph.GetDocumentParagraphRunFont', () async => await this.testGetDocumentParagraphRunFont());
    await test('Paragraph.GetParagraphRuns', () async => await this.testGetParagraphRuns());
    await test('Paragraph.UpdateRunFont', () async => await this.testUpdateRunFont());
    await test('Paragraph.InsertParagraph', () async => await this.testInsertParagraph());
    await test('Paragraph.InsertParagraphWithoutNodePath', () async => await this.testInsertParagraphWithoutNodePath());
    await test('Paragraph.RenderParagraph', () async => await this.testRenderParagraph());
    await test('Paragraph.RenderParagraphWithoutNodePath', () async => await this.testRenderParagraphWithoutNodePath());
    await test('Paragraph.GetParagraphFormat', () async => await this.testGetParagraphFormat());
    await test('Paragraph.GetParagraphFormatWithoutNodePath', () async => await this.testGetParagraphFormatWithoutNodePath());
    await test('Paragraph.UpdateParagraphFormat', () async => await this.testUpdateParagraphFormat());
    await test('Paragraph.DeleteParagraph', () async => await this.testDeleteParagraph());
    await test('Paragraph.DeleteParagraphWithoutNodePath', () async => await this.testDeleteParagraphWithoutNodePath());
    await test('Paragraph.GetParagraphListFormat', () async => await this.testGetParagraphListFormat());
    await test('Paragraph.GetParagraphListFormatWithoutNodePath', () async => await this.testGetParagraphListFormatWithoutNodePath());
    await test('Paragraph.UpdateParagraphListFormat', () async => await this.testUpdateParagraphListFormat());
    await test('Paragraph.UpdateParagraphListFormatWithoutNodePath', () async => await this.testUpdateParagraphListFormatWithoutNodePath());
    await test('Paragraph.DeleteParagraphListFormat', () async => await this.testDeleteParagraphListFormat());
    await test('Paragraph.DeleteParagraphListFormatWithoutNodePath', () async => await this.testDeleteParagraphListFormatWithoutNodePath());
    await test('Paragraph.GetParagraphTabStops', () async => await this.testGetParagraphTabStops());
    await test('Paragraph.GetParagraphTabStopsWithoutNodePath', () async => await this.testGetParagraphTabStopsWithoutNodePath());
    await test('Paragraph.InsertParagraphTabStops', () async => await this.testInsertParagraphTabStops());
    await test('Paragraph.InsertParagraphTabStopsWithoutNodePath', () async => await this.testInsertParagraphTabStopsWithoutNodePath());
    await test('Paragraph.DeleteAllParagraphTabStops', () async => await this.testDeleteAllParagraphTabStops());
    await test('Paragraph.DeleteAllParagraphTabStopsWithoutNodePath', () async => await this.testDeleteAllParagraphTabStopsWithoutNodePath());
    await test('Paragraph.DeleteParagraphTabStop', () async => await this.testDeleteParagraphTabStop());
    await test('Paragraph.DeleteParagraphTabStopWithoutNodePath', () async => await this.testDeleteParagraphTabStopWithoutNodePath());
  }

  /// Test for getting paragraph.
  void testGetDocumentParagraphByIndex() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphByIndex.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraph(request);
  }

  /// Test for getting paragraph without node path.
  void testGetDocumentParagraphByIndexWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphByIndexWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraph(request);
  }

  /// Test for getting all paragraphs.
  void testGetDocumentParagraphs() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphs.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphs(request);
  }

  /// Test for getting all paragraphs without node path.
  void testGetDocumentParagraphsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphs(request);
  }

  /// Test for getting paragraph run.
  void testGetDocumentParagraphRun() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphRun.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetRunRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getRun(request);
  }

  /// Test for getting paragraph run font.
  void testGetDocumentParagraphRunFont() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphRunFont.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetRunFontRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getRunFont(request);
  }

  /// Test for getting paragraph runs.
  void testGetParagraphRuns() async
  {
    final String remoteFileName = 'TestGetParagraphRuns.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetRunsRequest(
      remoteFileName,
      'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getRuns(request);
  }

  /// Test for updating paragraph run font.
  void testUpdateRunFont() async
  {
    final String remoteFileName = 'TestUpdateRunFont.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFontDto = new Font();
    requestFontDto.bold = true;

    final request = new UpdateRunFontRequest(
      remoteFileName,
      requestFontDto,
      'paragraphs/0',
      0,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().updateRunFont(request);
  }

  /// Test for adding paragraph.
  void testInsertParagraph() async
  {
    final String remoteFileName = 'TestInsertParagraph.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestParagraph = new ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = new InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertParagraph(request);
  }

  /// Test for adding paragraph without node path.
  void testInsertParagraphWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertParagraphWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestParagraph = new ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = new InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertParagraph(request);
  }

  /// Test for paragraph rendering.
  void testRenderParagraph() async
  {
    final String remoteFileName = 'TestRenderParagraph.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderParagraph(request);
  }

  /// Test for paragraph rendering without node path.
  void testRenderParagraphWithoutNodePath() async
  {
    final String remoteFileName = 'TestRenderParagraphWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderParagraph(request);
  }

  /// Test for getting paragraph format settings.
  void testGetParagraphFormat() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphs.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphFormat(request);
  }

  /// Test for getting paragraph format settings without node path.
  void testGetParagraphFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphFormat(request);
  }

  /// Test for updating  paragraph format settings.
  void testUpdateParagraphFormat() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphs.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDto = new ParagraphFormatUpdate();
    requestDto.alignment = ParagraphFormatBase_AlignmentEnum.right;

    final request = new UpdateParagraphFormatRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateParagraphFormat(request);
  }

  /// Test for deleting  a paragraph.
  void testDeleteParagraph() async
  {
    final String remoteFileName = 'TestDeleteParagraph.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteParagraph(request);
  }

  /// Test for deleting  a paragraph without node path.
  void testDeleteParagraphWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteParagraphWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteParagraph(request);
  }

  /// Test for getting paragraph list format.
  void testGetParagraphListFormat() async
  {
    final String remoteFileName = 'TestParagraphGetListFormat.docx';
    await this.context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphListFormat(request);
  }

  /// Test for getting paragraph list format without node path.
  void testGetParagraphListFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestParagraphGetListFormatWithoutNodePath.docx';
    await this.context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphListFormat(request);
  }

  /// Test for updating paragraph list format.
  void testUpdateParagraphListFormat() async
  {
    final String remoteFileName = 'TestUpdateParagraphListFormat.docx';
    await this.context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new ListFormatUpdate();
    requestDto.listId = 2;

    final request = new UpdateParagraphListFormatRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateParagraphListFormat(request);
  }

  /// Test for updating paragraph list format without node path.
  void testUpdateParagraphListFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestUpdateParagraphListFormatWithoutNodePath.docx';
    await this.context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new ListFormatUpdate();
    requestDto.listId = 2;

    final request = new UpdateParagraphListFormatRequest(
      remoteFileName,
      requestDto,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateParagraphListFormat(request);
  }

  /// Test for deleting paragraph list format.
  void testDeleteParagraphListFormat() async
  {
    final String remoteFileName = 'TestDeleteParagraphListFormat.docx';
    await this.context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for deleting paragraph list format without node path.
  void testDeleteParagraphListFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteParagraphListFormatWithoutNodePath.docx';
    await this.context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for getting paragraph tab stops.
  void testGetParagraphTabStops() async
  {
    final String remoteFileName = 'TestGetParagraphTabStops.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphTabStops(request);
  }

  /// Test for getting paragraph tab stops without node path.
  void testGetParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetParagraphTabStopsWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphTabStops(request);
  }

  /// Test for inserting paragraph tab stop.
  void testInsertParagraphTabStops() async
  {
    final String remoteFileName = 'TestInsertOrUpdateParagraphTabStop.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 72;

    final request = new InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertOrUpdateParagraphTabStop(request);
  }

  /// Test for inserting paragraph tab stop without node path.
  void testInsertParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 72;

    final request = new InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertOrUpdateParagraphTabStop(request);
  }

  /// Test for deleting all paragraph tab stops.
  void testDeleteAllParagraphTabStops() async
  {
    final String remoteFileName = 'TestDeleteAllParagraphTabStops.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteAllParagraphTabStops(request);
  }

  /// Test for deleting all paragraph tab stops without node path.
  void testDeleteAllParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteAllParagraphTabStopsWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteAllParagraphTabStops(request);
  }

  /// Test for deleting a tab stops.
  void testDeleteParagraphTabStop() async
  {
    final String remoteFileName = 'TestDeleteParagraphTabStop.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphTabStopRequest(
      remoteFileName,
      72,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteParagraphTabStop(request);
  }

  /// Test for deleting a tab stops without node path.
  void testDeleteParagraphTabStopWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteParagraphTabStopWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteParagraphTabStopRequest(
      remoteFileName,
      72,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteParagraphTabStop(request);
  }
}
