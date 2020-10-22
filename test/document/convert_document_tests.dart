/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="convert_document_tests.dart">
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

/// Example of how to convert document to one of the available formats.
class ConvertDocumentTests
{
  final TestContext context;
  String remoteFolder;
  String localFolder;

  ConvertDocumentTests(final TestContext this.context) {
    remoteFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/ConvertDocument';
    localFolder = 'DocumentActions/ConvertDocument';
  }

  void runAll() async {
    await test('ConvertDocument.SaveAs', () async => await this.testSaveAs());
    await test('ConvertDocument.SaveAsDocx', () async => await this.testSaveAsDocx());
    await test('ConvertDocument.SaveAsTiff', () async => await this.testSaveAsTiff());
    await test('ConvertDocument.ConvertDocument', () async => await this.testConvertDocument());
  }

  /// Test for converting document to one of the available formats.
  void testSaveAs() async
  {
    final String localName = 'test_multi_pages.docx';
    final String remoteName = 'TestSaveAs.docx';
    await this.context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    var requestSaveOptionsData = new SaveOptionsData();
    requestSaveOptionsData.saveFormat = 'pdf';
    requestSaveOptionsData.fileName = this.context.baseTestOutPath + '/TestSaveAs.pdf';

    final request = new SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    var result = await this.context.getApi().saveAs(request);
  }

  /// Test for converting document to one of the available formats.
  void testSaveAsDocx() async
  {
    final String localName = '45.pdf';
    final String remoteName = 'TestSaveAsFromPdfToDoc.pdf';
    await this.context.uploadFile(localFolder + '/' + localName, remoteFolder + '/' + remoteName);
    var requestSaveOptionsData = new SaveOptionsData();
    requestSaveOptionsData.saveFormat = 'docx';
    requestSaveOptionsData.fileName = this.context.baseTestOutPath + '/TestSaveAsFromPdfToDoc.docx';

    final request = new SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    var result = await this.context.getApi().saveAs(request);
  }

  /// Test for converting document to one of the available formats.
  void testSaveAsTiff() async
  {
    final String localName = 'test_multi_pages.docx';
    final String remoteName = 'TestSaveAsTiff.pdf';
    await this.context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    var requestSaveOptions = new TiffSaveOptionsData();
    requestSaveOptions.saveFormat = 'tiff';
    requestSaveOptions.fileName = this.context.baseTestOutPath + '/abc.tiff';

    final request = new SaveAsTiffRequest(
      remoteName,
      requestSaveOptions,
      folder: remoteFolder
    );

    var result = await this.context.getApi().saveAsTiff(request);
  }

  /// A test for ConvertDocument.
  void testConvertDocument() async
  {

    final request = new ConvertDocumentRequest(
      await this.context.loadBinaryFile(localFolder + '/test_uploadfile.docx'),
      'pdf'
    );

    var result = await this.context.getApi().convertDocument(request);
  }
}
