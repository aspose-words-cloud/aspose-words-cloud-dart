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

  /// Test for getting paragraph.
  Future<void> testGetDocumentParagraphByIndex() async
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
    expect(result.paragraph, isNotNull);
    expect('0.0.0'.startsWith(result.paragraph.nodeId), isTrue);
  }

  /// Test for getting paragraph without node path.
  Future<void> testGetDocumentParagraphByIndexWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphByIndexWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraph(request);
    expect(result.paragraph, isNotNull);
    expect('0.0.0'.startsWith(result.paragraph.nodeId), isTrue);
  }

  /// Test for getting all paragraphs.
  Future<void> testGetDocumentParagraphs() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphs.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphs(request);
    expect(result.paragraphs, isNotNull);
    expect(result.paragraphs.paragraphLinkList, isNotNull);
    expect(result.paragraphs.paragraphLinkList.length, 15);
    expect('Page 1 of 3'.startsWith(result.paragraphs.paragraphLinkList[0].text), isTrue);
  }

  /// Test for getting all paragraphs without node path.
  Future<void> testGetDocumentParagraphsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphs(request);
    expect(result.paragraphs, isNotNull);
    expect(result.paragraphs.paragraphLinkList, isNotNull);
    expect(result.paragraphs.paragraphLinkList.length, 15);
    expect('Page 1 of 3'.startsWith(result.paragraphs.paragraphLinkList[0].text), isTrue);
  }

  /// Test for getting paragraph run.
  Future<void> testGetDocumentParagraphRun() async
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
    expect(result.run, isNotNull);
    expect('Page '.startsWith(result.run.text), isTrue);
  }

  /// Test for getting paragraph run font.
  Future<void> testGetDocumentParagraphRunFont() async
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
    expect(result.font, isNotNull);
    expect('Times New Roman'.startsWith(result.font.name), isTrue);
  }

  /// Test for getting paragraph runs.
  Future<void> testGetParagraphRuns() async
  {
    final String remoteFileName = 'TestGetParagraphRuns.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetRunsRequest(
      remoteFileName,
      'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getRuns(request);
    expect(result.runs, isNotNull);
    expect(result.runs.list, isNotNull);
    expect(result.runs.list.length, 6);
    expect('Page '.startsWith(result.runs.list[0].text), isTrue);
  }

  /// Test for updating paragraph run font.
  Future<void> testUpdateRunFont() async
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
    expect(result.font, isNotNull);
    expect(result.font.bold, isTrue);
  }

  /// Test for adding paragraph.
  Future<void> testInsertParagraph() async
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
    expect(result.paragraph, isNotNull);
    expect('0.3.8'.startsWith(result.paragraph.nodeId), isTrue);
  }

  /// Test for adding paragraph without node path.
  Future<void> testInsertParagraphWithoutNodePath() async
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
    expect(result.paragraph, isNotNull);
    expect('0.3.8'.startsWith(result.paragraph.nodeId), isTrue);
  }

  /// Test for paragraph rendering.
  Future<void> testRenderParagraph() async
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
  Future<void> testRenderParagraphWithoutNodePath() async
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
  Future<void> testGetParagraphFormat() async
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
    expect(result.paragraphFormat, isNotNull);
    expect('Normal'.startsWith(result.paragraphFormat.styleName), isTrue);
  }

  /// Test for getting paragraph format settings without node path.
  Future<void> testGetParagraphFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphFormat(request);
    expect(result.paragraphFormat, isNotNull);
    expect('Normal'.startsWith(result.paragraphFormat.styleName), isTrue);
  }

  /// Test for updating  paragraph format settings.
  Future<void> testUpdateParagraphFormat() async
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
    expect(result.paragraphFormat, isNotNull);

  }

  /// Test for deleting  a paragraph.
  Future<void> testDeleteParagraph() async
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
  Future<void> testDeleteParagraphWithoutNodePath() async
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
  Future<void> testGetParagraphListFormat() async
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
    expect(result.listFormat, isNotNull);
    expect(result.listFormat.listId, 1);
  }

  /// Test for getting paragraph list format without node path.
  Future<void> testGetParagraphListFormatWithoutNodePath() async
  {
    final String remoteFileName = 'TestParagraphGetListFormatWithoutNodePath.docx';
    await this.context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphListFormat(request);
    expect(result.listFormat, isNotNull);
    expect(result.listFormat.listId, 1);
  }

  /// Test for updating paragraph list format.
  Future<void> testUpdateParagraphListFormat() async
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
    expect(result.listFormat, isNotNull);
    expect(result.listFormat.listId, 2);
  }

  /// Test for updating paragraph list format without node path.
  Future<void> testUpdateParagraphListFormatWithoutNodePath() async
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
    expect(result.listFormat, isNotNull);
    expect(result.listFormat.listId, 2);
  }

  /// Test for deleting paragraph list format.
  Future<void> testDeleteParagraphListFormat() async
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
  Future<void> testDeleteParagraphListFormatWithoutNodePath() async
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
  Future<void> testGetParagraphTabStops() async
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
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 2);
    expect(result.tabStops[0].position, 72);
  }

  /// Test for getting paragraph tab stops without node path.
  Future<void> testGetParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetParagraphTabStopsWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 2);
    expect(result.tabStops[0].position, 72);
  }

  /// Test for inserting paragraph tab stop.
  Future<void> testInsertParagraphTabStops() async
  {
    final String remoteFileName = 'TestInsertOrUpdateParagraphTabStop.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 100;

    final request = new InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertOrUpdateParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 3);
    expect(result.tabStops[1].position, 100);


  }

  /// Test for inserting paragraph tab stop without node path.
  Future<void> testInsertParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    var requestDto = new TabStopInsert();
    requestDto.alignment = TabStopBase_AlignmentEnum.left;
    requestDto.leader = TabStopBase_LeaderEnum.none;
    requestDto.position = 100;

    final request = new InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      requestDto,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertOrUpdateParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 3);
    expect(result.tabStops[1].position, 100);


  }

  /// Test for deleting all paragraph tab stops.
  Future<void> testDeleteAllParagraphTabStops() async
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
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 0);
  }

  /// Test for deleting all paragraph tab stops without node path.
  Future<void> testDeleteAllParagraphTabStopsWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteAllParagraphTabStopsWithoutNodePath.docx';
    await this.context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteAllParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 0);
  }

  /// Test for deleting a tab stops.
  Future<void> testDeleteParagraphTabStop() async
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
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 1);
  }

  /// Test for deleting a tab stops without node path.
  Future<void> testDeleteParagraphTabStopWithoutNodePath() async
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
    expect(result.tabStops, isNotNull);
    expect(result.tabStops.length, 1);
  }
}
