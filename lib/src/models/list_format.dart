/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_format.dart">
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

/// Paragraph list format element.
class ListFormat extends LinkElement {
  /// Gets or sets a value indicating whether the paragraph has bulleted or numbered formatting applied to it.
  bool isListItem;

  /// Gets or sets the list id of this paragraph.
  int listId;

  /// Gets or sets the list level number (0 to 8) for the paragraph.
  int listLevelNumber;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ListFormat data model.');
    }

    super.deserialize(json);
    if (json.containsKey('IsListItem')) {
      isListItem = json['IsListItem'] as bool;
    } else {
      isListItem = null;
    }

    if (json.containsKey('ListId')) {
      listId = json['ListId'] as int;
    } else {
      listId = null;
    }

    if (json.containsKey('ListLevelNumber')) {
      listLevelNumber = json['ListLevelNumber'] as int;
    } else {
      listLevelNumber = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isListItem != null) {
      _result['IsListItem'] = isListItem;
    }

    if (listId != null) {
      _result['ListId'] = listId;
    }

    if (listLevelNumber != null) {
      _result['ListLevelNumber'] = listLevelNumber;
    }
    return _result;
  }
}


