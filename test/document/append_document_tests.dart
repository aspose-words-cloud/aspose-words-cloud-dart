/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="append_document_tests.dart">
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

/// Example of how to append document.
class AppendDocumentTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  AppendDocumentTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/AppendDocument';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for appending document.
  Future<void> testAppendDocument() async
  {
    final remoteFileName = 'TestAppendDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final documentListDocumentEntries0 = DocumentEntry();
    documentListDocumentEntries0.href = remoteDataFolder + '/' + remoteFileName;
    documentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';

    final documentListDocumentEntries = [
      documentListDocumentEntries0];

    final documentList = DocumentEntryList();
    documentList.documentEntries = documentListDocumentEntries;

    final request = AppendDocumentRequest(
      remoteFileName,
      documentList,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().appendDocument(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'TestAppendDocument.docx');
  }

  /// Test for appending document online.
  Future<void> testAppendDocumentOnline() async
  {
    final remoteFileName = 'TestAppendDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final documentData = await context.loadBinaryFile(localFile);
    final documentListDocumentEntries0 = DocumentEntry();
    documentListDocumentEntries0.href = remoteDataFolder + '/' + remoteFileName;
    documentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';

    final documentListDocumentEntries = [
      documentListDocumentEntries0];

    final documentList = DocumentEntryList();
    documentList.documentEntries = documentListDocumentEntries;

    final request = AppendDocumentOnlineRequest(
      documentData,
      documentList
    );

    await context.getApi().appendDocumentOnline(request);
  }
}
