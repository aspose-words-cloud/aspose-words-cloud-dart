/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="watermark_text.dart">
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

/// Class for insert watermark text request building.
class WatermarkText implements ModelBase {
  /// Gets or sets the watermark rotation angle.
  double rotationAngle;

  /// Gets or sets the watermark text.
  String text;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('RotationAngle')) {
      this.rotationAngle = json['RotationAngle'];
    } else {
      this.rotationAngle = null;
    }

    if (json.containsKey('Text')) {
      this.text = json['Text'];
    } else {
      this.text = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.rotationAngle != null) {
      _result['RotationAngle'] = this.rotationAngle;
    }

    if (this.text != null) {
      _result['Text'] = this.text;
    }
    return _result;
  }
}


