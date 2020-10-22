/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="test_context.dart">
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

import 'dart:io';
import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

class TestContext {
  WordsApi _wordsApi;

  /// Base path to test data
  final String remoteBaseTestDataFolder = "Temp/SdkTests/Dart/TestData";

  /// Base path to output data
  final String baseTestOutPath = "TestOut/Dart";

  /// Base local test data folder
  final String localTestDataFolder = Directory.current.path + '/test_data';

  TestContext(Configuration configuration) {
    _wordsApi = new WordsApi(configuration);
  }

  WordsApi getApi() {
     return _wordsApi;
  }

  void uploadFile(String localPath, String remotePath) async {
    final content = await this.loadBinaryFile(localPath);
    final request = new UploadFileRequest(content, remotePath);
    final result = await this.getApi().uploadFile(request);
    assert(result.errors.length == 0);
    assert(result.uploaded.length == 1);
  }

  String createRandomGuid() {
    return Uuid().v4();
  }

  Future<ByteData> loadBinaryFile(String path) async {
    if (!path.startsWith('/')) {
      path = '/' + path;
    }
    final file = new File(this.localTestDataFolder + path);
    final bytes = await file.readAsBytes();
    return ByteData.view(bytes.buffer);
  }

  Future<String> loadTextFile(String path) async {
    if (!path.startsWith('/')) {
      path = '/' + path;
    }
    final file = new File(this.localTestDataFolder + path);
    return await file.readAsString();
  }
}
