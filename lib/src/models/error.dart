/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="error.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

/// Error.
class Error implements ModelBase {
  /// Code.
  String code;

  /// Description.
  String description;

  /// Inner Error.
  ErrorDetails innerError;

  /// Message.
  String message;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Error data model.');
    }

    if (json.containsKey('Code')) {
      code = json['Code'] as String;
    } else {
      code = null;
    }

    if (json.containsKey('Description')) {
      description = json['Description'] as String;
    } else {
      description = null;
    }

    if (json.containsKey('InnerError')) {
      innerError = ErrorDetails();
      innerError.deserialize(json['InnerError'] as Map<String, dynamic>);
    } else {
      innerError = null;
    }

    if (json.containsKey('Message')) {
      message = json['Message'] as String;
    } else {
      message = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (code != null) {
      _result['Code'] = code;
    }

    if (description != null) {
      _result['Description'] = description;
    }

    if (innerError != null) {
      _result['InnerError'] = innerError.serialize();
    }

    if (message != null) {
      _result['Message'] = message;
    }
    return _result;
  }
}


