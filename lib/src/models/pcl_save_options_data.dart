/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pcl_save_options_data.dart">
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

/// Container class for pcl save options.
class PclSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the font name, that will be used if no expected font is found in printer and built-in fonts collections.
  String falllbackFontName;

  /// Gets or sets a value indicating whether complex transformed elements should be rasterized before saving to PCL document.. The default value is true.
  bool rasterizeTransformedElements;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PclSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('FalllbackFontName')) {
      falllbackFontName = json['FalllbackFontName'] as String;
    } else {
      falllbackFontName = null;
    }

    if (json.containsKey('RasterizeTransformedElements')) {
      rasterizeTransformedElements = json['RasterizeTransformedElements'] as bool;
    } else {
      rasterizeTransformedElements = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (falllbackFontName != null) {
      _result['FalllbackFontName'] = falllbackFontName;
    }

    if (rasterizeTransformedElements != null) {
      _result['RasterizeTransformedElements'] = rasterizeTransformedElements;
    }
    return _result;
  }
}


