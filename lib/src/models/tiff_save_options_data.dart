/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tiff_save_options_data.dart">
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

/// Container class for tiff save options.
class TiffSaveOptionsData extends ImageSaveOptionsData {
  /// Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering.
  /// Default value is 128.
  int thresholdForFloydSteinbergDithering;

  /// Gets or sets specifies method used while converting images to 1 bpp format.
  String tiffBinarizationMethod;

  /// Gets or sets type of compression.
  String tiffCompression;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ThresholdForFloydSteinbergDithering')) {
      thresholdForFloydSteinbergDithering = json['ThresholdForFloydSteinbergDithering'];
    } else {
      thresholdForFloydSteinbergDithering = null;
    }

    if (json.containsKey('TiffBinarizationMethod')) {
      tiffBinarizationMethod = json['TiffBinarizationMethod'];
    } else {
      tiffBinarizationMethod = null;
    }

    if (json.containsKey('TiffCompression')) {
      tiffCompression = json['TiffCompression'];
    } else {
      tiffCompression = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
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


