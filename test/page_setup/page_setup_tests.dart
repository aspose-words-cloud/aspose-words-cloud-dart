/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_setup_tests.dart">
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

/// Example of how to work with macros.
class PageSetupTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String localTextFile;

  PageSetupTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/PageSetup';
    localFile = 'Common/test_multi_pages.docx';
    localTextFile = 'DocumentElements/Text/SampleWordDocument.docx';
  }

  /// Test for getting page settings.
  Future<void> testGetSectionPageSetup() async
  {
    final remoteFileName = 'TestGetSectionPageSetup.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetSectionPageSetupRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getSectionPageSetup(request);
    expect(result.pageSetup, isNotNull);
    expect(result.pageSetup.lineStartingNumber, 1);
  }

  /// Test for getting page settings online.
  Future<void> testGetSectionPageSetupOnline() async
  {
    final documentData = await context.loadBinaryFile(localFile);

    final request = GetSectionPageSetupOnlineRequest(
      documentData,
      0
    );

    await context.getApi().getSectionPageSetupOnline(request);
  }

  /// Test for updating page settings.
  Future<void> testUpdateSectionPageSetup() async
  {
    final remoteFileName = 'TestUpdateSectionPageSetup.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final pageSetup = PageSetup();
    pageSetup.rtlGutter = true;
    pageSetup.leftMargin = 10.0;
    pageSetup.orientation = PageSetup_OrientationEnum.landscape;
    pageSetup.paperSize = PageSetup_PaperSizeEnum.a5;

    final request = UpdateSectionPageSetupRequest(
      remoteFileName,
      0,
      pageSetup,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateSectionPageSetup(request);
    expect(result.pageSetup, isNotNull);
    expect(result.pageSetup.rtlGutter, isTrue);


  }

  /// Test for updating page settings online.
  Future<void> testUpdateSectionPageSetupOnline() async
  {
    final documentData = await context.loadBinaryFile(localFile);
    final pageSetup = PageSetup();
    pageSetup.rtlGutter = true;
    pageSetup.leftMargin = 10;
    pageSetup.orientation = PageSetup_OrientationEnum.landscape;
    pageSetup.paperSize = PageSetup_PaperSizeEnum.a5;

    final request = UpdateSectionPageSetupOnlineRequest(
      documentData,
      0,
      pageSetup
    );

    await context.getApi().updateSectionPageSetupOnline(request);
  }

  /// Test for page rendering.
  Future<void> testGetRenderPage() async
  {
    final remoteFileName = 'TestGetRenderPage.docx';
    await context.uploadFile(localTextFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderPageRequest(
      remoteFileName,
      1,
      'bmp',
      folder: remoteDataFolder
    );

    await context.getApi().renderPage(request);
  }

  /// Test for page rendering.
  Future<void> testGetRenderPageOnline() async
  {
    final documentData = await context.loadBinaryFile(localTextFile);

    final request = RenderPageOnlineRequest(
      documentData,
      1,
      'bmp'
    );

    await context.getApi().renderPageOnline(request);
  }
}
