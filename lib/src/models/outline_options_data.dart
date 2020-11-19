/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="outline_options_data.dart">
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

/// Container class for outline options.
class OutlineOptionsData implements ModelBase {
  /// Gets or sets the individual bookmarks outline level.
  List<BookmarksOutlineLevelData> bookmarksOutlineLevels;

  /// Gets or sets a value indicating whether to create missing outline levels when the document is exported. The default value is false.
  bool createMissingOutlineLevels;

  /// Gets or sets a value indicating whether to create outlines for headings (paragraphs formatted with the Heading styles) inside tables.
  bool createOutlinesForHeadingsInTables;

  /// Gets or sets the default level in the document outline at which to display Word bookmarks.
  int defaultBookmarksOutlineLevel;

  /// Gets or sets the number of levels in the document outline to show expanded when the file is viewed.
  int expandedOutlineLevels;

  /// Gets or sets the number of levels of headings (paragraphs formatted with the Heading styles) to include in the document outline.
  int headingsOutlineLevels;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OutlineOptionsData data model.');
    }

    if (json.containsKey('BookmarksOutlineLevels')) {
      // Array processing
      bookmarksOutlineLevels = <BookmarksOutlineLevelData>[];
      for(final _element in json['BookmarksOutlineLevels']) {
        var _elementValue = BookmarksOutlineLevelData();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        bookmarksOutlineLevels.add(_elementValue);
      }
    } else {
      bookmarksOutlineLevels = null;
    }

    if (json.containsKey('CreateMissingOutlineLevels')) {
      createMissingOutlineLevels = json['CreateMissingOutlineLevels'] as bool;
    } else {
      createMissingOutlineLevels = null;
    }

    if (json.containsKey('CreateOutlinesForHeadingsInTables')) {
      createOutlinesForHeadingsInTables = json['CreateOutlinesForHeadingsInTables'] as bool;
    } else {
      createOutlinesForHeadingsInTables = null;
    }

    if (json.containsKey('DefaultBookmarksOutlineLevel')) {
      defaultBookmarksOutlineLevel = json['DefaultBookmarksOutlineLevel'] as int;
    } else {
      defaultBookmarksOutlineLevel = null;
    }

    if (json.containsKey('ExpandedOutlineLevels')) {
      expandedOutlineLevels = json['ExpandedOutlineLevels'] as int;
    } else {
      expandedOutlineLevels = null;
    }

    if (json.containsKey('HeadingsOutlineLevels')) {
      headingsOutlineLevels = json['HeadingsOutlineLevels'] as int;
    } else {
      headingsOutlineLevels = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (bookmarksOutlineLevels != null) {
      _result['BookmarksOutlineLevels'] = bookmarksOutlineLevels.map((_element) => _element.serialize()).toList();
    }

    if (createMissingOutlineLevels != null) {
      _result['CreateMissingOutlineLevels'] = createMissingOutlineLevels;
    }

    if (createOutlinesForHeadingsInTables != null) {
      _result['CreateOutlinesForHeadingsInTables'] = createOutlinesForHeadingsInTables;
    }

    if (defaultBookmarksOutlineLevel != null) {
      _result['DefaultBookmarksOutlineLevel'] = defaultBookmarksOutlineLevel;
    }

    if (expandedOutlineLevels != null) {
      _result['ExpandedOutlineLevels'] = expandedOutlineLevels;
    }

    if (headingsOutlineLevels != null) {
      _result['HeadingsOutlineLevels'] = headingsOutlineLevels;
    }
    return _result;
  }
}


