/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_with_format_tests.dart">
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

import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

import '../test_context.dart';

/// Example of how to get document with different format.
class DocumentWithFormatTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  DocumentWithFormatTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/DocumentWithFormat';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting document with specified format.
  Future<void> testGetDocumentWithFormat() async
  {
    final remoteFileName = 'TestGetDocumentWithFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentWithFormatRequest(
      remoteFileName,
      'text',
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentWithFormat(request);
  }

  /// Test for getting document with specified format.
  Future<void> testGetDocumentWithFormatAndOutPath() async
  {
    final remoteFileName = 'TestGetDocumentWithFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentWithFormatRequest(
      remoteFileName,
      'text',
      folder: remoteDataFolder,
      outPath: context.baseTestOutPath + '/TestGetDocumentWithFormatAndOutPath.text'
    );

    await context.getApi().getDocumentWithFormat(request);
  }
}
