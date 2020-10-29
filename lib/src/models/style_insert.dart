/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="style_insert.dart">
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

/// Represents a single document style to insert.
class StyleInsert implements ModelBase {
  /// Gets or sets the case sensitive name of the style to create.
  String styleName;

  /// Gets or sets the StyleType value that specifies the type of the style to create.
  StyleInsert_StyleTypeEnum styleType;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('StyleName')) {
      this.styleName = json['StyleName'];
    } else {
      this.styleName = null;
    }

    if (json.containsKey('StyleType')) {
      switch (json['StyleType']) {
        case 'Paragraph': this.styleType = StyleInsert_StyleTypeEnum.paragraph; break;
        case 'Character': this.styleType = StyleInsert_StyleTypeEnum.character; break;
        case 'Table': this.styleType = StyleInsert_StyleTypeEnum.table; break;
        case 'List': this.styleType = StyleInsert_StyleTypeEnum.list; break;
        default: this.styleType = null; break;
      }
    } else {
      this.styleType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.styleName != null) {
      _result['StyleName'] = this.styleName;
    }

    if (this.styleType != null) {
      switch (this.styleType) {
        case StyleInsert_StyleTypeEnum.paragraph: _result['StyleType'] = 'Paragraph'; break;
        case StyleInsert_StyleTypeEnum.character: _result['StyleType'] = 'Character'; break;
        case StyleInsert_StyleTypeEnum.table: _result['StyleType'] = 'Table'; break;
        case StyleInsert_StyleTypeEnum.list: _result['StyleType'] = 'List'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the StyleType value that specifies the type of the style to create.
enum StyleInsert_StyleTypeEnum
{ 
  paragraph,
  character,
  table,
  list
}

