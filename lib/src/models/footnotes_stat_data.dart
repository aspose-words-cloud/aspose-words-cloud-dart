/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnotes_stat_data.dart">
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

/// Container for the footnotes statistical data.
class FootnotesStatData implements ModelBase {
  /// Gets or sets total count of paragraphs in footnotes.
  int paragraphCount;

  /// Gets or sets total count of words in footnotes.
  int wordCount;

  @override
  void deserialize(Map<String, dynamic> json) {
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
    if (this.paragraphCount != null) {
      _result['ParagraphCount'] = this.paragraphCount;
    }

    if (this.wordCount != null) {
      _result['WordCount'] = this.wordCount;
    }
    return _result;
  }
}


