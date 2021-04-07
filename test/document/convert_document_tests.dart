/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="convert_document_tests.dart">
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

/// Example of how to convert document to one of the available formats.
class ConvertDocumentTests
{
  final TestContext context;
  String remoteFolder;
  String localFolder;

  ConvertDocumentTests(final this.context) {
    remoteFolder = context.remoteBaseTestDataFolder + '/DocumentActions/ConvertDocument';
    localFolder = 'DocumentActions/ConvertDocument';
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAs() async
  {
    final localName = 'test_multi_pages.docx';
    final remoteName = 'TestSaveAs.docx';
    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptionsData = SaveOptionsData();
    requestSaveOptionsData.saveFormat = 'pdf';
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAs.pdf';

    final request = SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAs(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult.destDocument, isNotNull);
  }

  /// Test for converting document online to one of the available formats.
  Future<void> testSaveAsOnline() async
  {
    final localName = 'test_multi_pages.docx';
    final documentData = await context.loadBinaryFile('Common/' + localName);
    final requestSaveOptionsData = SaveOptionsData();
    requestSaveOptionsData.saveFormat = 'pdf';
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAs.pdf';

    final request = SaveAsOnlineRequest(
      documentData,
      requestSaveOptionsData
    );

    await context.getApi().saveAsOnline(request);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsDocx() async
  {
    final localName = '45.pdf';
    final remoteName = 'TestSaveAsFromPdfToDoc.pdf';
    await context.uploadFile(localFolder + '/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptionsData = SaveOptionsData();
    requestSaveOptionsData.saveFormat = 'docx';
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAsFromPdfToDoc.docx';

    final request = SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAs(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult.destDocument, isNotNull);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsTiff() async
  {
    final localName = 'test_multi_pages.docx';
    final remoteName = 'TestSaveAsTiff.pdf';
    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptions = TiffSaveOptionsData();
    requestSaveOptions.saveFormat = 'tiff';
    requestSaveOptions.fileName = context.baseTestOutPath + '/abc.tiff';

    final request = SaveAsTiffRequest(
      remoteName,
      requestSaveOptions,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAsTiff(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult.destDocument, isNotNull);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsTiffOnline() async
  {
    final localName = 'test_multi_pages.docx';
    final documentData = await context.loadBinaryFile('Common/' + localName);
    final requestSaveOptions = TiffSaveOptionsData();
    requestSaveOptions.saveFormat = 'tiff';
    requestSaveOptions.fileName = context.baseTestOutPath + '/abc.tiff';

    final request = SaveAsTiffOnlineRequest(
      documentData,
      requestSaveOptions
    );

    await context.getApi().saveAsTiffOnline(request);
  }

  /// A test for ConvertDocument.
  Future<void> testConvertDocument() async
  {
    final documentData = await context.loadBinaryFile(localFolder + '/test_uploadfile.docx');

    final request = ConvertDocumentRequest(
      documentData,
      'pdf'
    );

    await context.getApi().convertDocument(request);
  }
}
