/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="section.dart">
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

/// Section element.
class Section extends LinkElement {
  /// Gets or sets child nodes.
  List<NodeLink> childNodes;

  /// Gets or sets link to HeaderFooters resource.
  LinkElement headerFooters;

  /// Gets or sets link to PageSetup resource.
  LinkElement pageSetup;

  /// Gets or sets link to Paragraphs resource.
  LinkElement paragraphs;

  /// Gets or sets link to Tables resource.
  LinkElement tables;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ChildNodes')) {
      // Array processing
      this.childNodes = new List<NodeLink>();
      for(final _element in json['ChildNodes']) {
        var _elementValue = new NodeLink();
        _elementValue.deserialize(_element);
        this.childNodes.add(_elementValue);
      }
    } else {
      this.childNodes = null;
    }

    if (json.containsKey('HeaderFooters')) {
      this.headerFooters = new LinkElement();
      this.headerFooters.deserialize(json['HeaderFooters']);
    } else {
      this.headerFooters = null;
    }

    if (json.containsKey('PageSetup')) {
      this.pageSetup = new LinkElement();
      this.pageSetup.deserialize(json['PageSetup']);
    } else {
      this.pageSetup = null;
    }

    if (json.containsKey('Paragraphs')) {
      this.paragraphs = new LinkElement();
      this.paragraphs.deserialize(json['Paragraphs']);
    } else {
      this.paragraphs = null;
    }

    if (json.containsKey('Tables')) {
      this.tables = new LinkElement();
      this.tables.deserialize(json['Tables']);
    } else {
      this.tables = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.childNodes != null) {
      _result['ChildNodes'] = this.childNodes.map((_element) => _element.serialize()).toList();
    }

    if (this.headerFooters != null) {
      _result['HeaderFooters'] = this.headerFooters.serialize();
    }

    if (this.pageSetup != null) {
      _result['PageSetup'] = this.pageSetup.serialize();
    }

    if (this.paragraphs != null) {
      _result['Paragraphs'] = this.paragraphs.serialize();
    }

    if (this.tables != null) {
      _result['Tables'] = this.tables.serialize();
    }
    return _result;
  }
}


