/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="xps_save_options_data.dart">
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

/// Container class for xps save options.
class XpsSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets specifies the level in the XPS document outline at which to display Word bookmarks.
  int bookmarksOutlineLevel;

  /// Gets or sets specifies how many levels of headings (paragraphs formatted with the Heading styles) to include in the XPS document outline.
  int headingsOutlineLevels;

  /// Gets or sets allows to specify outline options.
  OutlineOptionsData outlineOptions;

  /// Gets or sets determines whether the document should be saved using a booklet printing layout.
  bool useBookFoldPrintingSettings;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('BookmarksOutlineLevel')) {
      this.bookmarksOutlineLevel = json['BookmarksOutlineLevel'];
    } else {
      this.bookmarksOutlineLevel = null;
    }

    if (json.containsKey('HeadingsOutlineLevels')) {
      this.headingsOutlineLevels = json['HeadingsOutlineLevels'];
    } else {
      this.headingsOutlineLevels = null;
    }

    if (json.containsKey('OutlineOptions')) {
      this.outlineOptions = new OutlineOptionsData();
      this.outlineOptions.deserialize(json['OutlineOptions']);
    } else {
      this.outlineOptions = null;
    }

    if (json.containsKey('UseBookFoldPrintingSettings')) {
      this.useBookFoldPrintingSettings = json['UseBookFoldPrintingSettings'];
    } else {
      this.useBookFoldPrintingSettings = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.bookmarksOutlineLevel != null) {
      _result['BookmarksOutlineLevel'] = this.bookmarksOutlineLevel;
    }

    if (this.headingsOutlineLevels != null) {
      _result['HeadingsOutlineLevels'] = this.headingsOutlineLevels;
    }

    if (this.outlineOptions != null) {
      _result['OutlineOptions'] = this.outlineOptions.serialize();
    }

    if (this.useBookFoldPrintingSettings != null) {
      _result['UseBookFoldPrintingSettings'] = this.useBookFoldPrintingSettings;
    }
    return _result;
  }
}


