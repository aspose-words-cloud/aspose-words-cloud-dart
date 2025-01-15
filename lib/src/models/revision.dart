/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="revision.dart">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

/// Revision Dto.
class Revision implements ModelBase {
  /// Gets or sets the revision author.
  String? _revisionAuthor;

  String? get revisionAuthor => _revisionAuthor;
  set revisionAuthor(String? val) => _revisionAuthor = val;


  /// Gets or sets the revision date time.
  DateTime? _revisionDateTime;

  DateTime? get revisionDateTime => _revisionDateTime;
  set revisionDateTime(DateTime? val) => _revisionDateTime = val;


  /// Gets or sets the revision text.
  String? _revisionText;

  String? get revisionText => _revisionText;
  set revisionText(String? val) => _revisionText = val;


  /// Gets or sets the revision type.
  String? _revisionType;

  String? get revisionType => _revisionType;
  set revisionType(String? val) => _revisionType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Revision data model.');
    }

    if (json.containsKey('RevisionAuthor')) {
      revisionAuthor = json['RevisionAuthor'] as String;
    } else {
      revisionAuthor = null;
    }

    if (json.containsKey('RevisionDateTime')) {
      revisionDateTime = DateTime.parse(json['RevisionDateTime'] as String);
    } else {
      revisionDateTime = null;
    }

    if (json.containsKey('RevisionText')) {
      revisionText = json['RevisionText'] as String;
    } else {
      revisionText = null;
    }

    if (json.containsKey('RevisionType')) {
      revisionType = json['RevisionType'] as String;
    } else {
      revisionType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (revisionAuthor != null) {
      _result['RevisionAuthor'] = revisionAuthor!;
    }

    if (revisionDateTime != null) {
      _result['RevisionDateTime'] = revisionDateTime!.toIso8601String();
    }

    if (revisionText != null) {
      _result['RevisionText'] = revisionText!;
    }

    if (revisionType != null) {
      _result['RevisionType'] = revisionType!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (revisionDateTime == null)
    {
        throw new ApiException(400, 'Property RevisionDateTime in Revision is required.');
    }
  }
}


