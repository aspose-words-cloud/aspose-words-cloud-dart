/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_options_data.dart">
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

/// base container class for save options data.
class SaveOptionsData implements ModelBase {
  /// Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false..
  bool allowEmbeddingPostScriptFonts;

  /// Gets or sets the value determining how 3D effects are rendered.
  SaveOptionsData_Dml3DEffectsRenderingModeEnum dml3DEffectsRenderingMode;

  /// Gets or sets the value determining how DrawingML effects are rendered.
  /// { Simplified | None | Fine }.
  String dmlEffectsRenderingMode;

  /// Gets or sets the option that controls how DrawingML shapes are rendered.
  String dmlRenderingMode;

  /// Gets or sets the name of destination file.
  String fileName;

  /// Gets or sets the format of save.
  String saveFormat;

  /// Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
  bool updateFields;

  /// Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
  bool updateLastPrintedProperty;

  /// Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
  bool updateLastSavedTimeProperty;

  /// Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
  bool updateSdtContent;

  /// Gets or sets a value indicating whether to zip output or not.
  /// The default value is false.
  bool zipOutput;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SaveOptionsData data model.');
    }

    if (json.containsKey('AllowEmbeddingPostScriptFonts')) {
      allowEmbeddingPostScriptFonts = json['AllowEmbeddingPostScriptFonts'] as bool;
    } else {
      allowEmbeddingPostScriptFonts = null;
    }

    if (json.containsKey('Dml3DEffectsRenderingMode')) {
      switch (json['Dml3DEffectsRenderingMode'] as String) {
        case 'Basic': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic; break;
        case 'Advanced': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced; break;
        default: dml3DEffectsRenderingMode = null; break;
      }
    } else {
      dml3DEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlEffectsRenderingMode')) {
      dmlEffectsRenderingMode = json['DmlEffectsRenderingMode'] as String;
    } else {
      dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      dmlRenderingMode = json['DmlRenderingMode'] as String;
    } else {
      dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('SaveFormat')) {
      saveFormat = json['SaveFormat'] as String;
    } else {
      saveFormat = null;
    }

    if (json.containsKey('UpdateFields')) {
      updateFields = json['UpdateFields'] as bool;
    } else {
      updateFields = null;
    }

    if (json.containsKey('UpdateLastPrintedProperty')) {
      updateLastPrintedProperty = json['UpdateLastPrintedProperty'] as bool;
    } else {
      updateLastPrintedProperty = null;
    }

    if (json.containsKey('UpdateLastSavedTimeProperty')) {
      updateLastSavedTimeProperty = json['UpdateLastSavedTimeProperty'] as bool;
    } else {
      updateLastSavedTimeProperty = null;
    }

    if (json.containsKey('UpdateSdtContent')) {
      updateSdtContent = json['UpdateSdtContent'] as bool;
    } else {
      updateSdtContent = null;
    }

    if (json.containsKey('ZipOutput')) {
      zipOutput = json['ZipOutput'] as bool;
    } else {
      zipOutput = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (allowEmbeddingPostScriptFonts != null) {
      _result['AllowEmbeddingPostScriptFonts'] = allowEmbeddingPostScriptFonts;
    }

    if (dml3DEffectsRenderingMode != null) {
      switch (dml3DEffectsRenderingMode) {
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic: _result['Dml3DEffectsRenderingMode'] = 'Basic'; break;
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced: _result['Dml3DEffectsRenderingMode'] = 'Advanced'; break;
        default: break;
      }
    }

    if (dmlEffectsRenderingMode != null) {
      _result['DmlEffectsRenderingMode'] = dmlEffectsRenderingMode;
    }

    if (dmlRenderingMode != null) {
      _result['DmlRenderingMode'] = dmlRenderingMode;
    }

    if (fileName != null) {
      _result['FileName'] = fileName;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }

    if (updateFields != null) {
      _result['UpdateFields'] = updateFields;
    }

    if (updateLastPrintedProperty != null) {
      _result['UpdateLastPrintedProperty'] = updateLastPrintedProperty;
    }

    if (updateLastSavedTimeProperty != null) {
      _result['UpdateLastSavedTimeProperty'] = updateLastSavedTimeProperty;
    }

    if (updateSdtContent != null) {
      _result['UpdateSdtContent'] = updateSdtContent;
    }

    if (zipOutput != null) {
      _result['ZipOutput'] = zipOutput;
    }
    return _result;
  }
}

/// Gets or sets the value determining how 3D effects are rendered.
enum SaveOptionsData_Dml3DEffectsRenderingModeEnum
{ 
  basic,
  advanced
}

