/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="xaml_fixed_save_options_data.dart">
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

/// Container class for xaml fixed save options.
class XamlFixedSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the physical folder where resources (images and fonts) are saved when exporting a document to fixed page Xaml format.
  /// The default value is null.
  String _resourcesFolder;

  String get resourcesFolder => _resourcesFolder;
  set resourcesFolder(String val) => _resourcesFolder = val;


  /// Gets or sets the name of the folder used to construct image URIs written into an fixed page Xaml document. The default value is null.
  String _resourcesFolderAlias;

  String get resourcesFolderAlias => _resourcesFolderAlias;
  set resourcesFolderAlias(String val) => _resourcesFolderAlias = val;


  /// Gets the format of save.
  String _saveFormat = 'xamlfixed';

  @override
  String get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize XamlFixedSaveOptionsData data model.');
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

    if (json.containsKey('ColorMode')) {
      switch (json['ColorMode'] as String) {
        case 'Normal': colorMode = FixedPageSaveOptionsData_ColorModeEnum.normal; break;
        case 'Grayscale': colorMode = FixedPageSaveOptionsData_ColorModeEnum.grayscale; break;
        default: colorMode = null; break;
      }
    } else {
      colorMode = null;
    }

    if (json.containsKey('JpegQuality')) {
      jpegQuality = json['JpegQuality'] as int;
    } else {
      jpegQuality = null;
    }

    if (json.containsKey('MetafileRenderingOptions')) {
      metafileRenderingOptions = MetafileRenderingOptionsData();
      metafileRenderingOptions.deserialize(json['MetafileRenderingOptions'] as Map<String, dynamic>);
    } else {
      metafileRenderingOptions = null;
    }

    if (json.containsKey('NumeralFormat')) {
      switch (json['NumeralFormat'] as String) {
        case 'European': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.european; break;
        case 'ArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.arabicIndic; break;
        case 'EasternArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.easternArabicIndic; break;
        case 'Context': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.context; break;
        case 'System': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.system; break;
        default: numeralFormat = null; break;
      }
    } else {
      numeralFormat = null;
    }

    if (json.containsKey('OptimizeOutput')) {
      optimizeOutput = json['OptimizeOutput'] as bool;
    } else {
      optimizeOutput = null;
    }

    if (json.containsKey('PageCount')) {
      pageCount = json['PageCount'] as int;
    } else {
      pageCount = null;
    }

    if (json.containsKey('PageIndex')) {
      pageIndex = json['PageIndex'] as int;
    } else {
      pageIndex = null;
    }

    if (json.containsKey('ResourcesFolder')) {
      resourcesFolder = json['ResourcesFolder'] as String;
    } else {
      resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      resourcesFolderAlias = json['ResourcesFolderAlias'] as String;
    } else {
      resourcesFolderAlias = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (resourcesFolder != null) {
      _result['ResourcesFolder'] = resourcesFolder;
    }

    if (resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = resourcesFolderAlias;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
  }
}


