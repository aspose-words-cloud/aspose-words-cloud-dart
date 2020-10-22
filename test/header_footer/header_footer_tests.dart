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
import 'package:test/test.dart';

/// Example of how to work with headers and footers.
class HeaderFooterTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  HeaderFooterTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/HeaderFooters';
    localFile = 'DocumentElements/HeaderFooters/HeadersFooters.doc';
  }

  void runAll() async {
    await test('HeaderFooter.GetHeaderFooters', () async => await this.testGetHeaderFooters());
    await test('HeaderFooter.GetHeaderFooter', () async => await this.testGetHeaderFooter());
    await test('HeaderFooter.GetHeaderFooterOfSection', () async => await this.testGetHeaderFooterOfSection());
    await test('HeaderFooter.DeleteHeaderFooter', () async => await this.testDeleteHeaderFooter());
    await test('HeaderFooter.DeleteHeadersFooters', () async => await this.testDeleteHeadersFooters());
    await test('HeaderFooter.InsertHeaderFooter', () async => await this.testInsertHeaderFooter());
  }

  /// Test for getting headers and footers.
  void testGetHeaderFooters() async
  {
    final String remoteFileName = 'TestGetHeadersFooters.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetHeaderFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getHeaderFooters(request);
  }

  /// Test for getting headerfooter.
  void testGetHeaderFooter() async
  {
    final String remoteFileName = 'TestGetHeaderFooter.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetHeaderFooterRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getHeaderFooter(request);
  }

  /// Test for getting headerfooter of section.
  void testGetHeaderFooterOfSection() async
  {
    final String remoteFileName = 'TestGetHeaderFooterOfSection.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetHeaderFooterOfSectionRequest(
      remoteFileName,
      0,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getHeaderFooterOfSection(request);
  }

  /// Test for deleting headerfooter.
  void testDeleteHeaderFooter() async
  {
    final String remoteFileName = 'TestDeleteHeaderFooter.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteHeaderFooterRequest(
      remoteFileName,
      '',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteHeaderFooter(request);
  }

  /// Test for deleting headerfooters.
  void testDeleteHeadersFooters() async
  {
    final String remoteFileName = 'TestDeleteHeadersFooters.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteHeadersFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteHeadersFooters(request);
  }

  /// Test for adding headerfooters.
  void testInsertHeaderFooter() async
  {
    final String remoteFileName = 'TestInsertHeaderFooter.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new InsertHeaderFooterRequest(
      remoteFileName,
      'FooterEven',
      '',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertHeaderFooter(request);
  }
}
