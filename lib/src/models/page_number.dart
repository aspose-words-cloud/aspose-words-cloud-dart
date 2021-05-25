/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_number.dart">
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

/// Class is used for insert page number request building.
class PageNumber implements ModelBase {
  /// Gets or sets text alignment, possible values are left, right, center or justify.
  String alignment;

  /// Gets or sets the page number format, e.g. "{PAGE} of {NUMPAGES}".
  String format;

  /// Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
  bool isTop;

  /// Gets or sets a value indicating whether if true the page number is added on first page too.
  bool setPageNumberOnFirstPage;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PageNumber data model.');
    }

    if (json.containsKey('Alignment')) {
      alignment = json['Alignment'] as String;
    } else {
      alignment = null;
    }

    if (json.containsKey('Format')) {
      format = json['Format'] as String;
    } else {
      format = null;
    }

    if (json.containsKey('IsTop')) {
      isTop = json['IsTop'] as bool;
    } else {
      isTop = null;
    }

    if (json.containsKey('SetPageNumberOnFirstPage')) {
      setPageNumberOnFirstPage = json['SetPageNumberOnFirstPage'] as bool;
    } else {
      setPageNumberOnFirstPage = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (alignment != null) {
      _result['Alignment'] = alignment;
    }

    if (format != null) {
      _result['Format'] = format;
    }

    if (isTop != null) {
      _result['IsTop'] = isTop;
    }

    if (setPageNumberOnFirstPage != null) {
      _result['SetPageNumberOnFirstPage'] = setPageNumberOnFirstPage;
    }
    return _result;
  }
}


