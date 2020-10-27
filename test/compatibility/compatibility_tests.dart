/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compatibility_tests.dart">
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

/// Example of how to work with compatibility options.
class CompatibilityTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  CompatibilityTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/Compatibility';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for optimize document to specific MS Word version.
  void testOptimizeDocument() async
  {
    final String remoteFileName = 'TestOptimizeDocument.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestOptions = new OptimizationOptions();
    requestOptions.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002;

    final request = new OptimizeDocumentRequest(
      remoteFileName,
      requestOptions,
      folder: remoteDataFolder
    );

    await this.context.getApi().optimizeDocument(request);
  }
}
