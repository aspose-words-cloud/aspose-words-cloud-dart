/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object.dart">
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

/// Represents Drawing Object DTO.
class DrawingObject extends DrawingObjectLink {
  /// Gets or sets height of the drawing object in points.
  double height;

  /// Gets or sets link to image data. Can be null if shape does not have an image.
  WordsApiLink imageDataLink;

  /// Gets or sets distance in points from the origin to the left side of the image.
  double left;

  /// Gets or sets link to ole object. Can be null if shape does not have ole data.
  WordsApiLink oleDataLink;

  /// Gets or sets specifies where the distance to the image is measured from.
  DrawingObject_RelativeHorizontalPositionEnum relativeHorizontalPosition;

  /// Gets or sets specifies where the distance to the image measured from.
  DrawingObject_RelativeVerticalPositionEnum relativeVerticalPosition;

  /// Gets or sets a list of links that originate from this DrawingObjectDto.
  List<WordsApiLink> renderLinks;

  /// Gets or sets distance in points from the origin to the top side of the image.
  double top;

  /// Gets or sets width of the drawing objects in points.
  double width;

  /// Gets or sets specifies how to wrap text around the image.
  DrawingObject_WrapTypeEnum wrapType;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Height')) {
      this.height = json['Height'];
    } else {
      this.height = null;
    }

    if (json.containsKey('ImageDataLink')) {
      this.imageDataLink = new WordsApiLink();
      this.imageDataLink.deserialize(json['ImageDataLink']);
    } else {
      this.imageDataLink = null;
    }

    if (json.containsKey('Left')) {
      this.left = json['Left'];
    } else {
      this.left = null;
    }

    if (json.containsKey('OleDataLink')) {
      this.oleDataLink = new WordsApiLink();
      this.oleDataLink.deserialize(json['OleDataLink']);
    } else {
      this.oleDataLink = null;
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition']) {
        case 'Margin': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.page; break;
        case 'Column': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.column; break;
        case 'Default': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.default_; break;
        case 'Character': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': this.relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.outsideMargin; break;
        default: this.relativeHorizontalPosition = null; break;
      }
    } else {
      this.relativeHorizontalPosition = null;
    }

    if (json.containsKey('RelativeVerticalPosition')) {
      switch (json['RelativeVerticalPosition']) {
        case 'Margin': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': this.relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.outsideMargin; break;
        default: this.relativeVerticalPosition = null; break;
      }
    } else {
      this.relativeVerticalPosition = null;
    }

    if (json.containsKey('RenderLinks')) {
      // Array processing
      this.renderLinks = new List<WordsApiLink>();
      for(final _element in json['RenderLinks']) {
        var _elementValue = new WordsApiLink();
        _elementValue.deserialize(_element);
        this.renderLinks.add(_elementValue);
      }
    } else {
      this.renderLinks = null;
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
        case 'Inline': this.wrapType = DrawingObject_WrapTypeEnum.inline; break;
        case 'TopBottom': this.wrapType = DrawingObject_WrapTypeEnum.topBottom; break;
        case 'Square': this.wrapType = DrawingObject_WrapTypeEnum.square; break;
        case 'None': this.wrapType = DrawingObject_WrapTypeEnum.none; break;
        case 'Tight': this.wrapType = DrawingObject_WrapTypeEnum.tight; break;
        case 'Through': this.wrapType = DrawingObject_WrapTypeEnum.through; break;
        default: this.wrapType = null; break;
      }
    } else {
      this.wrapType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.height != null) {
      _result['Height'] = this.height;
    }

    if (this.imageDataLink != null) {
      _result['ImageDataLink'] = this.imageDataLink.serialize();
    }

    if (this.left != null) {
      _result['Left'] = this.left;
    }

    if (this.oleDataLink != null) {
      _result['OleDataLink'] = this.oleDataLink.serialize();
    }

    if (this.relativeHorizontalPosition != null) {
      switch (this.relativeHorizontalPosition) {
        case DrawingObject_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.default_: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (this.relativeVerticalPosition != null) {
      switch (this.relativeVerticalPosition) {
        case DrawingObject_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObject_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObject_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObject_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObject_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObject_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (this.renderLinks != null) {
      _result['RenderLinks'] = this.renderLinks.map((_element) => _element.serialize()).toList();
    }

    if (this.top != null) {
      _result['Top'] = this.top;
    }

    if (this.width != null) {
      _result['Width'] = this.width;
    }

    if (this.wrapType != null) {
      switch (this.wrapType) {
        case DrawingObject_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObject_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObject_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObject_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObject_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObject_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specifies where the distance to the image is measured from.
enum DrawingObject_RelativeHorizontalPositionEnum
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
enum DrawingObject_RelativeVerticalPositionEnum
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
enum DrawingObject_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

