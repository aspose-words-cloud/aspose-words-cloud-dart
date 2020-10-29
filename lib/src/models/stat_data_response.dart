/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="stat_data_response.dart">
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

/// Response for the request of the document's statistical data.
class StatDataResponse extends WordsResponse {
  /// Gets or sets link to the document.
  FileLink documentLink;

  /// Gets or sets statistical data of the document.
  DocumentStatData statData;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('DocumentLink')) {
      this.documentLink = new FileLink();
      this.documentLink.deserialize(json['DocumentLink']);
    } else {
      this.documentLink = null;
    }

    if (json.containsKey('StatData')) {
      this.statData = new DocumentStatData();
      this.statData.deserialize(json['StatData']);
    } else {
      this.statData = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.documentLink != null) {
      _result['DocumentLink'] = this.documentLink.serialize();
    }

    if (this.statData != null) {
      _result['StatData'] = this.statData.serialize();
    }
    return _result;
  }
}


