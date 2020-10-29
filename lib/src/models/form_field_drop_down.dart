/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_drop_down.dart">
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

/// FormField dropdownlist element.
class FormFieldDropDown extends FormField {
  /// Gets or sets provides access to the items of a dropdown form field.
  List<String> dropDownItems;

  /// Gets or sets the index specifying the currently selected item in a dropdown form field.
  int dropDownSelectedIndex;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('DropDownItems')) {
      // Array processing
      this.dropDownItems = new List<String>();
      for(final _element in json['DropDownItems']) {
        this.dropDownItems.add(_element);
      }
    } else {
      this.dropDownItems = null;
    }

    if (json.containsKey('DropDownSelectedIndex')) {
      this.dropDownSelectedIndex = json['DropDownSelectedIndex'];
    } else {
      this.dropDownSelectedIndex = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.dropDownItems != null) {
      _result['DropDownItems'] = this.dropDownItems;
    }

    if (this.dropDownSelectedIndex != null) {
      _result['DropDownSelectedIndex'] = this.dropDownSelectedIndex;
    }
    return _result;
  }
}


