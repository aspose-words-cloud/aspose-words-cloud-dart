/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="file_tests.dart">
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

/// Example of how to work with files.
class FileTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  FileTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/Storage';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for uploading file.
  Future<void> testUploadFile() async
  {
    final String remoteFileName = 'TestUploadFile.docx';

    final request = new UploadFileRequest(
      await this.context.loadBinaryFile(localFile),
      remoteDataFolder + '/' + remoteFileName
    );

    await this.context.getApi().uploadFile(request);
  }

  /// Test for copy file.
  Future<void> testCopyFile() async
  {
    final String remoteFileName = 'TestCopyFileSrc.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new CopyFileRequest(
      remoteDataFolder + '/TestCopyFileDest.docx',
      remoteDataFolder + '/' + remoteFileName
    );

    await this.context.getApi().copyFile(request);
  }

  /// Test for move file.
  Future<void> testMoveFile() async
  {
    final String remoteFileName = 'TestMoveFileSrc.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new MoveFileRequest(
      this.context.baseTestOutPath + '/TestMoveFileDest_' + this.context.createRandomGuid() + '.docx',
      remoteDataFolder + '/' + remoteFileName
    );

    await this.context.getApi().moveFile(request);
  }

  /// Test for delete file.
  Future<void> testDeleteFile() async
  {
    final String remoteFileName = 'TestDeleteFile.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFileRequest(
      remoteDataFolder + '/' + remoteFileName
    );

    await this.context.getApi().deleteFile(request);
  }

  /// Test for download file.
  Future<void> testDownloadFile() async
  {
    final String remoteFileName = 'TestDownloadFile.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DownloadFileRequest(
      remoteDataFolder + '/' + remoteFileName
    );

    await this.context.getApi().downloadFile(request);
  }
}
