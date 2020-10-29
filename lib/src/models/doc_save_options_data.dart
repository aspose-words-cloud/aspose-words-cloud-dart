/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="doc_save_options_data.dart">
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

/// container class for doc/dot save options.
class DocSaveOptionsData extends SaveOptionsData {
  /// Gets or sets When false, small metafiles are not compressed for performance reason.
  /// Default value is true, all metafiles are compressed regardless of its size.
  bool alwaysCompressMetafiles;

  /// Gets or sets password.
  String password;

  /// Gets or sets When false, PictureBullet data is not saved to output document.
  /// Default value is true.
  bool savePictureBullet;

  /// Gets or sets determine whether or not save RoutingSlip data saved to output document.
  bool saveRoutingSlip;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('AlwaysCompressMetafiles')) {
      this.alwaysCompressMetafiles = json['AlwaysCompressMetafiles'];
    } else {
      this.alwaysCompressMetafiles = null;
    }

    if (json.containsKey('Password')) {
      this.password = json['Password'];
    } else {
      this.password = null;
    }

    if (json.containsKey('SavePictureBullet')) {
      this.savePictureBullet = json['SavePictureBullet'];
    } else {
      this.savePictureBullet = null;
    }

    if (json.containsKey('SaveRoutingSlip')) {
      this.saveRoutingSlip = json['SaveRoutingSlip'];
    } else {
      this.saveRoutingSlip = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.alwaysCompressMetafiles != null) {
      _result['AlwaysCompressMetafiles'] = this.alwaysCompressMetafiles;
    }

    if (this.password != null) {
      _result['Password'] = this.password;
    }

    if (this.savePictureBullet != null) {
      _result['SavePictureBullet'] = this.savePictureBullet;
    }

    if (this.saveRoutingSlip != null) {
      _result['SaveRoutingSlip'] = this.saveRoutingSlip;
    }
    return _result;
  }
}


