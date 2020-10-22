/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="replace_text_parameters.dart">
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

/// Class for document replace text request building.
class ReplaceTextParameters implements ModelBase {
  /// Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
  bool isMatchCase;

  /// Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
  bool isMatchWholeWord;

  /// Gets or sets a value indicating whether flag, means that OldValue contains regex expression.
  bool isOldValueRegex;

  /// Gets or sets new text value to replace by.
  String newValue;

  /// Gets or sets old text value (or regex pattern IsOldValueRegex) to replace.
  String oldValue;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('IsMatchCase')) {
      this.isMatchCase = json['IsMatchCase'];
    } else {
      this.isMatchCase = null;
    }

    if (json.containsKey('IsMatchWholeWord')) {
      this.isMatchWholeWord = json['IsMatchWholeWord'];
    } else {
      this.isMatchWholeWord = null;
    }

    if (json.containsKey('IsOldValueRegex')) {
      this.isOldValueRegex = json['IsOldValueRegex'];
    } else {
      this.isOldValueRegex = null;
    }

    if (json.containsKey('NewValue')) {
      this.newValue = json['NewValue'];
    } else {
      this.newValue = null;
    }

    if (json.containsKey('OldValue')) {
      this.oldValue = json['OldValue'];
    } else {
      this.oldValue = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.isMatchCase != null) {
      _result['IsMatchCase'] = this.isMatchCase;
    }

    if (this.isMatchWholeWord != null) {
      _result['IsMatchWholeWord'] = this.isMatchWholeWord;
    }

    if (this.isOldValueRegex != null) {
      _result['IsOldValueRegex'] = this.isOldValueRegex;
    }

    if (this.newValue != null) {
      _result['NewValue'] = this.newValue;
    }

    if (this.oldValue != null) {
      _result['OldValue'] = this.oldValue;
    }
    return _result;
  }
}


