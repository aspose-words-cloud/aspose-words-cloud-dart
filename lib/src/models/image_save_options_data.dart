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
      this.graphicsQualityOptions = new GraphicsQualityOptionsData();
      this.graphicsQualityOptions.deserialize(json['GraphicsQualityOptions']);
    } else {
      this.graphicsQualityOptions = null;
    }

    if (json.containsKey('HorizontalResolution')) {
      this.horizontalResolution = json['HorizontalResolution'];
    } else {
      this.horizontalResolution = null;
    }

    if (json.containsKey('ImageBrightness')) {
      this.imageBrightness = json['ImageBrightness'];
    } else {
      this.imageBrightness = null;
    }

    if (json.containsKey('ImageColorMode')) {
      this.imageColorMode = json['ImageColorMode'];
    } else {
      this.imageColorMode = null;
    }

    if (json.containsKey('ImageContrast')) {
      this.imageContrast = json['ImageContrast'];
    } else {
      this.imageContrast = null;
    }

    if (json.containsKey('PaperColor')) {
      this.paperColor = json['PaperColor'];
    } else {
      this.paperColor = null;
    }

    if (json.containsKey('PixelFormat')) {
      this.pixelFormat = json['PixelFormat'];
    } else {
      this.pixelFormat = null;
    }

    if (json.containsKey('Resolution')) {
      this.resolution = json['Resolution'];
    } else {
      this.resolution = null;
    }

    if (json.containsKey('Scale')) {
      this.scale = json['Scale'];
    } else {
      this.scale = null;
    }

    if (json.containsKey('UseAntiAliasing')) {
      this.useAntiAliasing = json['UseAntiAliasing'];
    } else {
      this.useAntiAliasing = null;
    }

    if (json.containsKey('UseGdiEmfRenderer')) {
      this.useGdiEmfRenderer = json['UseGdiEmfRenderer'];
    } else {
      this.useGdiEmfRenderer = null;
    }

    if (json.containsKey('UseHighQualityRendering')) {
      this.useHighQualityRendering = json['UseHighQualityRendering'];
    } else {
      this.useHighQualityRendering = null;
    }

    if (json.containsKey('VerticalResolution')) {
      this.verticalResolution = json['VerticalResolution'];
    } else {
      this.verticalResolution = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.graphicsQualityOptions != null) {
      _result['GraphicsQualityOptions'] = this.graphicsQualityOptions.serialize();
    }

    if (this.horizontalResolution != null) {
      _result['HorizontalResolution'] = this.horizontalResolution;
    }

    if (this.imageBrightness != null) {
      _result['ImageBrightness'] = this.imageBrightness;
    }

    if (this.imageColorMode != null) {
      _result['ImageColorMode'] = this.imageColorMode;
    }

    if (this.imageContrast != null) {
      _result['ImageContrast'] = this.imageContrast;
    }

    if (this.paperColor != null) {
      _result['PaperColor'] = this.paperColor;
    }

    if (this.pixelFormat != null) {
      _result['PixelFormat'] = this.pixelFormat;
    }

    if (this.resolution != null) {
      _result['Resolution'] = this.resolution;
    }

    if (this.scale != null) {
      _result['Scale'] = this.scale;
    }

    if (this.useAntiAliasing != null) {
      _result['UseAntiAliasing'] = this.useAntiAliasing;
    }

    if (this.useGdiEmfRenderer != null) {
      _result['UseGdiEmfRenderer'] = this.useGdiEmfRenderer;
    }

    if (this.useHighQualityRendering != null) {
      _result['UseHighQualityRendering'] = this.useHighQualityRendering;
    }

    if (this.verticalResolution != null) {
      _result['VerticalResolution'] = this.verticalResolution;
    }
    return _result;
  }
}


