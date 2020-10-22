/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_objects_tests.dart">
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

/// Example of how to get drawing objects.
class DrawingObjectsTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String localDrawingFile;

  DrawingObjectsTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/DrawingObjectss';
    localFile = 'Common/test_multi_pages.docx';
    localDrawingFile = 'DocumentElements/DrawingObjects/sample_EmbeddedOLE.docx';
  }

  void runAll() async {
    await test('DrawingObjects.GetDocumentDrawingObjects', () async => await this.testGetDocumentDrawingObjects());
    await test('DrawingObjects.GetDocumentDrawingObjectsWithoutNodePath', () async => await this.testGetDocumentDrawingObjectsWithoutNodePath());
    await test('DrawingObjects.GetDocumentDrawingObjectByIndex', () async => await this.testGetDocumentDrawingObjectByIndex());
    await test('DrawingObjects.GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await this.testGetDocumentDrawingObjectByIndexWithoutNodePath());
    await test('DrawingObjects.RenderDrawingObject', () async => await this.testRenderDrawingObject());
    await test('DrawingObjects.RenderDrawingObjectWithoutNodePath', () async => await this.testRenderDrawingObjectWithoutNodePath());
    await test('DrawingObjects.GetDocumentDrawingObjectImageData', () async => await this.testGetDocumentDrawingObjectImageData());
    await test('DrawingObjects.GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await this.testGetDocumentDrawingObjectImageDataWithoutNodePath());
    await test('DrawingObjects.GetDocumentDrawingObjectOleData', () async => await this.testGetDocumentDrawingObjectOleData());
    await test('DrawingObjects.GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await this.testGetDocumentDrawingObjectOleDataWithoutNodePath());
    await test('DrawingObjects.InsertDrawingObject', () async => await this.testInsertDrawingObject());
    await test('DrawingObjects.InsertDrawingObjectWithoutNodePath', () async => await this.testInsertDrawingObjectWithoutNodePath());
    await test('DrawingObjects.DeleteDrawingObject', () async => await this.testDeleteDrawingObject());
    await test('DrawingObjects.DeleteDrawingObjectWithoutNodePath', () async => await this.testDeleteDrawingObjectWithoutNodePath());
    await test('DrawingObjects.UpdateDrawingObject', () async => await this.testUpdateDrawingObject());
    await test('DrawingObjects.UpdateDrawingObjectWithoutNodePath', () async => await this.testUpdateDrawingObjectWithoutNodePath());
  }

  /// Test for getting drawing objects from document.
  void testGetDocumentDrawingObjects() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjects.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjects(request);
  }

  /// Test for getting drawing objects from document without node path.
  void testGetDocumentDrawingObjectsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjects(request);
  }

  /// Test for getting drawing object by specified index.
  void testGetDocumentDrawingObjectByIndex() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectByIndex.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectByIndexRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectByIndex(request);
  }

  /// Test for getting drawing object by specified index without node path.
  void testGetDocumentDrawingObjectByIndexWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectByIndexRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectByIndex(request);
  }

  /// Test for getting drawing object by specified index and format.
  void testRenderDrawingObject() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithFormat.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderDrawingObjectRequest(
      remoteFileName,
      'png',
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderDrawingObject(request);
  }

  /// Test for getting drawing object by specified index and format without node path.
  void testRenderDrawingObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderDrawingObjectRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderDrawingObject(request);
  }

  /// Test for reading drawing object's image data.
  void testGetDocumentDrawingObjectImageData() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectImageData.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectImageDataRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectImageData(request);
  }

  /// Test for reading drawing object's image data without node path.
  void testGetDocumentDrawingObjectImageDataWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectImageDataRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectImageData(request);
  }

  /// Test for getting drawing object OLE data.
  void testGetDocumentDrawingObjectOleData() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectOleData.docx';
    await this.context.uploadFile(localDrawingFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectOleDataRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectOleData(request);
  }

  /// Test for getting drawing object OLE data without node path.
  void testGetDocumentDrawingObjectOleDataWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx';
    await this.context.uploadFile(localDrawingFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentDrawingObjectOleDataRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentDrawingObjectOleData(request);
  }

  /// Test for adding drawing object.
  void testInsertDrawingObject() async
  {
    final String remoteFileName = 'TestInsetDrawingObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = new DrawingObjectInsert();
    requestDrawingObject.height = 0;
    requestDrawingObject.left = 0;
    requestDrawingObject.top = 0;
    requestDrawingObject.width = 0;
    requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
    requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
    requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;

    final request = new InsertDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await this.context.loadBinaryFile('Common/aspose-cloud.png'),
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertDrawingObject(request);
  }

  /// Test for adding drawing object without node path.
  void testInsertDrawingObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsetDrawingObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = new DrawingObjectInsert();
    requestDrawingObject.height = 0;
    requestDrawingObject.left = 0;
    requestDrawingObject.top = 0;
    requestDrawingObject.width = 0;
    requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
    requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
    requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;

    final request = new InsertDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await this.context.loadBinaryFile('Common/aspose-cloud.png'),
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertDrawingObject(request);
  }

  /// Test for deleting drawing object.
  void testDeleteDrawingObject() async
  {
    final String remoteFileName = 'TestDeleteDrawingObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteDrawingObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteDrawingObject(request);
  }

  /// Test for deleting drawing object without node path.
  void testDeleteDrawingObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteDrawingObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteDrawingObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteDrawingObject(request);
  }

  /// Test for updating drawing object.
  void testUpdateDrawingObject() async
  {
    final String remoteFileName = 'TestUpdateDrawingObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = new DrawingObjectUpdate();
    requestDrawingObject.left = 0;

    final request = new UpdateDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await this.context.loadBinaryFile('Common/aspose-cloud.png'),
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateDrawingObject(request);
  }

  /// Test for updating drawing object without node path.
  void testUpdateDrawingObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestUpdateDrawingObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = new DrawingObjectUpdate();
    requestDrawingObject.left = 0;

    final request = new UpdateDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await this.context.loadBinaryFile('Common/aspose-cloud.png'),
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateDrawingObject(request);
  }
}
