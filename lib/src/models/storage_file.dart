/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="storage_file.dart">
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

library aspose_words_cloud;

import '../../aspose_words_cloud.dart';

/// File or folder information.
class StorageFile implements ModelBase {
  /// True if it is a folder.
  bool isFolder;

  /// File or folder last modified DateTime.
  DateTime modifiedDate;

  /// File or folder name.
  String name;

  /// File or folder path.
  String path;

  /// File or folder size.
  int size;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StorageFile data model.');
    }

    if (json.containsKey('IsFolder')) {
      isFolder = json['IsFolder'] as bool;
    } else {
      isFolder = null;
    }

    if (json.containsKey('ModifiedDate')) {
      modifiedDate = DateTime.parse(json['ModifiedDate'] as String);
    } else {
      modifiedDate = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Path')) {
      path = json['Path'] as String;
    } else {
      path = null;
    }

    if (json.containsKey('Size')) {
      size = json['Size'] as int;
    } else {
      size = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (isFolder != null) {
      _result['IsFolder'] = isFolder;
    }

    if (modifiedDate != null) {
      _result['ModifiedDate'] = modifiedDate.toIso8601String();
    }

    if (name != null) {
      _result['Name'] = name;
    }

    if (path != null) {
      _result['Path'] = path;
    }

    if (size != null) {
      _result['Size'] = size;
    }
    return _result;
  }
}


