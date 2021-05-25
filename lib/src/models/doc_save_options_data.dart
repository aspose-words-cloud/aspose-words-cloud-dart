/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="doc_save_options_data.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

/// Container class for doc/dot save options.
class DocSaveOptionsData extends SaveOptionsData {
  /// Gets or sets a value indicating when False, that small metafiles are not compressed for performance reason.
  /// The default value is true, all metafiles are compressed regardless of its size.
  bool alwaysCompressMetafiles;

  /// Gets or sets the password.
  String password;

  /// Gets or sets a value indicating when False, that PictureBullet data is not saved to the output document.
  /// The default value is true.
  bool savePictureBullet;

  /// Gets or sets a value indicating whether to save RoutingSlip data to output document.
  bool saveRoutingSlip;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AlwaysCompressMetafiles')) {
      alwaysCompressMetafiles = json['AlwaysCompressMetafiles'] as bool;
    } else {
      alwaysCompressMetafiles = null;
    }

    if (json.containsKey('Password')) {
      password = json['Password'] as String;
    } else {
      password = null;
    }

    if (json.containsKey('SavePictureBullet')) {
      savePictureBullet = json['SavePictureBullet'] as bool;
    } else {
      savePictureBullet = null;
    }

    if (json.containsKey('SaveRoutingSlip')) {
      saveRoutingSlip = json['SaveRoutingSlip'] as bool;
    } else {
      saveRoutingSlip = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (alwaysCompressMetafiles != null) {
      _result['AlwaysCompressMetafiles'] = alwaysCompressMetafiles;
    }

    if (password != null) {
      _result['Password'] = password;
    }

    if (savePictureBullet != null) {
      _result['SavePictureBullet'] = savePictureBullet;
    }

    if (saveRoutingSlip != null) {
      _result['SaveRoutingSlip'] = saveRoutingSlip;
    }
    return _result;
  }
}


