/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="base_entry.dart">
 *   Copyright (c) 2024 Aspose.Words for Cloud
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

/// Represents a base class for document which will be appended to the original resource document.
abstract class BaseEntry implements ModelBase {
  /// Gets or sets the file reference.
  FileReference? _fileReference;

  FileReference? get fileReference => _fileReference;
  set fileReference(FileReference? val) => _fileReference = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize BaseEntry data model.');
    }

    if (json.containsKey('FileReference')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      fileReference = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (fileReference != null) {
      _result['FileReference'] = fileReference!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    if (fileReference != null)
    {
        fileReference!.getFilesContent(resultFilesContent);
    }

  }

  @override
  void validate() {
    if (fileReference == null)
    {
        throw new ApiException(400, 'Property FileReference in BaseEntry is required.');
    }

    fileReference?.validate();

  }
}


