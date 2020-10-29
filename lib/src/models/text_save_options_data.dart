/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="text_save_options_data.dart">
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

/// Container class for text save options.
class TextSaveOptionsData extends TxtSaveOptionsBaseData {
  /// Gets or sets specifies whether to add bi-directional marks before each BiDi run when exporting in plain text format.
  /// The default value is true.
  bool addBidiMarks;

  /// Gets or sets specifies whether the program should attempt to preserve layout of tables when saving in the plain text format.
  bool preserveTableLayout;

  /// Gets or sets specifies whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
  bool simplifyListLabels;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('AddBidiMarks')) {
      this.addBidiMarks = json['AddBidiMarks'];
    } else {
      this.addBidiMarks = null;
    }

    if (json.containsKey('PreserveTableLayout')) {
      this.preserveTableLayout = json['PreserveTableLayout'];
    } else {
      this.preserveTableLayout = null;
    }

    if (json.containsKey('SimplifyListLabels')) {
      this.simplifyListLabels = json['SimplifyListLabels'];
    } else {
      this.simplifyListLabels = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.addBidiMarks != null) {
      _result['AddBidiMarks'] = this.addBidiMarks;
    }

    if (this.preserveTableLayout != null) {
      _result['PreserveTableLayout'] = this.preserveTableLayout;
    }

    if (this.simplifyListLabels != null) {
      _result['SimplifyListLabels'] = this.simplifyListLabels;
    }
    return _result;
  }
}


