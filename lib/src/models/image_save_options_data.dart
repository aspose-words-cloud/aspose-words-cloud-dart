/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="image_save_options_data.dart">
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

/// Container abstract class for image save options.
class ImageSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets allows to specify additional System.Drawing.Graphics quality options.
  GraphicsQualityOptionsData graphicsQualityOptions;

  /// Gets or sets the horizontal resolution for the generated images, in dots per inch.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double horizontalResolution;

  /// Gets or sets brightness of image.
  double imageBrightness;

  /// Gets or sets color mode of image.
  String imageColorMode;

  /// Gets or sets contrast of image.
  double imageContrast;

  /// Gets or sets background (paper) color of image.
  String paperColor;

  /// Gets or sets pixel format of image.
  String pixelFormat;

  /// Gets or sets both horizontal and vertical resolution for the generated images, in dots per inch.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double resolution;

  /// Gets or sets zoom factor of image.
  double scale;

  /// Gets or sets determine whether or not to use anti-aliasing for rendering.
  bool useAntiAliasing;

  /// Gets or sets a value determining whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
  bool useGdiEmfRenderer;

  /// Gets or sets determine whether or not to use high quality (i.e. slow) rendering algorithms.
  bool useHighQualityRendering;

  /// Gets or sets the vertical resolution for the generated images, in dots per inch.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double verticalResolution;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('GraphicsQualityOptions')) {
      graphicsQualityOptions = GraphicsQualityOptionsData();
      graphicsQualityOptions.deserialize(json['GraphicsQualityOptions']);
    } else {
      graphicsQualityOptions = null;
    }

    if (json.containsKey('HorizontalResolution')) {
      horizontalResolution = json['HorizontalResolution'];
    } else {
      horizontalResolution = null;
    }

    if (json.containsKey('ImageBrightness')) {
      imageBrightness = json['ImageBrightness'];
    } else {
      imageBrightness = null;
    }

    if (json.containsKey('ImageColorMode')) {
      imageColorMode = json['ImageColorMode'];
    } else {
      imageColorMode = null;
    }

    if (json.containsKey('ImageContrast')) {
      imageContrast = json['ImageContrast'];
    } else {
      imageContrast = null;
    }

    if (json.containsKey('PaperColor')) {
      paperColor = json['PaperColor'];
    } else {
      paperColor = null;
    }

    if (json.containsKey('PixelFormat')) {
      pixelFormat = json['PixelFormat'];
    } else {
      pixelFormat = null;
    }

    if (json.containsKey('Resolution')) {
      resolution = json['Resolution'];
    } else {
      resolution = null;
    }

    if (json.containsKey('Scale')) {
      scale = json['Scale'];
    } else {
      scale = null;
    }

    if (json.containsKey('UseAntiAliasing')) {
      useAntiAliasing = json['UseAntiAliasing'];
    } else {
      useAntiAliasing = null;
    }

    if (json.containsKey('UseGdiEmfRenderer')) {
      useGdiEmfRenderer = json['UseGdiEmfRenderer'];
    } else {
      useGdiEmfRenderer = null;
    }

    if (json.containsKey('UseHighQualityRendering')) {
      useHighQualityRendering = json['UseHighQualityRendering'];
    } else {
      useHighQualityRendering = null;
    }

    if (json.containsKey('VerticalResolution')) {
      verticalResolution = json['VerticalResolution'];
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


