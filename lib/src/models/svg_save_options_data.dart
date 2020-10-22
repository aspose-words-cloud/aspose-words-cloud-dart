/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="svg_save_options_data.dart">
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

/// container class for svg save options.
class SvgSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets specified whether images should be embedded into SVG document as base64.
  bool exportEmbeddedImages;

  /// Gets or sets specifies if the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
  bool fitToViewPort;

  /// Gets or sets specifies the physical folder where resources (images) are saved when exporting.
  String resourcesFolder;

  /// Gets or sets specifies the name of the folder used to construct image URIs.
  String resourcesFolderAlias;

  /// Gets or sets show/hide page stepper.
  bool showPageBorder;

  /// Gets or sets determines how text should be rendered.
  String textOutputMode;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ExportEmbeddedImages')) {
      this.exportEmbeddedImages = json['ExportEmbeddedImages'];
    } else {
      this.exportEmbeddedImages = null;
    }

    if (json.containsKey('FitToViewPort')) {
      this.fitToViewPort = json['FitToViewPort'];
    } else {
      this.fitToViewPort = null;
    }

    if (json.containsKey('ResourcesFolder')) {
      this.resourcesFolder = json['ResourcesFolder'];
    } else {
      this.resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      this.resourcesFolderAlias = json['ResourcesFolderAlias'];
    } else {
      this.resourcesFolderAlias = null;
    }

    if (json.containsKey('ShowPageBorder')) {
      this.showPageBorder = json['ShowPageBorder'];
    } else {
      this.showPageBorder = null;
    }

    if (json.containsKey('TextOutputMode')) {
      this.textOutputMode = json['TextOutputMode'];
    } else {
      this.textOutputMode = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.exportEmbeddedImages != null) {
      _result['ExportEmbeddedImages'] = this.exportEmbeddedImages;
    }

    if (this.fitToViewPort != null) {
      _result['FitToViewPort'] = this.fitToViewPort;
    }

    if (this.resourcesFolder != null) {
      _result['ResourcesFolder'] = this.resourcesFolder;
    }

    if (this.resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = this.resourcesFolderAlias;
    }

    if (this.showPageBorder != null) {
      _result['ShowPageBorder'] = this.showPageBorder;
    }

    if (this.textOutputMode != null) {
      _result['TextOutputMode'] = this.textOutputMode;
    }
    return _result;
  }
}


