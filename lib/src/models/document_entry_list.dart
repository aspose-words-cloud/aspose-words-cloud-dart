/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_entry_list.dart">
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

/// Represents a list of documents which will be appended to the original resource document.
class DocumentEntryList implements ModelBase {
  /// Gets or sets parameter that indicates to apply headers and footers from base document to appending documents. Default is true.
  bool applyBaseDocumentHeadersAndFootersToAppendingDocuments;

  /// Gets or sets list of documents.
  List<DocumentEntry> documentEntries;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentEntryList data model.');
    }

    if (json.containsKey('ApplyBaseDocumentHeadersAndFootersToAppendingDocuments')) {
      applyBaseDocumentHeadersAndFootersToAppendingDocuments = json['ApplyBaseDocumentHeadersAndFootersToAppendingDocuments'] as bool;
    } else {
      applyBaseDocumentHeadersAndFootersToAppendingDocuments = null;
    }

    if (json.containsKey('DocumentEntries')) {
      // Array processing
      documentEntries = <DocumentEntry>[];
      for(final _element in json['DocumentEntries']) {
        var _elementValue = DocumentEntry();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        documentEntries.add(_elementValue);
      }
    } else {
      documentEntries = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (applyBaseDocumentHeadersAndFootersToAppendingDocuments != null) {
      _result['ApplyBaseDocumentHeadersAndFootersToAppendingDocuments'] = applyBaseDocumentHeadersAndFootersToAppendingDocuments;
    }

    if (documentEntries != null) {
      _result['DocumentEntries'] = documentEntries.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


