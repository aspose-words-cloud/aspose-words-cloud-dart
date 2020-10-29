/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="preferred_width.dart">
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

/// Preferred width.
class PreferredWidth implements ModelBase {
  /// Gets or sets the unit of measure used for this preferred width value.
  PreferredWidth_TypeEnum type;

  /// Gets or sets the preferred width value. The unit of measure is specified in the Type property.
  double value;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Type')) {
      switch (json['Type']) {
        case 'Auto': this.type = PreferredWidth_TypeEnum.auto; break;
        case 'Percent': this.type = PreferredWidth_TypeEnum.percent; break;
        case 'Points': this.type = PreferredWidth_TypeEnum.points; break;
        default: this.type = null; break;
      }
    } else {
      this.type = null;
    }

    if (json.containsKey('Value')) {
      this.value = json['Value'];
    } else {
      this.value = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.type != null) {
      switch (this.type) {
        case PreferredWidth_TypeEnum.auto: _result['Type'] = 'Auto'; break;
        case PreferredWidth_TypeEnum.percent: _result['Type'] = 'Percent'; break;
        case PreferredWidth_TypeEnum.points: _result['Type'] = 'Points'; break;
        default: break;
      }
    }

    if (this.value != null) {
      _result['Value'] = this.value;
    }
    return _result;
  }
}

/// Gets or sets the unit of measure used for this preferred width value.
enum PreferredWidth_TypeEnum
{ 
  auto,
  percent,
  points
}

