/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="watermark_data_text.dart">
 *   Copyright (c) 2026 Aspose.Words for Cloud
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

/// Class for insert watermark text request building.
class WatermarkDataText extends WatermarkDataBase {
  /// Gets or sets font color. The default value is System.Drawing.Color.Silver.
  XmlColor? _color;

  XmlColor? get color => _color;
  set color(XmlColor? val) => _color = val;


  /// Gets or sets font family name. The default value is "Calibri".
  String? _fontFamily;

  String? get fontFamily => _fontFamily;
  set fontFamily(String? val) => _fontFamily = val;


  /// Gets or sets a font size. The default value is 0 - auto.
  /// Valid values range from 0 to 65.5 inclusive. Auto font size means that the watermark will be scaled to its max width and max height relative to the page margins.
  double? _fontSize;

  double? get fontSize => _fontSize;
  set fontSize(double? val) => _fontSize = val;


  /// Gets or sets a boolean value which is responsible for opacity of the watermark. The default value is true.
  bool? _isSemitrasparent;

  bool? get isSemitrasparent => _isSemitrasparent;
  set isSemitrasparent(bool? val) => _isSemitrasparent = val;


  /// Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
  WatermarkDataText_LayoutEnum? _layout;

  WatermarkDataText_LayoutEnum? get layout => _layout;
  set layout(WatermarkDataText_LayoutEnum? val) => _layout = val;


  /// Gets or sets the watermark text.
  String? _text;

  String? get text => _text;
  set text(String? val) => _text = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize WatermarkDataText data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Color')) {
      color = ModelBase.createInstance< XmlColor >(json['Color'] as Map<String, dynamic>);
    } else {
      color = null;
    }

    if (json.containsKey('FontFamily')) {
      fontFamily = json['FontFamily'] as String;
    } else {
      fontFamily = null;
    }

    if (json.containsKey('FontSize')) {
      fontSize = json['FontSize'] as double;
    } else {
      fontSize = null;
    }

    if (json.containsKey('IsSemitrasparent')) {
      isSemitrasparent = json['IsSemitrasparent'] as bool;
    } else {
      isSemitrasparent = null;
    }

    if (json.containsKey('Layout')) {
      switch (json['Layout'] as String) {
        case 'Horizontal': layout = WatermarkDataText_LayoutEnum.horizontal; break;
        case 'Diagonal': layout = WatermarkDataText_LayoutEnum.diagonal; break;
        default: layout = null; break;
      }
    } else {
      layout = null;
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
    if (color != null) {
      _result['Color'] = color!.serialize();
    }

    if (fontFamily != null) {
      _result['FontFamily'] = fontFamily!;
    }

    if (fontSize != null) {
      _result['FontSize'] = fontSize!;
    }

    if (isSemitrasparent != null) {
      _result['IsSemitrasparent'] = isSemitrasparent!;
    }

    if (layout != null) {
      switch (layout!) {
        case WatermarkDataText_LayoutEnum.horizontal: _result['Layout'] = 'Horizontal'; break;
        case WatermarkDataText_LayoutEnum.diagonal: _result['Layout'] = 'Diagonal'; break;
        default: break;
      }
    }

    if (text != null) {
      _result['Text'] = text!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (text == null)
    {
        throw new ApiException(400, 'Property Text in WatermarkDataText is required.');
    }

    color?.validate();






  }
}

/// Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
enum WatermarkDataText_LayoutEnum
{ 
  horizontal,
  diagonal
}

