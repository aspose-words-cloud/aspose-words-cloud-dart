/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="info_response.dart">
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

/// Response with API info.
class InfoResponse extends WordsResponse {
  /// Gets or sets additional info.
  List<InfoAdditionalItem> additionalInfo;

  /// Gets or sets application name.
  String name;

  /// Gets or sets version.
  String version;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize InfoResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AdditionalInfo')) {
      // Array processing
      additionalInfo = <InfoAdditionalItem>[];
      for(final _element in json['AdditionalInfo']) {
        var _elementValue = InfoAdditionalItem();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        additionalInfo.add(_elementValue);
      }
    } else {
      additionalInfo = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Version')) {
      version = json['Version'] as String;
    } else {
      version = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (additionalInfo != null) {
      _result['AdditionalInfo'] = additionalInfo.map((_element) => _element.serialize()).toList();
    }

    if (name != null) {
      _result['Name'] = name;
    }

    if (version != null) {
      _result['Version'] = version;
    }
    return _result;
  }
}


