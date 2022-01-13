/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="load_web_document_data.dart">
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

/// Contains data for load web document.
class LoadWebDocumentData implements ModelBase {
  /// Gets or sets the web document URL.
  String loadingDocumentUrl;

  /// Gets or sets the save options.
  SaveOptionsData saveOptions;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize LoadWebDocumentData data model.');
    }

    if (json.containsKey('LoadingDocumentUrl')) {
      loadingDocumentUrl = json['LoadingDocumentUrl'] as String;
    } else {
      loadingDocumentUrl = null;
    }

    if (json.containsKey('SaveOptions')) {
      saveOptions = SaveOptionsData();
      saveOptions.deserialize(json['SaveOptions'] as Map<String, dynamic>);
    } else {
      saveOptions = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (loadingDocumentUrl != null) {
      _result['LoadingDocumentUrl'] = loadingDocumentUrl;
    }

    if (saveOptions != null) {
      _result['SaveOptions'] = saveOptions.serialize();
    }
    return _result;
  }
}


