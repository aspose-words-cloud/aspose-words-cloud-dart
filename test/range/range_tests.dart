/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="range_tests.dart">
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

/// Example of how to work with ranges.
class RangeTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  RangeTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Range';
    localFile = 'DocumentElements/Range/RangeGet.doc';
  }

  /// Test for getting the text from range.
  Future<void> testGetRangeText() async
  {
    final String remoteFileName = 'TestGetRangeText.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetRangeTextRequest(
      remoteFileName,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getRangeText(request);
  }

  /// Test for removing the text for range.
  Future<void> testRemoveRange() async
  {
    final String remoteFileName = 'TestRemoveRange.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RemoveRangeRequest(
      remoteFileName,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().removeRange(request);
  }

  /// Test for saving a range as a new document.
  Future<void> testSaveAsRange() async
  {
    final String remoteFileName = 'TestSaveAsRange.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDocumentParameters = new RangeDocument();
    requestDocumentParameters.documentName = remoteDataFolder + '/NewDoc.docx';

    final request = new SaveAsRangeRequest(
      remoteFileName,
      'id0.0.0',
      requestDocumentParameters,
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().saveAsRange(request);
  }

  /// Test for replacing text in range.
  Future<void> testReplaceWithText() async
  {
    final String remoteFileName = 'TestReplaceWithText.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRangeText = new ReplaceRange();
    requestRangeText.text = 'Replaced header';

    final request = new ReplaceWithTextRequest(
      remoteFileName,
      'id0.0.0',
      requestRangeText,
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().replaceWithText(request);
  }
}
