/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote_base.dart">
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

/// Footnote base class.
class FootnoteBase implements ModelBase {
  /// Gets or sets returns a value that specifies whether this is a footnote or endnote.
  FootnoteBase_FootnoteTypeEnum footnoteType;

  /// Gets or sets link to comment range start node.
  DocumentPosition position;

  /// Gets or sets /sets custom reference mark to be used for this footnote.
  /// Default value is Empty, meaning auto-numbered footnotes are used.
  String referenceMark;

  /// Gets or sets this is a convenience property that allows to easily get or set text of the footnote.
  String text;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('FootnoteType')) {
      switch (json['FootnoteType']) {
        case 'Footnote': this.footnoteType = FootnoteBase_FootnoteTypeEnum.footnote; break;
        case 'Endnote': this.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote; break;
        default: this.footnoteType = null; break;
      }
    } else {
      this.footnoteType = null;
    }

    if (json.containsKey('Position')) {
      this.position = new DocumentPosition();
      this.position.deserialize(json['Position']);
    } else {
      this.position = null;
    }

    if (json.containsKey('ReferenceMark')) {
      this.referenceMark = json['ReferenceMark'];
    } else {
      this.referenceMark = null;
    }

    if (json.containsKey('Text')) {
      this.text = json['Text'];
    } else {
      this.text = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.footnoteType != null) {
      switch (this.footnoteType) {
        case FootnoteBase_FootnoteTypeEnum.footnote: _result['FootnoteType'] = 'Footnote'; break;
        case FootnoteBase_FootnoteTypeEnum.endnote: _result['FootnoteType'] = 'Endnote'; break;
        default: break;
      }
    }

    if (this.position != null) {
      _result['Position'] = this.position.serialize();
    }

    if (this.referenceMark != null) {
      _result['ReferenceMark'] = this.referenceMark;
    }

    if (this.text != null) {
      _result['Text'] = this.text;
    }
    return _result;
  }
}

/// Gets or sets returns a value that specifies whether this is a footnote or endnote.
enum FootnoteBase_FootnoteTypeEnum
{ 
  footnote,
  endnote
}

