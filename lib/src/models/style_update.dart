/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="style_update.dart">
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

/// Represents a single document style properties to update.
class StyleUpdate implements ModelBase {
  /// Gets or sets /sets the name of the style this style is based on.
  String baseStyleName;

  /// Gets or sets a value indicating whether specifies whether this style is shown in the Quick Style gallery inside MS Word UI.
  bool isQuickStyle;

  /// Gets or sets the name of the style.
  String name;

  /// Gets or sets /sets the name of the style to be applied automatically to a new paragraph
  /// inserted after a paragraph formatted with the specified style.
  String nextParagraphStyleName;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StyleUpdate data model.');
    }

    if (json.containsKey('BaseStyleName')) {
      baseStyleName = json['BaseStyleName'] as String;
    } else {
      baseStyleName = null;
    }

    if (json.containsKey('IsQuickStyle')) {
      isQuickStyle = json['IsQuickStyle'] as bool;
    } else {
      isQuickStyle = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('NextParagraphStyleName')) {
      nextParagraphStyleName = json['NextParagraphStyleName'] as String;
    } else {
      nextParagraphStyleName = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (baseStyleName != null) {
      _result['BaseStyleName'] = baseStyleName;
    }

    if (isQuickStyle != null) {
      _result['IsQuickStyle'] = isQuickStyle;
    }

    if (name != null) {
      _result['Name'] = name;
    }

    if (nextParagraphStyleName != null) {
      _result['NextParagraphStyleName'] = nextParagraphStyleName;
    }
    return _result;
  }
}


