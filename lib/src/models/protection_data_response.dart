/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="protection_data_response.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// The REST response with data on document's protection.
class ProtectionDataResponse extends WordsResponse {
  /// Gets or sets the link to the document.
  FileLink _documentLink;

  FileLink get documentLink => _documentLink;
  set documentLink(FileLink val) => _documentLink = val;


  /// Gets or sets the protection properties of the document.
  ProtectionData _protectionData;

  ProtectionData get protectionData => _protectionData;
  set protectionData(ProtectionData val) => _protectionData = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ProtectionDataResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('DocumentLink')) {
      documentLink = FileLink();
      documentLink.deserialize(json['DocumentLink'] as Map<String, dynamic>);
    } else {
      documentLink = null;
    }

    if (json.containsKey('ProtectionData')) {
      protectionData = ProtectionData();
      protectionData.deserialize(json['ProtectionData'] as Map<String, dynamic>);
    } else {
      protectionData = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (documentLink != null) {
      _result['DocumentLink'] = documentLink.serialize();
    }

    if (protectionData != null) {
      _result['ProtectionData'] = protectionData.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
    if (documentLink != null)
    {
        documentLink.getFilesContent(resultFilesContent);
    }

    if (protectionData != null)
    {
        protectionData.getFilesContent(resultFilesContent);
    }

  }
}


