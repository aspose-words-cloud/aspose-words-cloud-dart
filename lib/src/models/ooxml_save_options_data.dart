/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ooxml_save_options_data.dart">
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

/// container class for docx/docm/dotx/dotm/flatopc save options.
class OoxmlSaveOptionsData extends SaveOptionsData {
  /// Gets or sets specifies the OOXML version for the output document.
  String compliance;

  /// Gets or sets compression level.
  OoxmlSaveOptionsData_CompressionLevelEnum compressionLevel;

  /// Gets or sets specifies a password to encrypt document using ECMA376 Standard encryption algorithm.
  String password;

  /// Gets or sets specifies whether or not use pretty formats output.
  bool prettyFormat;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Compliance')) {
      this.compliance = json['Compliance'];
    } else {
      this.compliance = null;
    }

    if (json.containsKey('CompressionLevel')) {
      switch (json['CompressionLevel']) {
        case 'Normal': this.compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.normal; break;
        case 'Maximum': this.compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.maximum; break;
        case 'Fast': this.compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.fast; break;
        case 'SuperFast': this.compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.superFast; break;
        default: this.compressionLevel = null; break;
      }
    } else {
      this.compressionLevel = null;
    }

    if (json.containsKey('Password')) {
      this.password = json['Password'];
    } else {
      this.password = null;
    }

    if (json.containsKey('PrettyFormat')) {
      this.prettyFormat = json['PrettyFormat'];
    } else {
      this.prettyFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.compliance != null) {
      _result['Compliance'] = this.compliance;
    }

    if (this.compressionLevel != null) {
      switch (this.compressionLevel) {
        case OoxmlSaveOptionsData_CompressionLevelEnum.normal: _result['CompressionLevel'] = 'Normal'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.maximum: _result['CompressionLevel'] = 'Maximum'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.fast: _result['CompressionLevel'] = 'Fast'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.superFast: _result['CompressionLevel'] = 'SuperFast'; break;
        default: break;
      }
    }

    if (this.password != null) {
      _result['Password'] = this.password;
    }

    if (this.prettyFormat != null) {
      _result['PrettyFormat'] = this.prettyFormat;
    }
    return _result;
  }
}

/// Gets or sets compression level.
enum OoxmlSaveOptionsData_CompressionLevelEnum
{ 
  normal,
  maximum,
  fast,
  superFast
}

