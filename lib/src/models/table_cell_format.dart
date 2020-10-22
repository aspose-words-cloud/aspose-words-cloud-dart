/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_cell_format.dart">
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

/// Represents all formatting for a table row.
class TableCellFormat extends LinkElement {
  /// Gets or sets returns or sets the amount of space (in points) to add below the contents of cell.
  double bottomPadding;

  /// Gets or sets if true, fits text in the cell, compressing each paragraph to the width of the cell.
  bool fitText;

  /// Gets or sets specifies how the cell is merged horizontally with other cells in the row.
  TableCellFormat_HorizontalMergeEnum horizontalMerge;

  /// Gets or sets returns or sets the amount of space (in points) to add to the left of the contents of cell.
  double leftPadding;

  /// Gets or sets returns or sets the orientation of text in a table cell.
  TableCellFormat_OrientationEnum orientation;

  /// Gets or sets returns or sets the preferred width of the cell.
  PreferredWidth preferredWidth;

  /// Gets or sets returns or sets the amount of space (in points) to add to the right of the contents of cell.
  double rightPadding;

  /// Gets or sets returns or sets the amount of space (in points) to add above the contents of cell.
  double topPadding;

  /// Gets or sets returns or sets the vertical alignment of text in the cell.
  TableCellFormat_VerticalAlignmentEnum verticalAlignment;

  /// Gets or sets specifies how the cell is merged with other cells vertically.
  TableCellFormat_VerticalMergeEnum verticalMerge;

  /// Gets or sets the width of the cell in points.
  double width;

  /// Gets or sets if true, wrap text for the cell.
  bool wrapText;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('BottomPadding')) {
      this.bottomPadding = json['BottomPadding'];
    } else {
      this.bottomPadding = null;
    }

    if (json.containsKey('FitText')) {
      this.fitText = json['FitText'];
    } else {
      this.fitText = null;
    }

    if (json.containsKey('HorizontalMerge')) {
      switch (json['HorizontalMerge']) {
        case 'None': this.horizontalMerge = TableCellFormat_HorizontalMergeEnum.none; break;
        case 'First': this.horizontalMerge = TableCellFormat_HorizontalMergeEnum.first; break;
        case 'Previous': this.horizontalMerge = TableCellFormat_HorizontalMergeEnum.previous; break;
        default: this.horizontalMerge = null; break;
      }
    } else {
      this.horizontalMerge = null;
    }

    if (json.containsKey('LeftPadding')) {
      this.leftPadding = json['LeftPadding'];
    } else {
      this.leftPadding = null;
    }

    if (json.containsKey('Orientation')) {
      switch (json['Orientation']) {
        case 'Horizontal': this.orientation = TableCellFormat_OrientationEnum.horizontal; break;
        case 'Downward': this.orientation = TableCellFormat_OrientationEnum.downward; break;
        case 'Upward': this.orientation = TableCellFormat_OrientationEnum.upward; break;
        case 'HorizontalRotatedFarEast': this.orientation = TableCellFormat_OrientationEnum.horizontalRotatedFarEast; break;
        case 'VerticalFarEast': this.orientation = TableCellFormat_OrientationEnum.verticalFarEast; break;
        case 'VerticalRotatedFarEast': this.orientation = TableCellFormat_OrientationEnum.verticalRotatedFarEast; break;
        default: this.orientation = null; break;
      }
    } else {
      this.orientation = null;
    }

    if (json.containsKey('PreferredWidth')) {
      this.preferredWidth = new PreferredWidth();
      this.preferredWidth.deserialize(json['PreferredWidth']);
    } else {
      this.preferredWidth = null;
    }

    if (json.containsKey('RightPadding')) {
      this.rightPadding = json['RightPadding'];
    } else {
      this.rightPadding = null;
    }

    if (json.containsKey('TopPadding')) {
      this.topPadding = json['TopPadding'];
    } else {
      this.topPadding = null;
    }

    if (json.containsKey('VerticalAlignment')) {
      switch (json['VerticalAlignment']) {
        case 'Top': this.verticalAlignment = TableCellFormat_VerticalAlignmentEnum.top; break;
        case 'Center': this.verticalAlignment = TableCellFormat_VerticalAlignmentEnum.center; break;
        case 'Bottom': this.verticalAlignment = TableCellFormat_VerticalAlignmentEnum.bottom; break;
        default: this.verticalAlignment = null; break;
      }
    } else {
      this.verticalAlignment = null;
    }

    if (json.containsKey('VerticalMerge')) {
      switch (json['VerticalMerge']) {
        case 'None': this.verticalMerge = TableCellFormat_VerticalMergeEnum.none; break;
        case 'First': this.verticalMerge = TableCellFormat_VerticalMergeEnum.first; break;
        case 'Previous': this.verticalMerge = TableCellFormat_VerticalMergeEnum.previous; break;
        default: this.verticalMerge = null; break;
      }
    } else {
      this.verticalMerge = null;
    }

    if (json.containsKey('Width')) {
      this.width = json['Width'];
    } else {
      this.width = null;
    }

    if (json.containsKey('WrapText')) {
      this.wrapText = json['WrapText'];
    } else {
      this.wrapText = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.bottomPadding != null) {
      _result['BottomPadding'] = this.bottomPadding;
    }

    if (this.fitText != null) {
      _result['FitText'] = this.fitText;
    }

    if (this.horizontalMerge != null) {
      switch (this.horizontalMerge) {
        case TableCellFormat_HorizontalMergeEnum.none: _result['HorizontalMerge'] = 'None'; break;
        case TableCellFormat_HorizontalMergeEnum.first: _result['HorizontalMerge'] = 'First'; break;
        case TableCellFormat_HorizontalMergeEnum.previous: _result['HorizontalMerge'] = 'Previous'; break;
        default: break;
      }
    }

    if (this.leftPadding != null) {
      _result['LeftPadding'] = this.leftPadding;
    }

    if (this.orientation != null) {
      switch (this.orientation) {
        case TableCellFormat_OrientationEnum.horizontal: _result['Orientation'] = 'Horizontal'; break;
        case TableCellFormat_OrientationEnum.downward: _result['Orientation'] = 'Downward'; break;
        case TableCellFormat_OrientationEnum.upward: _result['Orientation'] = 'Upward'; break;
        case TableCellFormat_OrientationEnum.horizontalRotatedFarEast: _result['Orientation'] = 'HorizontalRotatedFarEast'; break;
        case TableCellFormat_OrientationEnum.verticalFarEast: _result['Orientation'] = 'VerticalFarEast'; break;
        case TableCellFormat_OrientationEnum.verticalRotatedFarEast: _result['Orientation'] = 'VerticalRotatedFarEast'; break;
        default: break;
      }
    }

    if (this.preferredWidth != null) {
      _result['PreferredWidth'] = this.preferredWidth.serialize();
    }

    if (this.rightPadding != null) {
      _result['RightPadding'] = this.rightPadding;
    }

    if (this.topPadding != null) {
      _result['TopPadding'] = this.topPadding;
    }

    if (this.verticalAlignment != null) {
      switch (this.verticalAlignment) {
        case TableCellFormat_VerticalAlignmentEnum.top: _result['VerticalAlignment'] = 'Top'; break;
        case TableCellFormat_VerticalAlignmentEnum.center: _result['VerticalAlignment'] = 'Center'; break;
        case TableCellFormat_VerticalAlignmentEnum.bottom: _result['VerticalAlignment'] = 'Bottom'; break;
        default: break;
      }
    }

    if (this.verticalMerge != null) {
      switch (this.verticalMerge) {
        case TableCellFormat_VerticalMergeEnum.none: _result['VerticalMerge'] = 'None'; break;
        case TableCellFormat_VerticalMergeEnum.first: _result['VerticalMerge'] = 'First'; break;
        case TableCellFormat_VerticalMergeEnum.previous: _result['VerticalMerge'] = 'Previous'; break;
        default: break;
      }
    }

    if (this.width != null) {
      _result['Width'] = this.width;
    }

    if (this.wrapText != null) {
      _result['WrapText'] = this.wrapText;
    }
    return _result;
  }
}

/// Gets or sets specifies how the cell is merged horizontally with other cells in the row.
enum TableCellFormat_HorizontalMergeEnum
{ 
  none,
  first,
  previous
}

/// Gets or sets returns or sets the orientation of text in a table cell.
enum TableCellFormat_OrientationEnum
{ 
  horizontal,
  downward,
  upward,
  horizontalRotatedFarEast,
  verticalFarEast,
  verticalRotatedFarEast
}

/// Gets or sets returns or sets the vertical alignment of text in the cell.
enum TableCellFormat_VerticalAlignmentEnum
{ 
  top,
  center,
  bottom
}

/// Gets or sets specifies how the cell is merged with other cells vertically.
enum TableCellFormat_VerticalMergeEnum
{ 
  none,
  first,
  previous
}

