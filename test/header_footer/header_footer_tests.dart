/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="header_footer_tests.dart">
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

/// Example of how to work with headers and footers.
class HeaderFooterTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  HeaderFooterTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/HeaderFooters';
    localFile = 'DocumentElements/HeaderFooters/HeadersFooters.doc';
  }

  /// Test for getting headers and footers.
  Future<void> testGetHeaderFooters() async
  {
    final remoteFileName = 'TestGetHeadersFooters.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    await context.getApi().getHeaderFooters(request);
  }

  /// Test for getting headerfooter.
  Future<void> testGetHeaderFooter() async
  {
    final remoteFileName = 'TestGetHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFooterRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getHeaderFooter(request);
  }

  /// Test for getting headerfooter of section.
  Future<void> testGetHeaderFooterOfSection() async
  {
    final remoteFileName = 'TestGetHeaderFooterOfSection.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFooterOfSectionRequest(
      remoteFileName,
      0,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().getHeaderFooterOfSection(request);
  }

  /// Test for deleting headerfooter.
  Future<void> testDeleteHeaderFooter() async
  {
    final remoteFileName = 'TestDeleteHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteHeaderFooterRequest(
      remoteFileName,
      '',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteHeaderFooter(request);
  }

  /// Test for deleting headerfooters.
  Future<void> testDeleteHeadersFooters() async
  {
    final remoteFileName = 'TestDeleteHeadersFooters.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteHeadersFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteHeadersFooters(request);
  }

  /// Test for adding headerfooters.
  Future<void> testInsertHeaderFooter() async
  {
    final remoteFileName = 'TestInsertHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = InsertHeaderFooterRequest(
      remoteFileName,
      'FooterEven',
      '',
      folder: remoteDataFolder
    );

    await context.getApi().insertHeaderFooter(request);
  }
}
