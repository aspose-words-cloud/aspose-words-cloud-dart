/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_border_tests.dart">
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

/// Example of how to work with table borders.
class TableBorderTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  TableBorderTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Tables';
    localFile = 'DocumentElements/Tables/TablesGet.docx';
  }

  /// Test for getting borders.
  void testGetBorders() async
  {
    final String remoteFileName = 'TestGetBorders.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetBordersRequest(
      remoteFileName,
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getBorders(request);
  }

  /// Test for getting border.
  void testGetBorder() async
  {
    final String remoteFileName = 'TestGetBorder.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetBorderRequest(
      remoteFileName,
      'left',
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getBorder(request);
  }

  /// Test for deleting borders.
  void testDeleteBorders() async
  {
    final String remoteFileName = 'TestDeleteBorders.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteBordersRequest(
      remoteFileName,
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteBorders(request);
  }

  /// Test for deleting border.
  void testDeleteBorder() async
  {
    final String remoteFileName = 'TestDeleteBorder.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteBorderRequest(
      remoteFileName,
      'left',
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().deleteBorder(request);
  }

  /// Test for updating border.
  void testUpdateBorder() async
  {
    final String remoteFileName = 'TestUpdateBorder.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestBorderPropertiesColor = new XmlColor();
    requestBorderPropertiesColor.alpha = 2;

    var requestBorderProperties = new Border();
    requestBorderProperties.borderType = Border_BorderTypeEnum.left;
    requestBorderProperties.color = requestBorderPropertiesColor;
    requestBorderProperties.distanceFromText = 6;
    requestBorderProperties.lineStyle = Border_LineStyleEnum.dashDotStroker;
    requestBorderProperties.lineWidth = 2;
    requestBorderProperties.shadow = true;

    final request = new UpdateBorderRequest(
      remoteFileName,
      requestBorderProperties,
      'left',
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateBorder(request);
  }
}
