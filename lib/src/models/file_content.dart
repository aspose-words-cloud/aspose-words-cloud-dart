/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="file_content.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

class FileContent implements ModelBase {
  String _filename;
  String _id;
  ByteData _content;

  /// Gets the file name.
  String get filename => _filename;

  /// Gets the file id in multipart.
  String get id => _id;

  /// Gets the file content
  ByteData get content => _content;

  FileContent(String filename, ByteData content)
    : _filename = filename, _content = content, _id = Uuid().v4();

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FileContent data model.');
    }

    if (json.containsKey('Filename')) {
      _filename = json['Filename'] as String;
    } else {
      _filename = null;
    }

    if (json.containsKey('Id')) {
      _id = json['Id'] as String;
    } else {
      _id = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (_filename != null) {
      _result['Filename'] = _filename;
    }

    if (_id != null) {
      _result['Id'] = _id;
    }

    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    resultFilesContent.add(this);
  }
}