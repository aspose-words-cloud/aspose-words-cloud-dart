/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="search_result.dart">
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

/// Result of search operation.
class SearchResult implements ModelBase {
  /// Gets or sets the link to result range end node.
  DocumentPosition _rangeEnd;

  DocumentPosition get rangeEnd => _rangeEnd;
  set rangeEnd(DocumentPosition val) => _rangeEnd = val;


  /// Gets or sets the link to result range start node.
  DocumentPosition _rangeStart;

  DocumentPosition get rangeStart => _rangeStart;
  set rangeStart(DocumentPosition val) => _rangeStart = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SearchResult data model.');
    }

    if (json.containsKey('RangeEnd')) {
      rangeEnd = DocumentPosition();
      rangeEnd.deserialize(json['RangeEnd'] as Map<String, dynamic>);
    } else {
      rangeEnd = null;
    }

    if (json.containsKey('RangeStart')) {
      rangeStart = DocumentPosition();
      rangeStart.deserialize(json['RangeStart'] as Map<String, dynamic>);
    } else {
      rangeStart = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (rangeEnd != null) {
      _result['RangeEnd'] = rangeEnd.serialize();
    }

    if (rangeStart != null) {
      _result['RangeStart'] = rangeStart.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileContent> resultFilesContent) {
    if (rangeEnd != null)
    {
        rangeEnd.getFilesContent(resultFilesContent);
    }

    if (rangeStart != null)
    {
        rangeStart.getFilesContent(resultFilesContent);
    }

  }
}


