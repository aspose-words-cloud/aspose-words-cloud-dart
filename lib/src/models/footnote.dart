/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote.dart">
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

/// Footnote.
class Footnote extends FootnoteLink {
  /// Gets or sets content of footnote.
  StoryChildNodes content;

  /// Gets or sets returns a value that specifies whether this is a footnote or endnote.
  Footnote_FootnoteTypeEnum footnoteType;

  /// Gets or sets link to comment range start node.
  DocumentPosition position;

  /// Gets or sets /sets custom reference mark to be used for this footnote.
  /// Default value is Empty, meaning auto-numbered footnotes are used.
  String referenceMark;

  /// Gets or sets this is a convenience property that allows to easily get or set text of the footnote.
  String text;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Content')) {
      content = StoryChildNodes();
      content.deserialize(json['Content']);
    } else {
      content = null;
    }

    if (json.containsKey('FootnoteType')) {
      switch (json['FootnoteType']) {
        case 'Footnote': footnoteType = Footnote_FootnoteTypeEnum.footnote; break;
        case 'Endnote': footnoteType = Footnote_FootnoteTypeEnum.endnote; break;
        default: footnoteType = null; break;
      }
    } else {
      footnoteType = null;
    }

    if (json.containsKey('Position')) {
      position = DocumentPosition();
      position.deserialize(json['Position']);
    } else {
      position = null;
    }

    if (json.containsKey('ReferenceMark')) {
      referenceMark = json['ReferenceMark'];
    } else {
      referenceMark = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'];
    } else {
      text = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (content != null) {
      _result['Content'] = content.serialize();
    }

    if (footnoteType != null) {
      switch (footnoteType) {
        case Footnote_FootnoteTypeEnum.footnote: _result['FootnoteType'] = 'Footnote'; break;
        case Footnote_FootnoteTypeEnum.endnote: _result['FootnoteType'] = 'Endnote'; break;
        default: break;
      }
    }

    if (position != null) {
      _result['Position'] = position.serialize();
    }

    if (referenceMark != null) {
      _result['ReferenceMark'] = referenceMark;
    }

    if (text != null) {
      _result['Text'] = text;
    }
    return _result;
  }
}

/// Gets or sets returns a value that specifies whether this is a footnote or endnote.
enum Footnote_FootnoteTypeEnum
{ 
  footnote,
  endnote
}

