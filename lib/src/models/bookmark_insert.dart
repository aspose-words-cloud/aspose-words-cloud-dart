/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="bookmark_insert.dart">
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

/// Represents a bookmark to insert.
class BookmarkInsert extends BookmarkData {
  /// Gets or sets the link to start bookmark node.
  NewDocumentPosition? _startRange;

  NewDocumentPosition? get startRange => _startRange;
  set startRange(NewDocumentPosition? val) => _startRange = val;


  /// Gets or sets the link to end bookmark node.
  NewDocumentPosition? _endRange;

  NewDocumentPosition? get endRange => _endRange;
  set endRange(NewDocumentPosition? val) => _endRange = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize BookmarkInsert data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }

    if (json.containsKey('StartRange')) {
      startRange = ModelBase.createInstance< NewDocumentPosition >(json['StartRange'] as Map<String, dynamic>);
    } else {
      startRange = null;
    }

    if (json.containsKey('EndRange')) {
      endRange = ModelBase.createInstance< NewDocumentPosition >(json['EndRange'] as Map<String, dynamic>);
    } else {
      endRange = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (startRange != null) {
      _result['StartRange'] = startRange!.serialize();
    }

    if (endRange != null) {
      _result['EndRange'] = endRange!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    startRange?.validate();



    endRange?.validate();

  }
}


