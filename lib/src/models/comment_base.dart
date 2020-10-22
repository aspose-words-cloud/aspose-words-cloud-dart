/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="comment_base.dart">
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

/// Comment.
class CommentBase implements ModelBase {
  /// Gets or sets returns or sets the author name for a comment.
  String author;

  /// Gets or sets the date and time that the comment was made.
  DateTime dateTime;

  /// Gets or sets returns or sets the initials of the user associated with a specific comment.
  String initial;

  /// Gets or sets link to comment range end node.
  DocumentPosition rangeEnd;

  /// Gets or sets link to comment range start node.
  DocumentPosition rangeStart;

  /// Gets or sets this is a convenience property that allows to easily get or set text of the comment.
  String text;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Author')) {
      this.author = json['Author'];
    } else {
      this.author = null;
    }

    if (json.containsKey('DateTime')) {
      this.dateTime = DateTime.parse(json['DateTime']);
    } else {
      this.dateTime = null;
    }

    if (json.containsKey('Initial')) {
      this.initial = json['Initial'];
    } else {
      this.initial = null;
    }

    if (json.containsKey('RangeEnd')) {
      this.rangeEnd = new DocumentPosition();
      this.rangeEnd.deserialize(json['RangeEnd']);
    } else {
      this.rangeEnd = null;
    }

    if (json.containsKey('RangeStart')) {
      this.rangeStart = new DocumentPosition();
      this.rangeStart.deserialize(json['RangeStart']);
    } else {
      this.rangeStart = null;
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
    if (this.author != null) {
      _result['Author'] = this.author;
    }

    if (this.dateTime != null) {
      _result['DateTime'] = this.dateTime.toIso8601String();
    }

    if (this.initial != null) {
      _result['Initial'] = this.initial;
    }

    if (this.rangeEnd != null) {
      _result['RangeEnd'] = this.rangeEnd.serialize();
    }

    if (this.rangeStart != null) {
      _result['RangeStart'] = this.rangeStart.serialize();
    }

    if (this.text != null) {
      _result['Text'] = this.text;
    }
    return _result;
  }
}


