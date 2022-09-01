/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="online_document_entry_list.dart">
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

/// Represents a list of documents which will be appended to the original resource document.
class OnlineDocumentEntryList extends BaseDocumentEntryList {
  /// Gets or sets the list of documents.
  List<OnlineDocumentEntry> _onlineDocumentEntries;

  List<OnlineDocumentEntry> get onlineDocumentEntries => _onlineDocumentEntries;
  set onlineDocumentEntries(List<OnlineDocumentEntry> val) => _onlineDocumentEntries = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OnlineDocumentEntryList data model.');
    }

    super.deserialize(json);
    if (json.containsKey('ApplyBaseDocumentHeadersAndFootersToAppendingDocuments')) {
      applyBaseDocumentHeadersAndFootersToAppendingDocuments = json['ApplyBaseDocumentHeadersAndFootersToAppendingDocuments'] as bool;
    } else {
      applyBaseDocumentHeadersAndFootersToAppendingDocuments = null;
    }

    if (json.containsKey('OnlineDocumentEntries')) {
      // Array processing
      onlineDocumentEntries = <OnlineDocumentEntry>[];
      for(final _element in json['OnlineDocumentEntries']) {
        var _elementValue = OnlineDocumentEntry();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        onlineDocumentEntries.add(_elementValue);
      }
    } else {
      onlineDocumentEntries = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (onlineDocumentEntries != null) {
      _result['OnlineDocumentEntries'] = onlineDocumentEntries.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
    if (onlineDocumentEntries != null)
    {
        for (final element in onlineDocumentEntries)
        {
            element.getFilesContent(resultFilesContent);
        }
    }

  }
}


