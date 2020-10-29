/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="metafile_rendering_options_data.dart">
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

/// container class for options of metafile rendering.
class MetafileRenderingOptionsData implements ModelBase {
  /// Gets or sets determines how EMF+ Dual metafiles should be rendered.
  String emfPlusDualRenderingMode;

  /// Gets or sets a value determining whether or not the raster operations should be emulated.
  bool emulateRasterOperations;

  /// Gets or sets determines how metafile images should be rendered.
  String renderingMode;

  /// Gets or sets a value determining whether or not to scale fonts in WMF metafile according to metafile size on the page.
  /// The default value is true.
  bool scaleWmfFontsToMetafileSize;

  /// Gets or sets determines how WMF metafiles with embedded EMF metafiles should be rendered.
  bool useEmfEmbeddedToWmf;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('EmfPlusDualRenderingMode')) {
      this.emfPlusDualRenderingMode = json['EmfPlusDualRenderingMode'];
    } else {
      this.emfPlusDualRenderingMode = null;
    }

    if (json.containsKey('EmulateRasterOperations')) {
      this.emulateRasterOperations = json['EmulateRasterOperations'];
    } else {
      this.emulateRasterOperations = null;
    }

    if (json.containsKey('RenderingMode')) {
      this.renderingMode = json['RenderingMode'];
    } else {
      this.renderingMode = null;
    }

    if (json.containsKey('ScaleWmfFontsToMetafileSize')) {
      this.scaleWmfFontsToMetafileSize = json['ScaleWmfFontsToMetafileSize'];
    } else {
      this.scaleWmfFontsToMetafileSize = null;
    }

    if (json.containsKey('UseEmfEmbeddedToWmf')) {
      this.useEmfEmbeddedToWmf = json['UseEmfEmbeddedToWmf'];
    } else {
      this.useEmfEmbeddedToWmf = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.emfPlusDualRenderingMode != null) {
      _result['EmfPlusDualRenderingMode'] = this.emfPlusDualRenderingMode;
    }

    if (this.emulateRasterOperations != null) {
      _result['EmulateRasterOperations'] = this.emulateRasterOperations;
    }

    if (this.renderingMode != null) {
      _result['RenderingMode'] = this.renderingMode;
    }

    if (this.scaleWmfFontsToMetafileSize != null) {
      _result['ScaleWmfFontsToMetafileSize'] = this.scaleWmfFontsToMetafileSize;
    }

    if (this.useEmfEmbeddedToWmf != null) {
      _result['UseEmfEmbeddedToWmf'] = this.useEmfEmbeddedToWmf;
    }
    return _result;
  }
}


