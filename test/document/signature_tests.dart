/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="signature_tests.dart">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

/// Example of how to work with signatures.
class SignatureTests
{
  final TestContext context;
  late String remoteFolder;
  late String localFolder;
  late String signedDocument;
  late String unsignedDocument;
  late String certificateName;
  late String certificatePassword;

  SignatureTests(this.context) {
    remoteFolder = context.remoteBaseTestDataFolder + '/DocumentActions/Signature';
    localFolder = 'DocumentActions/Signature';
    signedDocument = 'signedDocument.docx';
    unsignedDocument = 'unsignedDocument.docx';
    certificateName = 'morzal.pfx';
    certificatePassword = 'aw';
  }

  /// Test for getting all document signatures.
  Future<void> testGetSignatures() async
  {
    final remoteName = 'TestGetSignatures.docx';
    await context.uploadFile(localFolder + '/' + signedDocument, remoteFolder + '/' + remoteName);

    final request = GetSignaturesRequest(
      remoteName,
      folder: remoteFolder
    );

    final result = await context.getApi().getSignatures(request);
    expect(result.signatures, isNotNull);
    expect(result.signatures?.length, 1);
  }

  /// Test for getting all document signatures online.
  Future<void> testGetSignaturesOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + signedDocument);

    final request = GetSignaturesOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().getSignaturesOnline(request);
    expect(result.signatures, isNotNull);
    expect(result.signatures?.length, 1);
  }

  /// Test for removing all document signatures.
  Future<void> testRemoveAllSignatures() async
  {
    final remoteName = 'TestRemoveAllSignatures.docx';
    await context.uploadFile(localFolder + '/' + signedDocument, remoteFolder + '/' + remoteName);

    final request = RemoveAllSignaturesRequest(
      remoteName,
      folder: remoteFolder
    );

    final result = await context.getApi().removeAllSignatures(request);
    expect(result.signatures, isNotNull);
    expect(result.signatures?.length, 0);
  }

  /// Test for removing all document signatures online.
  Future<void> testRemoveAllSignaturesOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + signedDocument);

    final request = RemoveAllSignaturesOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().removeAllSignaturesOnline(request);
    expect(result.model?.signatures, isNotNull);
    expect(result.model?.signatures?.length, 0);
  }

  /// Test for signing document.
  Future<void> testSignDocument() async
  {
    final remoteName = 'TestSignDocument.docx';
    final remoteCertificateName = 'TestCertificate.pfx';
    await context.uploadFile(localFolder + '/' + unsignedDocument, remoteFolder + '/' + remoteName);

    await context.uploadFile(localFolder + '/' + certificateName, remoteFolder + '/' + remoteCertificateName);

    final request = SignDocumentRequest(
      remoteName,
      remoteFolder + '/' + remoteCertificateName,
      certificatePassword,
      folder: remoteFolder
    );

    final result = await context.getApi().signDocument(request);
    expect(result.signatures, isNotNull);
    expect(result.signatures?.length, 1);
  }

  /// Test for signing document online.
  Future<void> testSignDocumentOnline() async
  {
    final remoteCertificateName = 'TestCertificateOnline.pfx';
    await context.uploadFile(localFolder + '/' + certificateName, remoteFolder + '/' + remoteCertificateName);
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + unsignedDocument);

    final request = SignDocumentOnlineRequest(
      requestDocument,
      remoteFolder + '/' + remoteCertificateName,
      certificatePassword
    );

    final result = await context.getApi().signDocumentOnline(request);
    expect(result.model?.signatures, isNotNull);
    expect(result.model?.signatures?.length, 1);
  }
}
