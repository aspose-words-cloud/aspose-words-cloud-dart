/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object_update.dart">
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

/// Drawing object element for update.
class DrawingObjectUpdate implements ModelBase {
  /// Gets or sets height of the drawing object in points.
  double height;

  /// Gets or sets distance in points from the origin to the left side of the image.
  double left;

  /// Gets or sets specifies where the distance to the image is measured from.
  DrawingObjectUpdate_RelativeHorizontalPositionEnum relativeHorizontalPosition;

  /// Gets or sets specifies where the distance to the image measured from.
  DrawingObjectUpdate_RelativeVerticalPositionEnum relativeVerticalPosition;

  /// Gets or sets distance in points from the origin to the top side of the image.
  double top;

  /// Gets or sets width of the drawing objects in points.
  double width;

  /// Gets or sets specifies how to wrap text around the image.
  DrawingObjectUpdate_WrapTypeEnum wrapType;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Height')) {
      height = json['Height'];
    } else {
      height = null;
    }

    if (json.containsKey('Left')) {
      left = json['Left'];
    } else {
      left = null;
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition']) {
        case 'Margin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.page; break;
        case 'Column': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.column; break;
        case 'Default': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.default_; break;
        case 'Character': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.outsideMargin; break;
        default: relativeHorizontalPosition = null; break;
      }
    } else {
      relativeHorizontalPosition = null;
    }

    if (json.containsKey('RelativeVerticalPosition')) {
      switch (json['RelativeVerticalPosition']) {
        case 'Margin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.outsideMargin; break;
        default: relativeVerticalPosition = null; break;
      }
    } else {
      relativeVerticalPosition = null;
    }

    if (json.containsKey('Top')) {
      top = json['Top'];
    } else {
      top = null;
    }

    if (json.containsKey('Width')) {
      width = json['Width'];
    } else {
      width = null;
    }

    if (json.containsKey('WrapType')) {
      switch (json['WrapType']) {
        case 'Inline': wrapType = DrawingObjectUpdate_WrapTypeEnum.inline; break;
        case 'TopBottom': wrapType = DrawingObjectUpdate_WrapTypeEnum.topBottom; break;
        case 'Square': wrapType = DrawingObjectUpdate_WrapTypeEnum.square; break;
        case 'None': wrapType = DrawingObjectUpdate_WrapTypeEnum.none; break;
        case 'Tight': wrapType = DrawingObjectUpdate_WrapTypeEnum.tight; break;
        case 'Through': wrapType = DrawingObjectUpdate_WrapTypeEnum.through; break;
        default: wrapType = null; break;
      }
    } else {
      wrapType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (height != null) {
      _result['Height'] = height;
    }

    if (left != null) {
      _result['Left'] = left;
    }

    if (relativeHorizontalPosition != null) {
      switch (relativeHorizontalPosition) {
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.default_: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (relativeVerticalPosition != null) {
      switch (relativeVerticalPosition) {
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (top != null) {
      _result['Top'] = top;
    }

    if (width != null) {
      _result['Width'] = width;
    }

    if (wrapType != null) {
      switch (wrapType) {
        case DrawingObjectUpdate_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObjectUpdate_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObjectUpdate_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObjectUpdate_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObjectUpdate_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObjectUpdate_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specifies where the distance to the image is measured from.
enum DrawingObjectUpdate_RelativeHorizontalPositionEnum
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
enum DrawingObjectUpdate_RelativeVerticalPositionEnum
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
enum DrawingObjectUpdate_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

