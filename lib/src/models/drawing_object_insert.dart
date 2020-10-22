/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object_insert.dart">
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

/// Drawing object element for insert.
class DrawingObjectInsert implements ModelBase {
  /// Gets or sets height of the drawing object in points.
  double height;

  /// Gets or sets distance in points from the origin to the left side of the image.
  double left;

  /// Gets or sets drawing object will be inserted before specified position.
  DocumentPosition position;

  /// Gets or sets specifies where the distance to the image is measured from.
  DrawingObjectInsert_RelativeHorizontalPositionEnum relativeHorizontalPosition;

  /// Gets or sets specifies where the distance to the image measured from.
  DrawingObjectInsert_RelativeVerticalPositionEnum relativeVerticalPosition;

  /// Gets or sets distance in points from the origin to the top side of the image.
  double top;

  /// Gets or sets width of the drawing objects in points.
  double width;

  /// Gets or sets specifies how to wrap text around the image.
  DrawingObjectInsert_WrapTypeEnum wrapType;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Height')) {
      this.height = json['Height'];
    } else {
      this.height = null;
    }

    if (json.containsKey('Left')) {
      this.left = json['Left'];
    } else {
      this.left = null;
    }

    if (json.containsKey('Position')) {
      this.position = new DocumentPosition();
      this.position.deserialize(json['Position']);
    } else {
      this.position = null;
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition']) {
        case 'Margin': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.page; break;
        case 'Column': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.column; break;
        case 'Default': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.default_; break;
        case 'Character': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': this.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.outsideMargin; break;
        default: this.relativeHorizontalPosition = null; break;
      }
    } else {
      this.relativeHorizontalPosition = null;
    }

    if (json.containsKey('RelativeVerticalPosition')) {
      switch (json['RelativeVerticalPosition']) {
        case 'Margin': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': this.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.outsideMargin; break;
        default: this.relativeVerticalPosition = null; break;
      }
    } else {
      this.relativeVerticalPosition = null;
    }

    if (json.containsKey('Top')) {
      this.top = json['Top'];
    } else {
      this.top = null;
    }

    if (json.containsKey('Width')) {
      this.width = json['Width'];
    } else {
      this.width = null;
    }

    if (json.containsKey('WrapType')) {
      switch (json['WrapType']) {
        case 'Inline': this.wrapType = DrawingObjectInsert_WrapTypeEnum.inline; break;
        case 'TopBottom': this.wrapType = DrawingObjectInsert_WrapTypeEnum.topBottom; break;
        case 'Square': this.wrapType = DrawingObjectInsert_WrapTypeEnum.square; break;
        case 'None': this.wrapType = DrawingObjectInsert_WrapTypeEnum.none; break;
        case 'Tight': this.wrapType = DrawingObjectInsert_WrapTypeEnum.tight; break;
        case 'Through': this.wrapType = DrawingObjectInsert_WrapTypeEnum.through; break;
        default: this.wrapType = null; break;
      }
    } else {
      this.wrapType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.height != null) {
      _result['Height'] = this.height;
    }

    if (this.left != null) {
      _result['Left'] = this.left;
    }

    if (this.position != null) {
      _result['Position'] = this.position.serialize();
    }

    if (this.relativeHorizontalPosition != null) {
      switch (this.relativeHorizontalPosition) {
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.default_: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (this.relativeVerticalPosition != null) {
      switch (this.relativeVerticalPosition) {
        case DrawingObjectInsert_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (this.top != null) {
      _result['Top'] = this.top;
    }

    if (this.width != null) {
      _result['Width'] = this.width;
    }

    if (this.wrapType != null) {
      switch (this.wrapType) {
        case DrawingObjectInsert_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObjectInsert_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObjectInsert_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObjectInsert_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObjectInsert_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObjectInsert_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specifies where the distance to the image is measured from.
enum DrawingObjectInsert_RelativeHorizontalPositionEnum
{ 
  margin,
  page,
  column,
  default_,
  character,
  leftMargin,
  rightMargin,
  insideMargin,
  outsideMargin
}

/// Gets or sets specifies where the distance to the image measured from.
enum DrawingObjectInsert_RelativeVerticalPositionEnum
{ 
  margin,
  tableDefault,
  page,
  paragraph,
  textFrameDefault,
  line,
  topMargin,
  bottomMargin,
  insideMargin,
  outsideMargin
}

/// Gets or sets specifies how to wrap text around the image.
enum DrawingObjectInsert_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

