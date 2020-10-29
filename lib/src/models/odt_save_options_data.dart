/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="odt_save_options_data.dart">
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

/// container class for odt/ott save options.
class OdtSaveOptionsData extends SaveOptionsData {
  /// Gets or sets specifies whether export should correspond to ODT specification 1.1 strictly.
  bool isStrictSchema11;

  /// Gets or sets allows to specify units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters.
  /// Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
  OdtSaveOptionsData_MeasureUnitEnum measureUnit;

  /// Gets or sets a password to encrypt document.
  String password;

  /// Gets or sets specifies whether or not use pretty formats output.
  bool prettyFormat;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('IsStrictSchema11')) {
      this.isStrictSchema11 = json['IsStrictSchema11'];
    } else {
      this.isStrictSchema11 = null;
    }

    if (json.containsKey('MeasureUnit')) {
      switch (json['MeasureUnit']) {
        case 'Centimeters': this.measureUnit = OdtSaveOptionsData_MeasureUnitEnum.centimeters; break;
        case 'Inches': this.measureUnit = OdtSaveOptionsData_MeasureUnitEnum.inches; break;
        default: this.measureUnit = null; break;
      }
    } else {
      this.measureUnit = null;
    }

    if (json.containsKey('Password')) {
      this.password = json['Password'];
    } else {
      this.password = null;
    }

    if (json.containsKey('PrettyFormat')) {
      this.prettyFormat = json['PrettyFormat'];
    } else {
      this.prettyFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.isStrictSchema11 != null) {
      _result['IsStrictSchema11'] = this.isStrictSchema11;
    }

    if (this.measureUnit != null) {
      switch (this.measureUnit) {
        case OdtSaveOptionsData_MeasureUnitEnum.centimeters: _result['MeasureUnit'] = 'Centimeters'; break;
        case OdtSaveOptionsData_MeasureUnitEnum.inches: _result['MeasureUnit'] = 'Inches'; break;
        default: break;
      }
    }

    if (this.password != null) {
      _result['Password'] = this.password;
    }

    if (this.prettyFormat != null) {
      _result['PrettyFormat'] = this.prettyFormat;
    }
    return _result;
  }
}

/// Gets or sets allows to specify units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters.
/// Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
enum OdtSaveOptionsData_MeasureUnitEnum
{ 
  centimeters,
  inches
}

