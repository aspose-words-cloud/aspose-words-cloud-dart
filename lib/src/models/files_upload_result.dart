/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="files_upload_result.dart">
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

/// File upload result.
class FilesUploadResult implements ModelBase {
  /// List of errors.
  List<Error> errors;

  /// List of uploaded file names.
  List<String> uploaded;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Errors')) {
      // Array processing
      this.errors = new List<Error>();
      for(final _element in json['Errors']) {
        var _elementValue = new Error();
        _elementValue.deserialize(_element);
        this.errors.add(_elementValue);
      }
    } else {
      this.errors = null;
    }

    if (json.containsKey('Uploaded')) {
      // Array processing
      this.uploaded = new List<String>();
      for(final _element in json['Uploaded']) {
        this.uploaded.add(_element);
      }
    } else {
      this.uploaded = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.errors != null) {
      _result['Errors'] = this.errors.map((_element) => _element.serialize()).toList();
    }

    if (this.uploaded != null) {
      _result['Uploaded'] = this.uploaded;
    }
    return _result;
  }
}


