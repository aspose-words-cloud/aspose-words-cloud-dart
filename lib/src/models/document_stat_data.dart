/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_stat_data.dart">
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

/// Container for the document's statistical data.
class DocumentStatData implements ModelBase {
  /// Gets or sets detailed statistics of footnotes.
  FootnotesStatData footnotesStatData;

  /// Gets or sets total count of pages in the document.
  int pageCount;

  /// Gets or sets detailed statistics of all pages.
  List<PageStatData> pageStatData;

  /// Gets or sets total count of paragraphs in the document.
  int paragraphCount;

  /// Gets or sets total count of words in the document.
  int wordCount;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('FootnotesStatData')) {
      this.footnotesStatData = new FootnotesStatData();
      this.footnotesStatData.deserialize(json['FootnotesStatData']);
    } else {
      this.footnotesStatData = null;
    }

    if (json.containsKey('PageCount')) {
      this.pageCount = json['PageCount'];
    } else {
      this.pageCount = null;
    }

    if (json.containsKey('PageStatData')) {
      // Array processing
      this.pageStatData = new List<PageStatData>();
      for(final _element in json['PageStatData']) {
        var _elementValue = new PageStatData();
        _elementValue.deserialize(_element);
        this.pageStatData.add(_elementValue);
      }
    } else {
      this.pageStatData = null;
    }

    if (json.containsKey('ParagraphCount')) {
      this.paragraphCount = json['ParagraphCount'];
    } else {
      this.paragraphCount = null;
    }

    if (json.containsKey('WordCount')) {
      this.wordCount = json['WordCount'];
    } else {
      this.wordCount = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.footnotesStatData != null) {
      _result['FootnotesStatData'] = this.footnotesStatData.serialize();
    }

    if (this.pageCount != null) {
      _result['PageCount'] = this.pageCount;
    }

    if (this.pageStatData != null) {
      _result['PageStatData'] = this.pageStatData.map((_element) => _element.serialize()).toList();
    }

    if (this.paragraphCount != null) {
      _result['ParagraphCount'] = this.paragraphCount;
    }

    if (this.wordCount != null) {
      _result['WordCount'] = this.wordCount;
    }
    return _result;
  }
}


