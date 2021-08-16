/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="range_tests.dart">
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

/// Example of how to work with ranges.
class RangeTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  RangeTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Range';
    localFile = 'DocumentElements/Range/RangeGet.doc';
  }

  /// Test for getting the text from range.
  Future<void> testGetRangeText() async
  {
    final remoteFileName = 'TestGetRangeText.docx';

    final request = GetRangeTextRequest(
      remoteFileName,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getRangeText(request);
    expect(result.text, 'This is HEADER ');
  }

  /// Test for getting the text from range online.
  Future<void> testGetRangeTextOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetRangeTextOnlineRequest(
      requestDocument,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1'
    );

    await context.getApi().getRangeTextOnline(request);
  }

  /// Test for removing the text for range.
  Future<void> testRemoveRange() async
  {
    final remoteFileName = 'TestRemoveRange.docx';

    final request = RemoveRangeRequest(
      remoteFileName,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    await context.getApi().removeRange(request);
  }

  /// Test for removing the text for range online.
  Future<void> testRemoveRangeOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = RemoveRangeOnlineRequest(
      requestDocument,
      'id0.0.0',
      rangeEndIdentifier: 'id0.0.1'
    );

    await context.getApi().removeRangeOnline(request);
  }

  /// Test for saving a range as a new document.
  Future<void> testSaveAsRange() async
  {
    final remoteFileName = 'TestSaveAsRange.docx';

    final request = SaveAsRangeRequest(
      remoteFileName,
      'id0.0.0',
      requestDocumentParameters,
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    final result = await context.getApi().saveAsRange(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'NewDoc.docx');
  }

  /// Test for saving a range as a new document online.
  Future<void> testSaveAsRangeOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);



    final request = SaveAsRangeOnlineRequest(
      requestDocument,
      'id0.0.0',
      requestDocumentParameters,
      rangeEndIdentifier: 'id0.0.1'
    );

    await context.getApi().saveAsRangeOnline(request);
  }

  /// Test for replacing text in range.
  Future<void> testReplaceWithText() async
  {
    final remoteFileName = 'TestReplaceWithText.docx';

    final request = ReplaceWithTextRequest(
      remoteFileName,
      'id0.0.0',
      requestRangeText,
      rangeEndIdentifier: 'id0.0.1',
      folder: remoteDataFolder
    );

    final result = await context.getApi().replaceWithText(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'TestReplaceWithText.docx');
  }

  /// Test for replacing text in range online.
  Future<void> testReplaceWithTextOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);



    final request = ReplaceWithTextOnlineRequest(
      requestDocument,
      'id0.0.0',
      requestRangeText,
      rangeEndIdentifier: 'id0.0.1'
    );

    await context.getApi().replaceWithTextOnline(request);
  }
}
