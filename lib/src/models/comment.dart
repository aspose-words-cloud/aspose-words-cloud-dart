/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="comment.dart">
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

/// DTO container with a comment.
class Comment extends CommentLink {
  /// Gets or sets the author name for a comment.
  String _author;

  String get author => _author;
  set author(String val) => _author = val;


  /// Gets or sets the content of the comment.
  StoryChildNodes _content;

  StoryChildNodes get content => _content;
  set content(StoryChildNodes val) => _content = val;


  /// Gets or sets the date and time that the comment was made.
  DateTime _dateTime;

  DateTime get dateTime => _dateTime;
  set dateTime(DateTime val) => _dateTime = val;


  /// Gets or sets the initials of the user associated with a specific comment.
  String _initial;

  String get initial => _initial;
  set initial(String val) => _initial = val;


  /// Gets or sets the link to comment range end node.
  DocumentPosition _rangeEnd;

  DocumentPosition get rangeEnd => _rangeEnd;
  set rangeEnd(DocumentPosition val) => _rangeEnd = val;


  /// Gets or sets the link to comment range start node.
  DocumentPosition _rangeStart;

  DocumentPosition get rangeStart => _rangeStart;
  set rangeStart(DocumentPosition val) => _rangeStart = val;


  /// Gets or sets text of the comment.
  String _text;

  String get text => _text;
  set text(String val) => _text = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Comment data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = WordsApiLink();
      link.deserialize(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Author')) {
      author = json['Author'] as String;
    } else {
      author = null;
    }

    if (json.containsKey('Content')) {
      content = StoryChildNodes();
      content.deserialize(json['Content'] as Map<String, dynamic>);
    } else {
      content = null;
    }

    if (json.containsKey('DateTime')) {
      dateTime = DateTime.parse(json['DateTime'] as String);
    } else {
      dateTime = null;
    }

    if (json.containsKey('Initial')) {
      initial = json['Initial'] as String;
    } else {
      initial = null;
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
    if (author != null) {
      _result['Author'] = author;
    }

    if (content != null) {
      _result['Content'] = content.serialize();
    }

    if (dateTime != null) {
      _result['DateTime'] = dateTime.toIso8601String();
    }

    if (initial != null) {
      _result['Initial'] = initial;
    }

    if (rangeEnd != null) {
      _result['RangeEnd'] = rangeEnd.serialize();
    }

    if (rangeStart != null) {
      _result['RangeStart'] = rangeStart.serialize();
    }

    if (text != null) {
      _result['Text'] = text;
    }
    return _result;
  }
}


