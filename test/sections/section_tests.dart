/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="section_tests.dart">
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

/// Example of how to work with sections.
class SectionTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  SectionTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Section';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting section by index.
  Future<void> testGetSection() async
  {
    final String remoteFileName = 'TestGetSection.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetSectionRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getSection(request);
    expect(result.section, isNotNull);
    expect(result.section.childNodes, isNotNull);
    expect(result.section.childNodes.length, 13);
    expect('0.3.0'.startsWith(result.section.childNodes[0].nodeId), isTrue);
  }

  /// Test for getting sections.
  Future<void> testGetSections() async
  {
    final String remoteFileName = 'TestGetSections.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetSectionsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getSections(request);
    expect(result.sections, isNotNull);
    expect(result.sections.sectionLinkList, isNotNull);
    expect(result.sections.sectionLinkList.length, 1);
    expect('0'.startsWith(result.sections.sectionLinkList[0].nodeId), isTrue);
  }

  /// Test for delete a section.
  Future<void> testDeleteSection() async
  {
    final String remoteFileName = 'TestDeleteSection.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteSectionRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteSection(request);
  }
}
