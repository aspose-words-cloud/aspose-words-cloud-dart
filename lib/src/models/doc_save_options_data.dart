/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="doc_save_options_data.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// Container class for doc/dot save options.
class DocSaveOptionsData extends SaveOptionsData {
  /// Gets or sets a value indicating when False, that small metafiles are not compressed for performance reason.
  /// The default value is true, all metafiles are compressed regardless of its size.
  bool _alwaysCompressMetafiles;

  bool get alwaysCompressMetafiles => _alwaysCompressMetafiles;
  set alwaysCompressMetafiles(bool val) => _alwaysCompressMetafiles = val;


  /// Gets or sets the password.
  String _password;

  String get password => _password;
  set password(String val) => _password = val;


  /// Gets the format of save.
  String _saveFormat = 'doc';

  @override
  String get saveFormat => _saveFormat;


  /// Gets or sets a value indicating when False, that PictureBullet data is not saved to the output document.
  /// The default value is true.
  bool _savePictureBullet;

  bool get savePictureBullet => _savePictureBullet;
  set savePictureBullet(bool val) => _savePictureBullet = val;


  /// Gets or sets a value indicating whether to save RoutingSlip data to output document.
  bool _saveRoutingSlip;

  bool get saveRoutingSlip => _saveRoutingSlip;
  set saveRoutingSlip(bool val) => _saveRoutingSlip = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AllowEmbeddingPostScriptFonts')) {
      allowEmbeddingPostScriptFonts = json['AllowEmbeddingPostScriptFonts'] as bool;
    } else {
      allowEmbeddingPostScriptFonts = null;
    }

    if (json.containsKey('CustomTimeZoneInfoData')) {
      customTimeZoneInfoData = TimeZoneInfoData();
      customTimeZoneInfoData.deserialize(json['CustomTimeZoneInfoData'] as Map<String, dynamic>);
    } else {
      customTimeZoneInfoData = null;
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
      switch (json['DmlEffectsRenderingMode'] as String) {
        case 'Simplified': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.simplified; break;
        case 'None': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.none; break;
        case 'Fine': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.fine; break;
        default: dmlEffectsRenderingMode = null; break;
      }
    } else {
      dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      switch (json['DmlRenderingMode'] as String) {
        case 'Fallback': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.fallback; break;
        case 'DrawingML': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.drawingML; break;
        default: dmlRenderingMode = null; break;
      }
    } else {
      dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('FlatOpcXmlMappingOnly')) {
      flatOpcXmlMappingOnly = json['FlatOpcXmlMappingOnly'] as bool;
    } else {
      flatOpcXmlMappingOnly = null;
    }

    if (json.containsKey('ImlRenderingMode')) {
      switch (json['ImlRenderingMode'] as String) {
        case 'Fallback': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.fallback; break;
        case 'InkML': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.inkML; break;
        default: imlRenderingMode = null; break;
      }
    } else {
      imlRenderingMode = null;
    }

    if (json.containsKey('UpdateCreatedTimeProperty')) {
      updateCreatedTimeProperty = json['UpdateCreatedTimeProperty'] as bool;
    } else {
      updateCreatedTimeProperty = null;
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

    if (json.containsKey('AlwaysCompressMetafiles')) {
      alwaysCompressMetafiles = json['AlwaysCompressMetafiles'] as bool;
    } else {
      alwaysCompressMetafiles = null;
    }

    if (json.containsKey('Password')) {
      password = json['Password'] as String;
    } else {
      password = null;
    }

    if (json.containsKey('SavePictureBullet')) {
      savePictureBullet = json['SavePictureBullet'] as bool;
    } else {
      savePictureBullet = null;
    }

    if (json.containsKey('SaveRoutingSlip')) {
      saveRoutingSlip = json['SaveRoutingSlip'] as bool;
    } else {
      saveRoutingSlip = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (alwaysCompressMetafiles != null) {
      _result['AlwaysCompressMetafiles'] = alwaysCompressMetafiles;
    }

    if (password != null) {
      _result['Password'] = password;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }

    if (savePictureBullet != null) {
      _result['SavePictureBullet'] = savePictureBullet;
    }

    if (saveRoutingSlip != null) {
      _result['SaveRoutingSlip'] = saveRoutingSlip;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
  }
}


