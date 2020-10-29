/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="styles_tests.dart">
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

/// Example of how to work with styles.
class StylesTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  StylesTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Styles';
    localFile = 'DocumentElements/Styles/GetStyles.docx';
  }

  /// Test for getting styles from document.
  Future<void> testGetStyles() async
  {
    final remoteFileName = 'TestGetStyles.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStylesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getStyles(request);
  }

  /// Test for getting style from document.
  Future<void> testGetStyle() async
  {
    final remoteFileName = 'TestGetStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStyleRequest(
      remoteFileName,
      'Heading 1',
      folder: remoteDataFolder
    );

    await context.getApi().getStyle(request);
  }

  /// Test for updating style from document.
  Future<void> testUpdateStyle() async
  {
    final remoteFileName = 'TestUpdateStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleUpdate = StyleUpdate();
    requestStyleUpdate.name = 'My Style';

    final request = UpdateStyleRequest(
      remoteFileName,
      requestStyleUpdate,
      'Heading 1',
      folder: remoteDataFolder
    );

    await context.getApi().updateStyle(request);
  }

  /// Test for inserting style from document.
  Future<void> testInsertStyle() async
  {
    final remoteFileName = 'TestInsertStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleInsert = StyleInsert();
    requestStyleInsert.styleName = 'My Style';
    requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;

    final request = InsertStyleRequest(
      remoteFileName,
      requestStyleInsert,
      folder: remoteDataFolder
    );

    await context.getApi().insertStyle(request);
  }

  /// Test for coping style from document.
  Future<void> testCopyStyle() async
  {
    final remoteFileName = 'TestCopyStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleCopy = StyleCopy();
    requestStyleCopy.styleName = 'Heading 1';

    final request = CopyStyleRequest(
      remoteFileName,
      requestStyleCopy,
      folder: remoteDataFolder
    );

    await context.getApi().copyStyle(request);
  }

  /// Test for getting style from document element.
  Future<void> testGetStyleFromDocumentElement() async
  {
    final remoteFileName = 'TestGetStyleFromDocumentElement.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStyleFromDocumentElementRequest(
      remoteFileName,
      'paragraphs/1/paragraphFormat',
      folder: remoteDataFolder
    );

    await context.getApi().getStyleFromDocumentElement(request);
  }

  /// Test for applying style to document element.
  Future<void> testApplyStyleToDocumentElement() async
  {
    final remoteFileName = 'TestApplyStyleToDocumentElement.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestStyleApply = StyleApply();
    requestStyleApply.styleName = 'Heading 1';

    final request = ApplyStyleToDocumentElementRequest(
      remoteFileName,
      requestStyleApply,
      'paragraphs/1/paragraphFormat',
      folder: remoteDataFolder
    );

    await context.getApi().applyStyleToDocumentElement(request);
  }
}
