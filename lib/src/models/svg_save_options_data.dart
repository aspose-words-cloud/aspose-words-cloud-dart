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
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SvgSaveOptionsData data model.');
    }

    super.deserialize(json);
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

    if (showPageBorder != null) {
      _result['ShowPageBorder'] = showPageBorder;
    }

    if (textOutputMode != null) {
      _result['TextOutputMode'] = textOutputMode;
    }
    return _result;
  }
}


