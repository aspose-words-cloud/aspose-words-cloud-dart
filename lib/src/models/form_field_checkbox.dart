/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_checkbox.dart">
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

/// FormField checkbox element.
class FormFieldCheckbox extends FormField {
  /// Gets or sets the size of the checkbox in points. Has effect only when IsCheckBoxExactSize is true.
  double checkBoxSize;

  /// Gets or sets the checked status of the check box form field.
  bool checked;

  /// Gets or sets a value indicating whether the size of the textbox is automatic or specified explicitly.
  bool isCheckBoxExactSize;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FormFieldCheckbox data model.');
    }

    super.deserialize(json);
    if (json.containsKey('CheckBoxSize')) {
      checkBoxSize = json['CheckBoxSize'] as double;
    } else {
      checkBoxSize = null;
    }

    if (json.containsKey('Checked')) {
      checked = json['Checked'] as bool;
    } else {
      checked = null;
    }

    if (json.containsKey('IsCheckBoxExactSize')) {
      isCheckBoxExactSize = json['IsCheckBoxExactSize'] as bool;
    } else {
      isCheckBoxExactSize = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (checkBoxSize != null) {
      _result['CheckBoxSize'] = checkBoxSize;
    }

    if (checked != null) {
      _result['Checked'] = checked;
    }

    if (isCheckBoxExactSize != null) {
      _result['IsCheckBoxExactSize'] = isCheckBoxExactSize;
    }
    return _result;
  }
}


