/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_data.dart">
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

/// Container class for compare documents.
class CompareData implements ModelBase {
  /// Gets or sets initials of the author to use for revisions.
  String author;

  /// Gets or sets the compare options.
  CompareOptions compareOptions;

  /// Gets or sets path to document to compare at the server.
  String comparingWithDocument;

  /// Gets or sets the date and time to use for revisions.
  DateTime dateTime;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Author')) {
      this.author = json['Author'];
    } else {
      this.author = null;
    }

    if (json.containsKey('CompareOptions')) {
      this.compareOptions = new CompareOptions();
      this.compareOptions.deserialize(json['CompareOptions']);
    } else {
      this.compareOptions = null;
    }

    if (json.containsKey('ComparingWithDocument')) {
      this.comparingWithDocument = json['ComparingWithDocument'];
    } else {
      this.comparingWithDocument = null;
    }

    if (json.containsKey('DateTime')) {
      this.dateTime = DateTime.parse(json['DateTime']);
    } else {
      this.dateTime = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.author != null) {
      _result['Author'] = this.author;
    }

    if (this.compareOptions != null) {
      _result['CompareOptions'] = this.compareOptions.serialize();
    }

    if (this.comparingWithDocument != null) {
      _result['ComparingWithDocument'] = this.comparingWithDocument;
    }

    if (this.dateTime != null) {
      _result['DateTime'] = this.dateTime.toIso8601String();
    }
    return _result;
  }
}


