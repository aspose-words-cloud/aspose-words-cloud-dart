/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_properties_tests.dart">
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

/// Example of how to get document properties.
class DocumentPropertiesTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  DocumentPropertiesTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/DocumentProperties';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting document properties.
  Future<void> testGetDocumentProperties() async
  {
    final String remoteFileName = 'TestGetDocumentProperties.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentPropertiesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await this.context.getApi().getDocumentProperties(request);
  }

  /// A test for GetDocumentProperty.
  Future<void> testGetDocumentProperty() async
  {
    final String remoteFileName = 'TestGetDocumentProperty.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentPropertyRequest(
      remoteFileName,
      'Author',
      folder: remoteDataFolder
    );

    await this.context.getApi().getDocumentProperty(request);
  }

  /// Test for deleting document property.
  Future<void> testDeleteDocumentProperty() async
  {
    final String remoteFileName = 'TestDeleteDocumentProperty.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteDocumentPropertyRequest(
      remoteFileName,
      'testProp',
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().deleteDocumentProperty(request);
  }

  /// Test for updating document property.
  Future<void> testUpdateDocumentProperty() async
  {
    final String remoteFileName = 'TestUpdateDocumentProperty.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperty = new DocumentPropertyCreateOrUpdate();
    requestProperty.value = 'Imran Anwar';

    final request = new CreateOrUpdateDocumentPropertyRequest(
      remoteFileName,
      'AsposeAuthor',
      requestProperty,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().createOrUpdateDocumentProperty(request);
  }
}
