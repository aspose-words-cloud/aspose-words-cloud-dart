/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_options_data.dart">
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

/// base container class for save options data.
class SaveOptionsData implements ModelBase {
  /// Gets or sets a value determining how 3D effects are rendered.
  SaveOptionsData_Dml3DEffectsRenderingModeEnum dml3DEffectsRenderingMode;

  /// Gets or sets a value determining how DrawingML effects are rendered.
  /// { Simplified | None | Fine }.
  String dmlEffectsRenderingMode;

  /// Gets or sets a value determining how DrawingML shapes are rendered.
  /// { Fallback | DrawingML }.
  String dmlRenderingMode;

  /// Gets or sets name of destination file.
  String fileName;

  /// Gets or sets format of save.
  String saveFormat;

  /// Gets or sets a value determining if fields should be updated before saving the document to a fixed page format.
  /// Default value for this property is. true.
  bool updateFields;

  /// Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted
  /// property is updated before saving.
  bool updateLastPrintedProperty;

  /// Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
  bool updateLastSavedTimeProperty;

  /// Gets or sets value determining whether content of StructuredDocumentTag is updated before saving.
  bool updateSdtContent;

  /// Gets or sets controls zip output or not.
  /// Default value is false.
  bool zipOutput;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Dml3DEffectsRenderingMode')) {
      switch (json['Dml3DEffectsRenderingMode']) {
        case 'Basic': this.dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic; break;
        case 'Advanced': this.dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced; break;
        default: this.dml3DEffectsRenderingMode = null; break;
      }
    } else {
      this.dml3DEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlEffectsRenderingMode')) {
      this.dmlEffectsRenderingMode = json['DmlEffectsRenderingMode'];
    } else {
      this.dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      this.dmlRenderingMode = json['DmlRenderingMode'];
    } else {
      this.dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      this.fileName = json['FileName'];
    } else {
      this.fileName = null;
    }

    if (json.containsKey('SaveFormat')) {
      this.saveFormat = json['SaveFormat'];
    } else {
      this.saveFormat = null;
    }

    if (json.containsKey('UpdateFields')) {
      this.updateFields = json['UpdateFields'];
    } else {
      this.updateFields = null;
    }

    if (json.containsKey('UpdateLastPrintedProperty')) {
      this.updateLastPrintedProperty = json['UpdateLastPrintedProperty'];
    } else {
      this.updateLastPrintedProperty = null;
    }

    if (json.containsKey('UpdateLastSavedTimeProperty')) {
      this.updateLastSavedTimeProperty = json['UpdateLastSavedTimeProperty'];
    } else {
      this.updateLastSavedTimeProperty = null;
    }

    if (json.containsKey('UpdateSdtContent')) {
      this.updateSdtContent = json['UpdateSdtContent'];
    } else {
      this.updateSdtContent = null;
    }

    if (json.containsKey('ZipOutput')) {
      this.zipOutput = json['ZipOutput'];
    } else {
      this.zipOutput = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.dml3DEffectsRenderingMode != null) {
      switch (this.dml3DEffectsRenderingMode) {
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic: _result['Dml3DEffectsRenderingMode'] = 'Basic'; break;
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced: _result['Dml3DEffectsRenderingMode'] = 'Advanced'; break;
        default: break;
      }
    }

    if (this.dmlEffectsRenderingMode != null) {
      _result['DmlEffectsRenderingMode'] = this.dmlEffectsRenderingMode;
    }

    if (this.dmlRenderingMode != null) {
      _result['DmlRenderingMode'] = this.dmlRenderingMode;
    }

    if (this.fileName != null) {
      _result['FileName'] = this.fileName;
    }

    if (this.saveFormat != null) {
      _result['SaveFormat'] = this.saveFormat;
    }

    if (this.updateFields != null) {
      _result['UpdateFields'] = this.updateFields;
    }

    if (this.updateLastPrintedProperty != null) {
      _result['UpdateLastPrintedProperty'] = this.updateLastPrintedProperty;
    }

    if (this.updateLastSavedTimeProperty != null) {
      _result['UpdateLastSavedTimeProperty'] = this.updateLastSavedTimeProperty;
    }

    if (this.updateSdtContent != null) {
      _result['UpdateSdtContent'] = this.updateSdtContent;
    }

    if (this.zipOutput != null) {
      _result['ZipOutput'] = this.zipOutput;
    }
    return _result;
  }
}

/// Gets or sets a value determining how 3D effects are rendered.
enum SaveOptionsData_Dml3DEffectsRenderingModeEnum
{ 
  basic,
  advanced
}

