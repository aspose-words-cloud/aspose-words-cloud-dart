/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="split_document_result.dart">
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

/// Result of splitting document.
class SplitDocumentResult implements ModelBase {
  /// Gets or sets array of pages.
  List<FileLink> pages;

  /// Gets or sets linkt to the source document.
  FileLink sourceDocument;

  /// Gets or sets link to the file archive with pages.
  FileLink zippedPages;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Pages')) {
      // Array processing
      this.pages = new List<FileLink>();
      for(final _element in json['Pages']) {
        var _elementValue = new FileLink();
        _elementValue.deserialize(_element);
        this.pages.add(_elementValue);
      }
    } else {
      this.pages = null;
    }

    if (json.containsKey('SourceDocument')) {
      this.sourceDocument = new FileLink();
      this.sourceDocument.deserialize(json['SourceDocument']);
    } else {
      this.sourceDocument = null;
    }

    if (json.containsKey('ZippedPages')) {
      this.zippedPages = new FileLink();
      this.zippedPages.deserialize(json['ZippedPages']);
    } else {
      this.zippedPages = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.pages != null) {
      _result['Pages'] = this.pages.map((_element) => _element.serialize()).toList();
    }

    if (this.sourceDocument != null) {
      _result['SourceDocument'] = this.sourceDocument.serialize();
    }

    if (this.zippedPages != null) {
      _result['ZippedPages'] = this.zippedPages.serialize();
    }
    return _result;
  }
}


