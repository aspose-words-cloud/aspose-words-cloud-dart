/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="build_report_tests.dart">
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

/// Example of how to perform mail merge.
class BuildReportTests
{
  final TestContext context;
  String remoteDataFolder;
  String reportingFolder;

  BuildReportTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/Reporting';
    reportingFolder = 'DocumentActions/Reporting';
  }

  /// Test for build report online.
  Future<void> testBuildReportOnline() async
  {
    final String localDocumentFile = 'ReportTemplate.docx';
    final String localDataFile = await this.context.loadTextFile(reportingFolder + '/ReportData.json');
    var requestReportEngineSettings = new ReportEngineSettings();
    requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
    requestReportEngineSettings.dataSourceName = 'persons';

    final request = new BuildReportOnlineRequest(
      await this.context.loadBinaryFile(reportingFolder + '/' + localDocumentFile),
      localDataFile,
      requestReportEngineSettings
    );

    var result = await this.context.getApi().buildReportOnline(request);
  }

  /// Test for build report.
  Future<void> testBuildReport() async
  {
    final String localDocumentFile = 'ReportTemplate.docx';
    final String remoteFileName = 'TestBuildReport.docx';
    final String localDataFile = await this.context.loadTextFile(reportingFolder + '/ReportData.json');
    await this.context.uploadFile(reportingFolder + '/' + localDocumentFile, remoteDataFolder + '/' + remoteFileName);
    var requestReportEngineSettingsReportBuildOptions = [
      ReportBuildOptionsEnum.allowMissingMembers,
    ReportBuildOptionsEnum.removeEmptyParagraphs];

    var requestReportEngineSettings = new ReportEngineSettings();
    requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
    requestReportEngineSettings.reportBuildOptions = requestReportEngineSettingsReportBuildOptions;

    final request = new BuildReportRequest(
      remoteFileName,
      localDataFile,
      requestReportEngineSettings,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().buildReport(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'TestBuildReport.docx');
  }
}
