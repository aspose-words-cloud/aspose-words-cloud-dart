/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="font_info.dart">
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

/// Font info.
class FontInfo implements ModelBase {
  /// Gets or sets path to the font file if any.
  String filePath;

  /// Gets or sets family name of the font.
  String fontFamilyName;

  /// Gets or sets full name of the font.
  String fullFontName;

  /// Gets or sets version string of the font.
  String version;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('FilePath')) {
      this.filePath = json['FilePath'];
    } else {
      this.filePath = null;
    }

    if (json.containsKey('FontFamilyName')) {
      this.fontFamilyName = json['FontFamilyName'];
    } else {
      this.fontFamilyName = null;
    }

    if (json.containsKey('FullFontName')) {
      this.fullFontName = json['FullFontName'];
    } else {
      this.fullFontName = null;
    }

    if (json.containsKey('Version')) {
      this.version = json['Version'];
    } else {
      this.version = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.filePath != null) {
      _result['FilePath'] = this.filePath;
    }

    if (this.fontFamilyName != null) {
      _result['FontFamilyName'] = this.fontFamilyName;
    }

    if (this.fullFontName != null) {
      _result['FullFontName'] = this.fullFontName;
    }

    if (this.version != null) {
      _result['Version'] = this.version;
    }
    return _result;
  }
}


