/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="execute_mail_merge_tests.dart">
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
class ExecuteMailMergeTests
{
  final TestContext context;
  String remoteDataFolder;
  String mailMergeFolder;

  ExecuteMailMergeTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/MailMerge';
    mailMergeFolder = 'DocumentActions/MailMerge';
  }

  /// Test for executing mail merge online.
  void testExecuteMailMergeOnline() async
  {
    final String localDocumentFile = 'SampleExecuteTemplate.docx';
    final String localDataFile = 'SampleExecuteTemplateData.txt';

    final request = new ExecuteMailMergeOnlineRequest(
      await this.context.loadBinaryFile(mailMergeFolder + '/' + localDocumentFile),
      await this.context.loadBinaryFile(mailMergeFolder + '/' + localDataFile)
    );

    var result = await this.context.getApi().executeMailMergeOnline(request);
  }

  /// Test for executing mail merge.
  void testExecuteMailMerge() async
  {
    final String localDocumentFile = 'SampleExecuteTemplate.docx';
    final String remoteFileName = 'TestExecuteMailMerge.docx';
    final String localDataFile = await this.context.loadTextFile(mailMergeFolder + '/SampleMailMergeTemplateData.txt');
    await this.context.uploadFile(mailMergeFolder + '/' + localDocumentFile, remoteDataFolder + '/' + remoteFileName);

    final request = new ExecuteMailMergeRequest(
      remoteFileName,
      data: localDataFile,
      folder: remoteDataFolder,
      withRegions: false,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().executeMailMerge(request);
  }
}
