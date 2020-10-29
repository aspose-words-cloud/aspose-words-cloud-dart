/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_text_input.dart">
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

/// FormField text input element.
class FormFieldTextInput extends FormField {
  /// Gets or sets maximum length for the text field. Zero when the length is not limited.
  int maxLength;

  /// Gets or sets the default string or a calculation expression of a text form field.
  String textInputDefault;

  /// Gets or sets returns or sets the text formatting for a text form field.
  String textInputFormat;

  /// Gets or sets the type of a text form field.
  FormFieldTextInput_TextInputTypeEnum textInputType;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('MaxLength')) {
      this.maxLength = json['MaxLength'];
    } else {
      this.maxLength = null;
    }

    if (json.containsKey('TextInputDefault')) {
      this.textInputDefault = json['TextInputDefault'];
    } else {
      this.textInputDefault = null;
    }

    if (json.containsKey('TextInputFormat')) {
      this.textInputFormat = json['TextInputFormat'];
    } else {
      this.textInputFormat = null;
    }

    if (json.containsKey('TextInputType')) {
      switch (json['TextInputType']) {
        case 'Regular': this.textInputType = FormFieldTextInput_TextInputTypeEnum.regular; break;
        case 'Number': this.textInputType = FormFieldTextInput_TextInputTypeEnum.number; break;
        case 'Date': this.textInputType = FormFieldTextInput_TextInputTypeEnum.date; break;
        case 'CurrentDate': this.textInputType = FormFieldTextInput_TextInputTypeEnum.currentDate; break;
        case 'CurrentTime': this.textInputType = FormFieldTextInput_TextInputTypeEnum.currentTime; break;
        case 'Calculated': this.textInputType = FormFieldTextInput_TextInputTypeEnum.calculated; break;
        default: this.textInputType = null; break;
      }
    } else {
      this.textInputType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.maxLength != null) {
      _result['MaxLength'] = this.maxLength;
    }

    if (this.textInputDefault != null) {
      _result['TextInputDefault'] = this.textInputDefault;
    }

    if (this.textInputFormat != null) {
      _result['TextInputFormat'] = this.textInputFormat;
    }

    if (this.textInputType != null) {
      switch (this.textInputType) {
        case FormFieldTextInput_TextInputTypeEnum.regular: _result['TextInputType'] = 'Regular'; break;
        case FormFieldTextInput_TextInputTypeEnum.number: _result['TextInputType'] = 'Number'; break;
        case FormFieldTextInput_TextInputTypeEnum.date: _result['TextInputType'] = 'Date'; break;
        case FormFieldTextInput_TextInputTypeEnum.currentDate: _result['TextInputType'] = 'CurrentDate'; break;
        case FormFieldTextInput_TextInputTypeEnum.currentTime: _result['TextInputType'] = 'CurrentTime'; break;
        case FormFieldTextInput_TextInputTypeEnum.calculated: _result['TextInputType'] = 'Calculated'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the type of a text form field.
enum FormFieldTextInput_TextInputTypeEnum
{ 
  regular,
  number,
  date,
  currentDate,
  currentTime,
  calculated
}

