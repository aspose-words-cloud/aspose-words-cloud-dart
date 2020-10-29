/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="field_base.dart">
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

/// Field.
class FieldBase implements ModelBase {
  /// Gets or sets field code.
  String fieldCode;

  /// Gets or sets LCID of the field.
  String localeId;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('FieldCode')) {
      this.fieldCode = json['FieldCode'];
    } else {
      this.fieldCode = null;
    }

    if (json.containsKey('LocaleId')) {
      this.localeId = json['LocaleId'];
    } else {
      this.localeId = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.fieldCode != null) {
      _result['FieldCode'] = this.fieldCode;
    }

    if (this.localeId != null) {
      _result['LocaleId'] = this.localeId;
    }
    return _result;
  }
}


