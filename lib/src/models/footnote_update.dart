/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote_update.dart">
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

/// Footnote for update.
class FootnoteUpdate extends FootnoteBase {

  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FootnoteUpdate data model.');
    }

    super.deserialize(json);
    if (json.containsKey('FootnoteType')) {
      switch (json['FootnoteType'] as String) {
        case 'Footnote': footnoteType = FootnoteBase_FootnoteTypeEnum.footnote; break;
        case 'Endnote': footnoteType = FootnoteBase_FootnoteTypeEnum.endnote; break;
        default: footnoteType = null; break;
      }
    } else {
      footnoteType = null;
    }

    if (json.containsKey('Position')) {
      position = ModelBase.createInstance< NewDocumentPosition >(json['Position'] as Map<String, dynamic>);
    } else {
      position = null;
    }

    if (json.containsKey('ReferenceMark')) {
      referenceMark = json['ReferenceMark'] as String;
    } else {
      referenceMark = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }
}


