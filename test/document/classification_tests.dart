/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="classification_tests.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

/// Example of how to classify text.
class ClassificationTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  ClassificationTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/Common';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for raw text classification.
  Future<void> testClassify() async
  {

    final request = ClassifyRequest(
      'Try text classification',
      bestClassesCount: '3'
    );

    var result = await context.getApi().classify(request);
    expect(result.bestClassName, 'Science');
    expect(result.bestResults, isNotNull);
    expect(result.bestResults.length, 3);
  }

  /// Test for document classification.
  Future<void> testClassifyDocument() async
  {
    final remoteFileName = 'TestClassifyDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = ClassifyDocumentRequest(
      remoteFileName,
      folder: remoteDataFolder,
      bestClassesCount: '3'
    );

    var result = await context.getApi().classifyDocument(request);
    expect(result.bestClassName, 'Hobbies_&_Interests');
    expect(result.bestResults, isNotNull);
    expect(result.bestResults.length, 3);
  }

  /// Test for document classification online.
  Future<void> testClassifyDocumentOnline() async
  {

    final request = ClassifyDocumentOnlineRequest(
      await context.loadBinaryFile(localFile),
      bestClassesCount: '3'
    );

    await context.getApi().classifyDocumentOnline(request);
  }
}
