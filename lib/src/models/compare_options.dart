/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_options.dart">
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

/// Container class for compare documents options.
class CompareOptions implements ModelBase {
  /// Gets or sets a value indicating whether true indicates that documents comparison is case insensitive. By default comparison is case sensitive.
  bool ignoreCaseChanges;

  /// Gets or sets a value indicating whether specifies whether to compare differences in comments. By default comments are
  /// not ignored.
  bool ignoreComments;

  /// Gets or sets a value indicating whether specifies whether to compare differences in fields. By default fields are not
  /// ignored.
  bool ignoreFields;

  /// Gets or sets a value indicating whether specifies whether to compare differences in footnotes and endnotes. By default
  /// footnotes are not ignored.
  bool ignoreFootnotes;

  /// Gets or sets a value indicating whether true indicates that formatting is ignored. By default document formatting is
  /// not ignored.
  bool ignoreFormatting;

  /// Gets or sets a value indicating whether true indicates that headers and footers content is ignored. By default headers
  /// and footers are not ignored.
  bool ignoreHeadersAndFooters;

  /// Gets or sets a value indicating whether specifies whether to compare the differences in data contained in tables. By
  /// default tables are not ignored.
  bool ignoreTables;

  /// Gets or sets a value indicating whether specifies whether to compare differences in the data contained within text boxes.
  /// By default textboxes are not ignored.
  bool ignoreTextboxes;

  /// Gets or sets specifies which document shall be used as a target during comparison.
  CompareOptions_TargetEnum target;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CompareOptions data model.');
    }

    if (json.containsKey('IgnoreCaseChanges')) {
      ignoreCaseChanges = json['IgnoreCaseChanges'] as bool;
    } else {
      ignoreCaseChanges = null;
    }

    if (json.containsKey('IgnoreComments')) {
      ignoreComments = json['IgnoreComments'] as bool;
    } else {
      ignoreComments = null;
    }

    if (json.containsKey('IgnoreFields')) {
      ignoreFields = json['IgnoreFields'] as bool;
    } else {
      ignoreFields = null;
    }

    if (json.containsKey('IgnoreFootnotes')) {
      ignoreFootnotes = json['IgnoreFootnotes'] as bool;
    } else {
      ignoreFootnotes = null;
    }

    if (json.containsKey('IgnoreFormatting')) {
      ignoreFormatting = json['IgnoreFormatting'] as bool;
    } else {
      ignoreFormatting = null;
    }

    if (json.containsKey('IgnoreHeadersAndFooters')) {
      ignoreHeadersAndFooters = json['IgnoreHeadersAndFooters'] as bool;
    } else {
      ignoreHeadersAndFooters = null;
    }

    if (json.containsKey('IgnoreTables')) {
      ignoreTables = json['IgnoreTables'] as bool;
    } else {
      ignoreTables = null;
    }

    if (json.containsKey('IgnoreTextboxes')) {
      ignoreTextboxes = json['IgnoreTextboxes'] as bool;
    } else {
      ignoreTextboxes = null;
    }

    if (json.containsKey('Target')) {
      switch (json['Target'] as String) {
        case 'Current': target = CompareOptions_TargetEnum.current; break;
        case 'New': target = CompareOptions_TargetEnum.newValue; break;
        default: target = null; break;
      }
    } else {
      target = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (ignoreCaseChanges != null) {
      _result['IgnoreCaseChanges'] = ignoreCaseChanges;
    }

    if (ignoreComments != null) {
      _result['IgnoreComments'] = ignoreComments;
    }

    if (ignoreFields != null) {
      _result['IgnoreFields'] = ignoreFields;
    }

    if (ignoreFootnotes != null) {
      _result['IgnoreFootnotes'] = ignoreFootnotes;
    }

    if (ignoreFormatting != null) {
      _result['IgnoreFormatting'] = ignoreFormatting;
    }

    if (ignoreHeadersAndFooters != null) {
      _result['IgnoreHeadersAndFooters'] = ignoreHeadersAndFooters;
    }

    if (ignoreTables != null) {
      _result['IgnoreTables'] = ignoreTables;
    }

    if (ignoreTextboxes != null) {
      _result['IgnoreTextboxes'] = ignoreTextboxes;
    }

    if (target != null) {
      switch (target) {
        case CompareOptions_TargetEnum.current: _result['Target'] = 'Current'; break;
        case CompareOptions_TargetEnum.newValue: _result['Target'] = 'New'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specifies which document shall be used as a target during comparison.
enum CompareOptions_TargetEnum
{ 
  current,
  newValue
}

