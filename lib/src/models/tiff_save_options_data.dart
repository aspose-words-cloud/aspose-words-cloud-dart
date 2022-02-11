/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tiff_save_options_data.dart">
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

/// Container class for tiff save options.
class TiffSaveOptionsData extends ImageSaveOptionsData {
  /// Gets the format of save.
  String _saveFormat = 'tiff';

  @override
  String get saveFormat => _saveFormat;


  /// Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering.
  /// Default value is 128.
  int _thresholdForFloydSteinbergDithering;

  int get thresholdForFloydSteinbergDithering => _thresholdForFloydSteinbergDithering;
  set thresholdForFloydSteinbergDithering(int val) => _thresholdForFloydSteinbergDithering = val;


  /// Gets or sets the method used while converting images to 1 bpp format.
  String _tiffBinarizationMethod;

  String get tiffBinarizationMethod => _tiffBinarizationMethod;
  set tiffBinarizationMethod(String val) => _tiffBinarizationMethod = val;


  /// Gets or sets the type of compression.
  String _tiffCompression;

  String get tiffCompression => _tiffCompression;
  set tiffCompression(String val) => _tiffCompression = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TiffSaveOptionsData data model.');
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

    if (json.containsKey('HorizontalResolution')) {
      horizontalResolution = json['HorizontalResolution'] as double;
    } else {
      horizontalResolution = null;
    }

    if (json.containsKey('ImageBrightness')) {
      imageBrightness = json['ImageBrightness'] as double;
    } else {
      imageBrightness = null;
    }

    if (json.containsKey('ImageColorMode')) {
      imageColorMode = json['ImageColorMode'] as String;
    } else {
      imageColorMode = null;
    }

    if (json.containsKey('ImageContrast')) {
      imageContrast = json['ImageContrast'] as double;
    } else {
      imageContrast = null;
    }

    if (json.containsKey('PaperColor')) {
      paperColor = json['PaperColor'] as String;
    } else {
      paperColor = null;
    }

    if (json.containsKey('PixelFormat')) {
      pixelFormat = json['PixelFormat'] as String;
    } else {
      pixelFormat = null;
    }

    if (json.containsKey('Resolution')) {
      resolution = json['Resolution'] as double;
    } else {
      resolution = null;
    }

    if (json.containsKey('Scale')) {
      scale = json['Scale'] as double;
    } else {
      scale = null;
    }

    if (json.containsKey('UseAntiAliasing')) {
      useAntiAliasing = json['UseAntiAliasing'] as bool;
    } else {
      useAntiAliasing = null;
    }

    if (json.containsKey('UseGdiEmfRenderer')) {
      useGdiEmfRenderer = json['UseGdiEmfRenderer'] as bool;
    } else {
      useGdiEmfRenderer = null;
    }

    if (json.containsKey('UseHighQualityRendering')) {
      useHighQualityRendering = json['UseHighQualityRendering'] as bool;
    } else {
      useHighQualityRendering = null;
    }

    if (json.containsKey('VerticalResolution')) {
      verticalResolution = json['VerticalResolution'] as double;
    } else {
      verticalResolution = null;
    }

    if (json.containsKey('ThresholdForFloydSteinbergDithering')) {
      thresholdForFloydSteinbergDithering = json['ThresholdForFloydSteinbergDithering'] as int;
    } else {
      thresholdForFloydSteinbergDithering = null;
    }

    if (json.containsKey('TiffBinarizationMethod')) {
      tiffBinarizationMethod = json['TiffBinarizationMethod'] as String;
    } else {
      tiffBinarizationMethod = null;
    }

    if (json.containsKey('TiffCompression')) {
      tiffCompression = json['TiffCompression'] as String;
    } else {
      tiffCompression = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }

    if (thresholdForFloydSteinbergDithering != null) {
      _result['ThresholdForFloydSteinbergDithering'] = thresholdForFloydSteinbergDithering;
    }

    if (tiffBinarizationMethod != null) {
      _result['TiffBinarizationMethod'] = tiffBinarizationMethod;
    }

    if (tiffCompression != null) {
      _result['TiffCompression'] = tiffCompression;
    }
    return _result;
  }
}


