/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="file_reference.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

library aspose_words_cloud;

import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import '../../aspose_words_cloud.dart';

class FileReference implements ModelBase {
  String? _source;
  String? _reference;
  ByteData? _content;

  /// Gets the file source.
  String? get source => _source;

  /// Gets the file reference.
  String? get reference => _reference;

  /// Gets the file content
  ByteData? get content => _content;

  FileReference.fromRemoteFile(String remoteFilePath)
    : _source = 'Storage', _content = null, _reference = remoteFilePath;

  FileReference.fromLocalFile(ByteData localFileContent)
    : _source = 'Request', _content = localFileContent, _reference = Uuid().v4();

  @override
  void deserialize(Map<String, dynamic>? json) {
    throw ApiException(400, 'Failed to deserialize FileReference data model.');
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (_source != null) {
      _result['Source'] = _source;
    }

    if (_reference != null) {
      _result['Reference'] = _reference;
    }

    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    resultFilesContent.add(this);
  }

  @override
  void validate() {
  }
}