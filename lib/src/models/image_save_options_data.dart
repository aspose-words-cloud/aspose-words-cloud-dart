/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="image_save_options_data.dart">
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

/// Container abstract class for image save options.
class ImageSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the additional System.Drawing.Graphics quality options.
  GraphicsQualityOptionsData graphicsQualityOptions;

  /// Gets or sets the horizontal resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double horizontalResolution;

  /// Gets or sets the brightness level of the image.
  double imageBrightness;

  /// Gets or sets the color mode of the image.
  String imageColorMode;

  /// Gets or sets the contrast level of the image.
  double imageContrast;

  /// Gets or sets the background (paper) color of the image.
  String paperColor;

  /// Gets or sets the pixel format of the image.
  String pixelFormat;

  /// Gets or sets both horizontal and vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double resolution;

  /// Gets or sets the zoom factor of the image.
  double scale;

  /// Gets or sets a value indicating whether to use anti-aliasing for rendering.
  bool useAntiAliasing;

  /// Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
  bool useGdiEmfRenderer;

  /// Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
  bool useHighQualityRendering;

  /// Gets or sets the vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double verticalResolution;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ImageSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('GraphicsQualityOptions')) {
      graphicsQualityOptions = GraphicsQualityOptionsData();
      graphicsQualityOptions.deserialize(json['GraphicsQualityOptions'] as Map<String, dynamic>);
    } else {
      graphicsQualityOptions = null;
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
    if (graphicsQualityOptions != null) {
      _result['GraphicsQualityOptions'] = graphicsQualityOptions.serialize();
    }

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


