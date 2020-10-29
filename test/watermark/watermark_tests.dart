/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="watermark_tests.dart">
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

/// Example of how to work with watermarks.
class WatermarkTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  WatermarkTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/Watermark';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for adding watermark image.
  Future<void> testInsertWatermarkImage() async
  {
    final String remoteFileName = 'TestInsertWatermarkImage.docx';
    final String remoteImagePath = remoteDataFolder + '/TestInsertWatermarkImage.png';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    await this.context.uploadFile('Common/aspose-cloud.png', remoteImagePath);

    final request = new InsertWatermarkImageRequest(
      remoteFileName,
      imageFile: null,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName,
      image: remoteImagePath
    );

    await this.context.getApi().insertWatermarkImage(request);
  }

  /// Test for adding watermark text.
  Future<void> testInsertWatermarkText() async
  {
    final String remoteFileName = 'TestInsertWatermarkText.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestWatermarkText = new WatermarkText();
    requestWatermarkText.text = 'This is the text';
    requestWatermarkText.rotationAngle = 90;

    final request = new InsertWatermarkTextRequest(
      remoteFileName,
      requestWatermarkText,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().insertWatermarkText(request);
  }

  /// Test for deleting watermark.
  Future<void> testDeleteWatermark() async
  {
    final String remoteFileName = 'TestDeleteWatermark.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteWatermarkRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().deleteWatermark(request);
  }
}
