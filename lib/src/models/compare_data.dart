/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_data.dart">
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

/// Container class for compare documents.
class CompareData implements ModelBase {
  /// Gets or sets the initials of the author to use for revisions.
  String author;

  /// Gets or sets the compare options.
  CompareOptions compareOptions;

  /// Gets or sets the path to document to compare at the server.
  String comparingWithDocument;

  /// Gets or sets the date and time to use for revisions.
  DateTime dateTime;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CompareData data model.');
    }

    if (json.containsKey('Author')) {
      author = json['Author'] as String;
    } else {
      author = null;
    }

    if (json.containsKey('CompareOptions')) {
      compareOptions = CompareOptions();
      compareOptions.deserialize(json['CompareOptions'] as Map<String, dynamic>);
    } else {
      compareOptions = null;
    }

    if (json.containsKey('ComparingWithDocument')) {
      comparingWithDocument = json['ComparingWithDocument'] as String;
    } else {
      comparingWithDocument = null;
    }

    if (json.containsKey('DateTime')) {
      dateTime = DateTime.parse(json['DateTime'] as String);
    } else {
      dateTime = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (author != null) {
      _result['Author'] = author;
    }

    if (compareOptions != null) {
      _result['CompareOptions'] = compareOptions.serialize();
    }

    if (comparingWithDocument != null) {
      _result['ComparingWithDocument'] = comparingWithDocument;
    }

    if (dateTime != null) {
      _result['DateTime'] = dateTime.toIso8601String();
    }
    return _result;
  }
}


