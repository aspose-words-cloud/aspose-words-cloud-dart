/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="math_object_tests.dart">
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

/// Example of how to work with MathObjects.
class MathObjectTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  MathObjectTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/MathObjects';
    localFile = 'DocumentElements/MathObjects/MathObjects.docx';
  }

  void runAll() async {
    await test('MathObject.GetOfficeMathObjects', () async => await this.testGetOfficeMathObjects());
    await test('MathObject.GetOfficeMathObjectsWithoutNodePath', () async => await this.testGetOfficeMathObjectsWithoutNodePath());
    await test('MathObject.GetOfficeMathObject', () async => await this.testGetOfficeMathObject());
    await test('MathObject.GetOfficeMathObjectWithoutNodePath', () async => await this.testGetOfficeMathObjectWithoutNodePath());
    await test('MathObject.RenderMathObject', () async => await this.testRenderMathObject());
    await test('MathObject.RenderMathObjectWithoutNodePath', () async => await this.testRenderMathObjectWithoutNodePath());
    await test('MathObject.DeleteOfficeMathObject', () async => await this.testDeleteOfficeMathObject());
    await test('MathObject.DeleteOfficeMathObjectWithoutNodePath', () async => await this.testDeleteOfficeMathObjectWithoutNodePath());
  }

  /// Test for getting mathObjects.
  void testGetOfficeMathObjects() async
  {
    final String remoteFileName = 'TestGetOfficeMathObjects.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetOfficeMathObjectsRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getOfficeMathObjects(request);
  }

  /// Test for getting mathObjects without node path.
  void testGetOfficeMathObjectsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetOfficeMathObjectsWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetOfficeMathObjectsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getOfficeMathObjects(request);
  }

  /// Test for getting mathObject.
  void testGetOfficeMathObject() async
  {
    final String remoteFileName = 'TestGetOfficeMathObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetOfficeMathObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getOfficeMathObject(request);
  }

  /// Test for getting mathObject without node path.
  void testGetOfficeMathObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetOfficeMathObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetOfficeMathObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getOfficeMathObject(request);
  }

  /// Test for rendering mathObject.
  void testRenderMathObject() async
  {
    final String remoteFileName = 'TestRenderMathObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderMathObjectRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderMathObject(request);
  }

  /// Test for rendering mathObject without node path.
  void testRenderMathObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestRenderMathObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderMathObjectRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderMathObject(request);
  }

  /// Test for deleting mathObject.
  void testDeleteOfficeMathObject() async
  {
    final String remoteFileName = 'TestDeleteOfficeMathObject.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteOfficeMathObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteOfficeMathObject(request);
  }

  /// Test for deleting mathObject without node path.
  void testDeleteOfficeMathObjectWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteOfficeMathObjectWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteOfficeMathObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteOfficeMathObject(request);
  }
}
