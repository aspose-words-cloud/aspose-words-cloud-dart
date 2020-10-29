/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="replace_range.dart">
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

/// Range element.
class ReplaceRange implements ModelBase {
  /// Gets or sets range's text.
  String text;

  /// Gets or sets range's text type.
  ReplaceRange_TextTypeEnum textType;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Text')) {
      text = json['Text'];
    } else {
      text = null;
    }

    if (json.containsKey('TextType')) {
      switch (json['TextType']) {
        case 'Text': textType = ReplaceRange_TextTypeEnum.text; break;
        case 'Html': textType = ReplaceRange_TextTypeEnum.html; break;
        default: textType = null; break;
      }
    } else {
      textType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (text != null) {
      _result['Text'] = text;
    }

    if (textType != null) {
      switch (textType) {
        case ReplaceRange_TextTypeEnum.text: _result['TextType'] = 'Text'; break;
        case ReplaceRange_TextTypeEnum.html: _result['TextType'] = 'Html'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets range's text type.
enum ReplaceRange_TextTypeEnum
{ 
  text,
  html
}

