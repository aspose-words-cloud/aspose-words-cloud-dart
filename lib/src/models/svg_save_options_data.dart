/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="svg_save_options_data.dart">
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

/// Container class for svg save options.
class SvgSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets a value indicating whether images should be embedded into SVG document as base64.
  bool _exportEmbeddedImages;

  bool get exportEmbeddedImages => _exportEmbeddedImages;
  set exportEmbeddedImages(bool val) => _exportEmbeddedImages = val;


  /// Gets or sets a value indicating whether the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
  bool _fitToViewPort;

  bool get fitToViewPort => _fitToViewPort;
  set fitToViewPort(bool val) => _fitToViewPort = val;


  /// Gets or sets the physical folder where resources (images) are saved when exporting.
  String _resourcesFolder;

  String get resourcesFolder => _resourcesFolder;
  set resourcesFolder(String val) => _resourcesFolder = val;


  /// Gets or sets the name of the folder used to construct image URIs.
  String _resourcesFolderAlias;

  String get resourcesFolderAlias => _resourcesFolderAlias;
  set resourcesFolderAlias(String val) => _resourcesFolderAlias = val;


  /// Gets the format of save.
  String _saveFormat = 'svg';

  @override
  String get saveFormat => _saveFormat;


  /// Gets or sets a value indicating whether to show or hide page stepper.
  bool _showPageBorder;

  bool get showPageBorder => _showPageBorder;
  set showPageBorder(bool val) => _showPageBorder = val;


  /// Gets or sets the option that controls how text should be rendered.
  String _textOutputMode;

  String get textOutputMode => _textOutputMode;
  set textOutputMode(String val) => _textOutputMode = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SvgSaveOptionsData data model.');
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

    if (json.containsKey('FlatOpcXmlMappingOnly')) {
      flatOpcXmlMappingOnly = json['FlatOpcXmlMappingOnly'] as bool;
    } else {
      flatOpcXmlMappingOnly = null;
    }

    if (json.containsKey('ImlRenderingMode')) {
      imlRenderingMode = json['ImlRenderingMode'] as String;
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
      colorMode = json['ColorMode'] as String;
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
      numeralFormat = json['NumeralFormat'] as String;
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

    if (json.containsKey('ExportEmbeddedImages')) {
      exportEmbeddedImages = json['ExportEmbeddedImages'] as bool;
    } else {
      exportEmbeddedImages = null;
    }

    if (json.containsKey('FitToViewPort')) {
      fitToViewPort = json['FitToViewPort'] as bool;
    } else {
      fitToViewPort = null;
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

    if (json.containsKey('ShowPageBorder')) {
      showPageBorder = json['ShowPageBorder'] as bool;
    } else {
      showPageBorder = null;
    }

    if (json.containsKey('TextOutputMode')) {
      textOutputMode = json['TextOutputMode'] as String;
    } else {
      textOutputMode = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (exportEmbeddedImages != null) {
      _result['ExportEmbeddedImages'] = exportEmbeddedImages;
    }

    if (fitToViewPort != null) {
      _result['FitToViewPort'] = fitToViewPort;
    }

    if (resourcesFolder != null) {
      _result['ResourcesFolder'] = resourcesFolder;
    }

    if (resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = resourcesFolderAlias;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }

    if (showPageBorder != null) {
      _result['ShowPageBorder'] = showPageBorder;
    }

    if (textOutputMode != null) {
      _result['TextOutputMode'] = textOutputMode;
    }
    return _result;
  }
}


