/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_protection_tests.dart">
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

/// Example of how to set document protection.
class DocumentProtectionTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  DocumentProtectionTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/DocumentProtection';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for setting document protection.
  void testProtectDocument() async
  {
    final String remoteFileName = 'TestProtectDocument.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProtectionRequest = new ProtectionRequest();
    requestProtectionRequest.newPassword = '123';

    final request = new ProtectDocumentRequest(
      remoteFileName,
      requestProtectionRequest,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().protectDocument(request);
  }

  /// Test for getting document protection.
  void testGetDocumentProtection() async
  {
    final String remoteFileName = 'TestGetDocumentProtection.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentProtectionRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentProtection(request);
  }

  /// Test for changing document protection.
  void testChangeDocumentProtection() async
  {
    final String remoteFileName = 'TestChangeDocumentProtection.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProtectionRequest = new ProtectionRequest();
    requestProtectionRequest.newPassword = '321';

    final request = new ProtectDocumentRequest(
      remoteFileName,
      requestProtectionRequest,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().protectDocument(request);
  }

  /// Test for deleting unprotect document.
  void testDeleteUnprotectDocument() async
  {
    final String localFilePath = 'DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx';
    final String remoteFileName = 'TestDeleteUnprotectDocument.docx';
    await this.context.uploadFile(localFilePath, remoteDataFolder + '/' + remoteFileName);
    var requestProtectionRequest = new ProtectionRequest();
    requestProtectionRequest.password = 'aspose';

    final request = new UnprotectDocumentRequest(
      remoteFileName,
      requestProtectionRequest,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().unprotectDocument(request);
  }
}
