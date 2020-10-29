/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="rtf_save_options_data.dart">
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

/// container class for rtf save options.
class RtfSaveOptionsData extends SaveOptionsData {
  /// Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
  bool exportCompactSize;

  /// Gets or sets specifies whether the keywords for "old readers" are written to RTF or not.
  bool exportImagesForOldReaders;

  /// Gets or sets specifies whether or not use pretty formats output.
  bool prettyFormat;

  /// Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.
  bool saveImagesAsWmf;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ExportCompactSize')) {
      this.exportCompactSize = json['ExportCompactSize'];
    } else {
      this.exportCompactSize = null;
    }

    if (json.containsKey('ExportImagesForOldReaders')) {
      this.exportImagesForOldReaders = json['ExportImagesForOldReaders'];
    } else {
      this.exportImagesForOldReaders = null;
    }

    if (json.containsKey('PrettyFormat')) {
      this.prettyFormat = json['PrettyFormat'];
    } else {
      this.prettyFormat = null;
    }

    if (json.containsKey('SaveImagesAsWmf')) {
      this.saveImagesAsWmf = json['SaveImagesAsWmf'];
    } else {
      this.saveImagesAsWmf = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.exportCompactSize != null) {
      _result['ExportCompactSize'] = this.exportCompactSize;
    }

    if (this.exportImagesForOldReaders != null) {
      _result['ExportImagesForOldReaders'] = this.exportImagesForOldReaders;
    }

    if (this.prettyFormat != null) {
      _result['PrettyFormat'] = this.prettyFormat;
    }

    if (this.saveImagesAsWmf != null) {
      _result['SaveImagesAsWmf'] = this.saveImagesAsWmf;
    }
    return _result;
  }
}


