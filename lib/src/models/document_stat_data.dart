/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_stat_data.dart">
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

/// Container for the document's statistical data.
class DocumentStatData implements ModelBase {
  /// Gets or sets the detailed statistics on footnotes.
  FootnotesStatData _footnotesStatData;

  FootnotesStatData get footnotesStatData => _footnotesStatData;
  set footnotesStatData(FootnotesStatData val) => _footnotesStatData = val;


  /// Gets or sets the total count of pages in the document.
  int _pageCount;

  int get pageCount => _pageCount;
  set pageCount(int val) => _pageCount = val;


  /// Gets or sets the detailed statistics on all pages.
  List<PageStatData> _pageStatData;

  List<PageStatData> get pageStatData => _pageStatData;
  set pageStatData(List<PageStatData> val) => _pageStatData = val;


  /// Gets or sets the total count of paragraphs in the document.
  int _paragraphCount;

  int get paragraphCount => _paragraphCount;
  set paragraphCount(int val) => _paragraphCount = val;


  /// Gets or sets the total count of words in the document.
  int _wordCount;

  int get wordCount => _wordCount;
  set wordCount(int val) => _wordCount = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentStatData data model.');
    }

    if (json.containsKey('FootnotesStatData')) {
      footnotesStatData = FootnotesStatData();
      footnotesStatData.deserialize(json['FootnotesStatData'] as Map<String, dynamic>);
    } else {
      footnotesStatData = null;
    }

    if (json.containsKey('PageCount')) {
      pageCount = json['PageCount'] as int;
    } else {
      pageCount = null;
    }

    if (json.containsKey('PageStatData')) {
      // Array processing
      pageStatData = <PageStatData>[];
      for(final _element in json['PageStatData']) {
        var _elementValue = PageStatData();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        pageStatData.add(_elementValue);
      }
    } else {
      pageStatData = null;
    }

    if (json.containsKey('ParagraphCount')) {
      paragraphCount = json['ParagraphCount'] as int;
    } else {
      paragraphCount = null;
    }

    if (json.containsKey('WordCount')) {
      wordCount = json['WordCount'] as int;
    } else {
      wordCount = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (footnotesStatData != null) {
      _result['FootnotesStatData'] = footnotesStatData.serialize();
    }

    if (pageCount != null) {
      _result['PageCount'] = pageCount;
    }

    if (pageStatData != null) {
      _result['PageStatData'] = pageStatData.map((_element) => _element.serialize()).toList();
    }

    if (paragraphCount != null) {
      _result['ParagraphCount'] = paragraphCount;
    }

    if (wordCount != null) {
      _result['WordCount'] = wordCount;
    }
    return _result;
  }
}


