/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_entry.dart">
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

import '../../aspose_words_cloud.dart';

/// Represents a document which will be appended to the original resource document.
class DocumentEntry extends BaseEntry {
  /// Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
  String _encryptedPassword;

  String get encryptedPassword => _encryptedPassword;
  set encryptedPassword(String val) => _encryptedPassword = val;


  /// Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
  String _importFormatMode;

  String get importFormatMode => _importFormatMode;
  set importFormatMode(String val) => _importFormatMode = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentEntry data model.');
    }

    super.deserialize(json);
    if (json.containsKey('FileReference')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      fileReference = null;
    }

    if (json.containsKey('EncryptedPassword')) {
      encryptedPassword = json['EncryptedPassword'] as String;
    } else {
      encryptedPassword = null;
    }

    if (json.containsKey('ImportFormatMode')) {
      importFormatMode = json['ImportFormatMode'] as String;
    } else {
      importFormatMode = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (encryptedPassword != null) {
      _result['EncryptedPassword'] = encryptedPassword;
    }

    if (importFormatMode != null) {
      _result['ImportFormatMode'] = importFormatMode;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
  }
}


