/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="custom_xml_parts_response.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

/// The REST response with a collection of custom xml parts.
/// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/customXmlParts" REST API requests.
class CustomXmlPartsResponse extends WordsResponse {
  /// Gets or sets the collection of comments.
  CustomXmlPartsCollection? _customXmlParts;

  CustomXmlPartsCollection? get customXmlParts => _customXmlParts;
  set customXmlParts(CustomXmlPartsCollection? val) => _customXmlParts = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CustomXmlPartsResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('CustomXmlParts')) {
      customXmlParts = ModelBase.createInstance< CustomXmlPartsCollection >(json['CustomXmlParts'] as Map<String, dynamic>);
    } else {
      customXmlParts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (customXmlParts != null) {
      _result['CustomXmlParts'] = customXmlParts!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    customXmlParts?.validate();

  }
}


