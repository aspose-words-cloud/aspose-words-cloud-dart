/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="batch_tests.dart">
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

import 'dart:typed_data';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:test/test.dart';

import 'test_context.dart';

/// Example of how to use batch requests.
class BatchTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;
  String reportingFolder;

  BatchTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Paragraphs';
    localFile = 'Common/test_multi_pages.docx';
    reportingFolder = 'DocumentActions/Reporting';
  }

  /// Test for batch request.
  Future<void> testBatch1() async
  {
    var remoteFileName = 'TestBatchDocument.docx';

    await context.uploadFile(
        localFile,
        '$remoteDataFolder/$remoteFileName'
    );

    var request1 = GetParagraphsRequest(
        remoteFileName,
        nodePath: 'sections/0',
        folder: remoteDataFolder
    );

    var request2 = GetParagraphRequest(
        remoteFileName,
        0,
        nodePath: 'sections/0',
        folder: remoteDataFolder
    );

    var request3 = InsertParagraphRequest(
        remoteFileName,
        ParagraphInsert()
          ..text = 'This is a new paragraph for your document',
        nodePath: 'sections/0',
        folder: remoteDataFolder
    );

    var request4 = DeleteParagraphRequest(
        remoteFileName,
        0,
        nodePath: '',
        folder: remoteDataFolder
    );

    var localDocumentFile = 'ReportTemplate.docx';
    var localDataFile = await context.loadTextFile(reportingFolder + '/ReportData.json');

    var request5 = BuildReportOnlineRequest(
        await context.loadBinaryFile(reportingFolder + '/' + localDocumentFile),
        localDataFile,
        ReportEngineSettings()
          ..dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json
          ..dataSourceName = 'persons'
    );

    var actual = await context.getApi().batch([request1, request2, request3, request4, request5]);
    expect(actual.length, 5);
    expect(actual[0] is ParagraphLinkCollectionResponse, isTrue); // GetParagraphs
    expect(actual[1] is ParagraphResponse, isTrue); // GetParagraph
    expect(actual[2] is ParagraphResponse, isTrue); // InsertParagraph
    expect(actual[3], isNull); // DeleteParagraph
    expect(actual[4] is ByteData, isTrue); // BuildReportOnline
  }
}
