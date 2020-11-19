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
import 'package:test/test.dart';

import '../test_context.dart';

/// Example of how to get drawing objects.
class DrawingObjectsTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String localDrawingFile;

  DrawingObjectsTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/DrawingObjectss';
    localFile = 'Common/test_multi_pages.docx';
    localDrawingFile = 'DocumentElements/DrawingObjects/sample_EmbeddedOLE.docx';
  }

  /// Test for getting drawing objects from document.
  Future<void> testGetDocumentDrawingObjects() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjects.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await context.getApi().getDocumentDrawingObjects(request);
    expect(result.drawingObjects, isNotNull);
    expect(result.drawingObjects.list, isNotNull);
    expect(result.drawingObjects.list.length, 1);
  }

  /// Test for getting drawing objects from document without node path.
  Future<void> testGetDocumentDrawingObjectsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getDocumentDrawingObjects(request);
    expect(result.drawingObjects, isNotNull);
    expect(result.drawingObjects.list, isNotNull);
    expect(result.drawingObjects.list.length, 1);
  }

  /// Test for getting drawing object by specified index.
  Future<void> testGetDocumentDrawingObjectByIndex() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectByIndex.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectByIndexRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await context.getApi().getDocumentDrawingObjectByIndex(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.height, 300.0);
  }

  /// Test for getting drawing object by specified index without node path.
  Future<void> testGetDocumentDrawingObjectByIndexWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectByIndexRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getDocumentDrawingObjectByIndex(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.height, 300.0);
  }

  /// Test for getting drawing object by specified index and format.
  Future<void> testRenderDrawingObject() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderDrawingObjectRequest(
      remoteFileName,
      'png',
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().renderDrawingObject(request);
  }

  /// Test for getting drawing object by specified index and format without node path.
  Future<void> testRenderDrawingObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderDrawingObjectRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().renderDrawingObject(request);
  }

  /// Test for reading drawing object's image data.
  Future<void> testGetDocumentDrawingObjectImageData() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectImageData.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectImageDataRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentDrawingObjectImageData(request);
  }

  /// Test for reading drawing object's image data without node path.
  Future<void> testGetDocumentDrawingObjectImageDataWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectImageDataRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentDrawingObjectImageData(request);
  }

  /// Test for getting drawing object OLE data.
  Future<void> testGetDocumentDrawingObjectOleData() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectOleData.docx';
    await context.uploadFile(localDrawingFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectOleDataRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentDrawingObjectOleData(request);
  }

  /// Test for getting drawing object OLE data without node path.
  Future<void> testGetDocumentDrawingObjectOleDataWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx';
    await context.uploadFile(localDrawingFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentDrawingObjectOleDataRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentDrawingObjectOleData(request);
  }

  /// Test for adding drawing object.
  Future<void> testInsertDrawingObject() async
  {
    final remoteFileName = 'TestInsetDrawingObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = DrawingObjectInsert();
    requestDrawingObject.height = 0.0;
    requestDrawingObject.left = 0.0;
    requestDrawingObject.top = 0.0;
    requestDrawingObject.width = 0.0;
    requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
    requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
    requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;

    final request = InsertDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await context.loadBinaryFile('Common/aspose-cloud.png'),
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertDrawingObject(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.nodeId, '0.3.7.1');
  }

  /// Test for adding drawing object without node path.
  Future<void> testInsertDrawingObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestInsetDrawingObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = DrawingObjectInsert();
    requestDrawingObject.height = 0.0;
    requestDrawingObject.left = 0.0;
    requestDrawingObject.top = 0.0;
    requestDrawingObject.width = 0.0;
    requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
    requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
    requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;

    final request = InsertDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await context.loadBinaryFile('Common/aspose-cloud.png'),
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertDrawingObject(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.nodeId, '0.3.7.1');
  }

  /// Test for deleting drawing object.
  Future<void> testDeleteDrawingObject() async
  {
    final remoteFileName = 'TestDeleteDrawingObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteDrawingObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteDrawingObject(request);
  }

  /// Test for deleting drawing object without node path.
  Future<void> testDeleteDrawingObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteDrawingObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteDrawingObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteDrawingObject(request);
  }

  /// Test for updating drawing object.
  Future<void> testUpdateDrawingObject() async
  {
    final remoteFileName = 'TestUpdateDrawingObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = DrawingObjectUpdate();
    requestDrawingObject.left = 1.0;

    final request = UpdateDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await context.loadBinaryFile('Common/aspose-cloud.png'),
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateDrawingObject(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.left, 1.0);
  }

  /// Test for updating drawing object without node path.
  Future<void> testUpdateDrawingObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateDrawingObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDrawingObject = DrawingObjectUpdate();
    requestDrawingObject.left = 1.0;

    final request = UpdateDrawingObjectRequest(
      remoteFileName,
      requestDrawingObject,
      await context.loadBinaryFile('Common/aspose-cloud.png'),
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateDrawingObject(request);
    expect(result.drawingObject, isNotNull);
    expect(result.drawingObject.left, 1.0);
  }
}
