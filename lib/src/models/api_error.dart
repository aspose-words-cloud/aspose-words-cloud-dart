/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="api_error.dart">
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

/// Api error.
class ApiError implements ModelBase {
  /// Gets or sets api error code.
  String code;

  /// Gets or sets server datetime.
  DateTime dateTime;

  /// Gets or sets error description.
  String description;

  /// Gets or sets inner error.
  ApiError innerError;

  /// Gets or sets error message.
  String message;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Code')) {
      this.code = json['Code'];
    } else {
      this.code = null;
    }

    if (json.containsKey('DateTime')) {
      this.dateTime = DateTime.parse(json['DateTime']);
    } else {
      this.dateTime = null;
    }

    if (json.containsKey('Description')) {
      this.description = json['Description'];
    } else {
      this.description = null;
    }

    if (json.containsKey('InnerError')) {
      this.innerError = new ApiError();
      this.innerError.deserialize(json['InnerError']);
    } else {
      this.innerError = null;
    }

    if (json.containsKey('Message')) {
      this.message = json['Message'];
    } else {
      this.message = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.code != null) {
      _result['Code'] = this.code;
    }

    if (this.dateTime != null) {
      _result['DateTime'] = this.dateTime.toIso8601String();
    }

    if (this.description != null) {
      _result['Description'] = this.description;
    }

    if (this.innerError != null) {
      _result['InnerError'] = this.innerError.serialize();
    }

    if (this.message != null) {
      _result['Message'] = this.message;
    }
    return _result;
  }
}


