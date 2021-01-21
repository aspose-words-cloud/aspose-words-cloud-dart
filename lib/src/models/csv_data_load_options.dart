/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="csv_data_load_options.dart">
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

/// Represents options for parsing CSV data.
class CsvDataLoadOptions implements ModelBase {
  /// Gets or sets the character that is used to comment lines of CSV data.
  String commentChar;

  /// Gets or sets the character to be used as a column delimiter.
  String delimiter;

  /// Gets or sets a value indicating whether the first record of CSV data contains column names.
  bool hasHeaders;

  /// Gets or sets the character that is used to quote field values.
  String quoteChar;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CsvDataLoadOptions data model.');
    }

    if (json.containsKey('CommentChar')) {
      commentChar = json['CommentChar'] as String;
    } else {
      commentChar = null;
    }

    if (json.containsKey('Delimiter')) {
      delimiter = json['Delimiter'] as String;
    } else {
      delimiter = null;
    }

    if (json.containsKey('HasHeaders')) {
      hasHeaders = json['HasHeaders'] as bool;
    } else {
      hasHeaders = null;
    }

    if (json.containsKey('QuoteChar')) {
      quoteChar = json['QuoteChar'] as String;
    } else {
      quoteChar = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (commentChar != null) {
      _result['CommentChar'] = commentChar;
    }

    if (delimiter != null) {
      _result['Delimiter'] = delimiter;
    }

    if (hasHeaders != null) {
      _result['HasHeaders'] = hasHeaders;
    }

    if (quoteChar != null) {
      _result['QuoteChar'] = quoteChar;
    }
    return _result;
  }
}


