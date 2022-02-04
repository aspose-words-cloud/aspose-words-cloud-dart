/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="image_save_options_data.dart">
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

/// Container abstract class for image save options.
abstract class ImageSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the horizontal resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double _horizontalResolution;

  double get horizontalResolution => _horizontalResolution;
  set horizontalResolution(double val) => _horizontalResolution = val;


  /// Gets or sets the brightness level of the image.
  double _imageBrightness;

  double get imageBrightness => _imageBrightness;
  set imageBrightness(double val) => _imageBrightness = val;


  /// Gets or sets the color mode of the image.
  String _imageColorMode;

  String get imageColorMode => _imageColorMode;
  set imageColorMode(String val) => _imageColorMode = val;


  /// Gets or sets the contrast level of the image.
  double _imageContrast;

  double get imageContrast => _imageContrast;
  set imageContrast(double val) => _imageContrast = val;


  /// Gets or sets the background (paper) color of the image.
  String _paperColor;

  String get paperColor => _paperColor;
  set paperColor(String val) => _paperColor = val;


  /// Gets or sets the pixel format of the image.
  String _pixelFormat;

  String get pixelFormat => _pixelFormat;
  set pixelFormat(String val) => _pixelFormat = val;


  /// Gets or sets both horizontal and vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double _resolution;

  double get resolution => _resolution;
  set resolution(double val) => _resolution = val;


  /// Gets or sets the zoom factor of the image.
  double _scale;

  double get scale => _scale;
  set scale(double val) => _scale = val;


  /// Gets or sets a value indicating whether to use anti-aliasing for rendering.
  bool _useAntiAliasing;

  bool get useAntiAliasing => _useAntiAliasing;
  set useAntiAliasing(bool val) => _useAntiAliasing = val;


  /// Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
  bool _useGdiEmfRenderer;

  bool get useGdiEmfRenderer => _useGdiEmfRenderer;
  set useGdiEmfRenderer(bool val) => _useGdiEmfRenderer = val;


  /// Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
  bool _useHighQualityRendering;

  bool get useHighQualityRendering => _useHighQualityRendering;
  set useHighQualityRendering(bool val) => _useHighQualityRendering = val;


  /// Gets or sets the vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double _verticalResolution;

  double get verticalResolution => _verticalResolution;
  set verticalResolution(double val) => _verticalResolution = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ImageSaveOptionsData data model.');
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
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (horizontalResolution != null) {
      _result['HorizontalResolution'] = horizontalResolution;
    }

    if (imageBrightness != null) {
      _result['ImageBrightness'] = imageBrightness;
    }

    if (imageColorMode != null) {
      _result['ImageColorMode'] = imageColorMode;
    }

    if (imageContrast != null) {
      _result['ImageContrast'] = imageContrast;
    }

    if (paperColor != null) {
      _result['PaperColor'] = paperColor;
    }

    if (pixelFormat != null) {
      _result['PixelFormat'] = pixelFormat;
    }

    if (resolution != null) {
      _result['Resolution'] = resolution;
    }

    if (scale != null) {
      _result['Scale'] = scale;
    }

    if (useAntiAliasing != null) {
      _result['UseAntiAliasing'] = useAntiAliasing;
    }

    if (useGdiEmfRenderer != null) {
      _result['UseGdiEmfRenderer'] = useGdiEmfRenderer;
    }

    if (useHighQualityRendering != null) {
      _result['UseHighQualityRendering'] = useHighQualityRendering;
    }

    if (verticalResolution != null) {
      _result['VerticalResolution'] = verticalResolution;
    }
    return _result;
  }
}


