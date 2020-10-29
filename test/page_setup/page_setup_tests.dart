/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_setup_tests.dart">
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

/// Example of how to work with macros.
class PageSetupTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String localTextFile;

  PageSetupTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/PageSetup';
    localFile = 'Common/test_multi_pages.docx';
    localTextFile = 'DocumentElements/Text/SampleWordDocument.docx';
  }

  /// Test for getting page settings.
  Future<void> testGetSectionPageSetup() async
  {
    final String remoteFileName = 'TestGetSectionPageSetup.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetSectionPageSetupRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getSectionPageSetup(request);
    expect(result.pageSetup, isNotNull);
    expect(result.pageSetup.lineStartingNumber, 1);
  }

  /// Test for updating page settings.
  Future<void> testUpdateSectionPageSetup() async
  {
    final String remoteFileName = 'TestUpdateSectionPageSetup.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestPageSetup = new PageSetup();
    requestPageSetup.rtlGutter = true;
    requestPageSetup.leftMargin = 10;
    requestPageSetup.orientation = PageSetup_OrientationEnum.landscape;
    requestPageSetup.paperSize = PageSetup_PaperSizeEnum.a5;

    final request = new UpdateSectionPageSetupRequest(
      remoteFileName,
      0,
      requestPageSetup,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateSectionPageSetup(request);
    expect(result.pageSetup, isNotNull);
    expect(result.pageSetup.rtlGutter, isTrue);


  }

  /// Test for page rendering.
  Future<void> testGetRenderPage() async
  {
    final String remoteFileName = 'TestGetRenderPage.docx';
    await this.context.uploadFile(localTextFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderPageRequest(
      remoteFileName,
      1,
      'bmp',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().renderPage(request);
  }
}
