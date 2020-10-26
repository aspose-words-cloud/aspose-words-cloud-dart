/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="batch_tests.dart">
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

import 'dart:typed_data';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'test_context.dart';
import 'package:test/test.dart';

/// Example of how to use batch requests.
class BatchTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String reportingFolder;

  BatchTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Paragraphs';
    localFile = 'Common/test_multi_pages.docx';
    reportingFolder = 'DocumentActions/Reporting';
  }

  void runAll() async {
    await test('BatchTests.TestBatch1', () async => await this.testBatch1());
  }

  /// Test for batch request.
  void testBatch1() async
  {
    var remoteFileName = "TestBatchDocument.docx";

    this.context.uploadFile(
        localFile,
        remoteDataFolder + "/" + remoteFileName
    );

    var request1 = new GetParagraphsRequest(
        remoteFileName,
        nodePath: "sections/0",
        folder: remoteDataFolder
    );

    var request2 = new GetParagraphRequest(
        remoteFileName,
        0,
        nodePath: "sections/0",
        folder: remoteDataFolder
    );

    var request3 = new InsertParagraphRequest(
        remoteFileName,
        new ParagraphInsert()
          ..text = "This is a new paragraph for your document",
        nodePath: "sections/0",
        folder: remoteDataFolder
    );

    var request4 = new DeleteParagraphRequest(
        remoteFileName,
        0,
        nodePath: "",
        folder: remoteDataFolder
    );

    var localDocumentFile = "ReportTemplate.docx";
    var localDataFile = await this.context.loadTextFile(reportingFolder + "/ReportData.json");

    var request5 = new BuildReportOnlineRequest(
        await this.context.loadBinaryFile(reportingFolder + "/" + localDocumentFile),
        localDataFile,
        new ReportEngineSettings()
          ..dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json
          ..dataSourceName = "persons"
    );

    var actual = await this.context.getApi().batch([request1, request2, request3, request4, request5]);
    assert(actual.length == 5);
    assert(actual[0] is ParagraphLinkCollectionResponse); // GetParagraphs
    assert(actual[1] is ParagraphResponse); // GetParagraph
    assert(actual[2] is ParagraphResponse); // InsertParagraph
    assert(actual[3]  == null); // DeleteParagraph
    assert(actual[4] is ByteData); // BuildReportOnline
  }
}
