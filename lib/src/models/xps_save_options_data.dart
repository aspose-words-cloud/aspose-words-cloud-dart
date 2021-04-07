/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="xps_save_options_data.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

/// Container class for xps save options.
class XpsSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the level in the XPS document outline at which to display Word bookmarks.
  int bookmarksOutlineLevel;

  /// Gets or sets the number of heading levels (paragraphs formatted with the Heading styles) to include in the XPS document outline.
  int headingsOutlineLevels;

  /// Gets or sets the outline options.
  OutlineOptionsData outlineOptions;

  /// Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
  bool useBookFoldPrintingSettings;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize XpsSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('BookmarksOutlineLevel')) {
      bookmarksOutlineLevel = json['BookmarksOutlineLevel'] as int;
    } else {
      bookmarksOutlineLevel = null;
    }

    if (json.containsKey('HeadingsOutlineLevels')) {
      headingsOutlineLevels = json['HeadingsOutlineLevels'] as int;
    } else {
      headingsOutlineLevels = null;
    }

    if (json.containsKey('OutlineOptions')) {
      outlineOptions = OutlineOptionsData();
      outlineOptions.deserialize(json['OutlineOptions'] as Map<String, dynamic>);
    } else {
      outlineOptions = null;
    }

    if (json.containsKey('UseBookFoldPrintingSettings')) {
      useBookFoldPrintingSettings = json['UseBookFoldPrintingSettings'] as bool;
    } else {
      useBookFoldPrintingSettings = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (bookmarksOutlineLevel != null) {
      _result['BookmarksOutlineLevel'] = bookmarksOutlineLevel;
    }

    if (headingsOutlineLevels != null) {
      _result['HeadingsOutlineLevels'] = headingsOutlineLevels;
    }

    if (outlineOptions != null) {
      _result['OutlineOptions'] = outlineOptions.serialize();
    }

    if (useBookFoldPrintingSettings != null) {
      _result['UseBookFoldPrintingSettings'] = useBookFoldPrintingSettings;
    }
    return _result;
  }
}


