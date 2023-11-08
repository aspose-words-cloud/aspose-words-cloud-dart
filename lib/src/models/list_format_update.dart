/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_format_update.dart">
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

/// Paragraph list format element for update.
class ListFormatUpdate implements ModelBase {
  /// Gets or sets the list level number (0 to 8) for the paragraph.
  /// In Word documents, lists may consist of 1 or 9 levels, numbered 0 to 8. Has effect only when the Aspose.Words.ListFormat.List property is set to reference a valid list. Aspose.Words.ListFormat.List.
  int? _listLevelNumber;

  int? get listLevelNumber => _listLevelNumber;
  set listLevelNumber(int? val) => _listLevelNumber = val;


  /// Gets or sets the list id of this paragraph.
  /// The list that is being assigned to this property must belong to the current document.
  /// The list that is being assigned to this property must not be a list style definition.
  int? _listId;

  int? get listId => _listId;
  set listId(int? val) => _listId = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ListFormatUpdate data model.');
    }

    if (json.containsKey('ListLevelNumber')) {
      listLevelNumber = json['ListLevelNumber'] as int;
    } else {
      listLevelNumber = null;
    }

    if (json.containsKey('ListId')) {
      listId = json['ListId'] as int;
    } else {
      listId = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (listLevelNumber != null) {
      _result['ListLevelNumber'] = listLevelNumber!;
    }

    if (listId != null) {
      _result['ListId'] = listId!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
  }
}


