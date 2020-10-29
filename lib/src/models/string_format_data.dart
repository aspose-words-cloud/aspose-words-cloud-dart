/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="string_format_data.dart">
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

/// Allows to specify System.Drawing.StringFormat options.
class StringFormatData implements ModelBase {
  /// Gets or sets horizontal alignment of the string.
  StringFormatData_AlignmentEnum alignment;

  /// Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
  StringFormatData_FormatFlagsEnum formatFlags;

  /// Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
  StringFormatData_HotkeyPrefixEnum hotkeyPrefix;

  /// Gets or sets the vertical alignment of the string.
  StringFormatData_LineAlignmentEnum lineAlignment;

  /// Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
  StringFormatData_TrimmingEnum trimming;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Alignment')) {
      switch (json['Alignment']) {
        case 'Near': this.alignment = StringFormatData_AlignmentEnum.near; break;
        case 'Center': this.alignment = StringFormatData_AlignmentEnum.center; break;
        case 'Far': this.alignment = StringFormatData_AlignmentEnum.far; break;
        default: this.alignment = null; break;
      }
    } else {
      this.alignment = null;
    }

    if (json.containsKey('FormatFlags')) {
      switch (json['FormatFlags']) {
        case 'DirectionRightToLeft': this.formatFlags = StringFormatData_FormatFlagsEnum.directionRightToLeft; break;
        case 'DirectionVertical': this.formatFlags = StringFormatData_FormatFlagsEnum.directionVertical; break;
        case 'FitBlackBox': this.formatFlags = StringFormatData_FormatFlagsEnum.fitBlackBox; break;
        case 'DisplayFormatControl': this.formatFlags = StringFormatData_FormatFlagsEnum.displayFormatControl; break;
        case 'NoFontFallback': this.formatFlags = StringFormatData_FormatFlagsEnum.noFontFallback; break;
        case 'MeasureTrailingSpaces': this.formatFlags = StringFormatData_FormatFlagsEnum.measureTrailingSpaces; break;
        case 'NoWrap': this.formatFlags = StringFormatData_FormatFlagsEnum.noWrap; break;
        case 'LineLimit': this.formatFlags = StringFormatData_FormatFlagsEnum.lineLimit; break;
        case 'NoClip': this.formatFlags = StringFormatData_FormatFlagsEnum.noClip; break;
        default: this.formatFlags = null; break;
      }
    } else {
      this.formatFlags = null;
    }

    if (json.containsKey('HotkeyPrefix')) {
      switch (json['HotkeyPrefix']) {
        case 'None': this.hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.none; break;
        case 'Show': this.hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.show; break;
        case 'Hide': this.hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.hide; break;
        default: this.hotkeyPrefix = null; break;
      }
    } else {
      this.hotkeyPrefix = null;
    }

    if (json.containsKey('LineAlignment')) {
      switch (json['LineAlignment']) {
        case 'Near': this.lineAlignment = StringFormatData_LineAlignmentEnum.near; break;
        case 'Center': this.lineAlignment = StringFormatData_LineAlignmentEnum.center; break;
        case 'Far': this.lineAlignment = StringFormatData_LineAlignmentEnum.far; break;
        default: this.lineAlignment = null; break;
      }
    } else {
      this.lineAlignment = null;
    }

    if (json.containsKey('Trimming')) {
      switch (json['Trimming']) {
        case 'None': this.trimming = StringFormatData_TrimmingEnum.none; break;
        case 'Character': this.trimming = StringFormatData_TrimmingEnum.character; break;
        case 'Word': this.trimming = StringFormatData_TrimmingEnum.word; break;
        case 'EllipsisCharacter': this.trimming = StringFormatData_TrimmingEnum.ellipsisCharacter; break;
        case 'EllipsisWord': this.trimming = StringFormatData_TrimmingEnum.ellipsisWord; break;
        case 'EllipsisPath': this.trimming = StringFormatData_TrimmingEnum.ellipsisPath; break;
        default: this.trimming = null; break;
      }
    } else {
      this.trimming = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.alignment != null) {
      switch (this.alignment) {
        case StringFormatData_AlignmentEnum.near: _result['Alignment'] = 'Near'; break;
        case StringFormatData_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case StringFormatData_AlignmentEnum.far: _result['Alignment'] = 'Far'; break;
        default: break;
      }
    }

    if (this.formatFlags != null) {
      switch (this.formatFlags) {
        case StringFormatData_FormatFlagsEnum.directionRightToLeft: _result['FormatFlags'] = 'DirectionRightToLeft'; break;
        case StringFormatData_FormatFlagsEnum.directionVertical: _result['FormatFlags'] = 'DirectionVertical'; break;
        case StringFormatData_FormatFlagsEnum.fitBlackBox: _result['FormatFlags'] = 'FitBlackBox'; break;
        case StringFormatData_FormatFlagsEnum.displayFormatControl: _result['FormatFlags'] = 'DisplayFormatControl'; break;
        case StringFormatData_FormatFlagsEnum.noFontFallback: _result['FormatFlags'] = 'NoFontFallback'; break;
        case StringFormatData_FormatFlagsEnum.measureTrailingSpaces: _result['FormatFlags'] = 'MeasureTrailingSpaces'; break;
        case StringFormatData_FormatFlagsEnum.noWrap: _result['FormatFlags'] = 'NoWrap'; break;
        case StringFormatData_FormatFlagsEnum.lineLimit: _result['FormatFlags'] = 'LineLimit'; break;
        case StringFormatData_FormatFlagsEnum.noClip: _result['FormatFlags'] = 'NoClip'; break;
        default: break;
      }
    }

    if (this.hotkeyPrefix != null) {
      switch (this.hotkeyPrefix) {
        case StringFormatData_HotkeyPrefixEnum.none: _result['HotkeyPrefix'] = 'None'; break;
        case StringFormatData_HotkeyPrefixEnum.show: _result['HotkeyPrefix'] = 'Show'; break;
        case StringFormatData_HotkeyPrefixEnum.hide: _result['HotkeyPrefix'] = 'Hide'; break;
        default: break;
      }
    }

    if (this.lineAlignment != null) {
      switch (this.lineAlignment) {
        case StringFormatData_LineAlignmentEnum.near: _result['LineAlignment'] = 'Near'; break;
        case StringFormatData_LineAlignmentEnum.center: _result['LineAlignment'] = 'Center'; break;
        case StringFormatData_LineAlignmentEnum.far: _result['LineAlignment'] = 'Far'; break;
        default: break;
      }
    }

    if (this.trimming != null) {
      switch (this.trimming) {
        case StringFormatData_TrimmingEnum.none: _result['Trimming'] = 'None'; break;
        case StringFormatData_TrimmingEnum.character: _result['Trimming'] = 'Character'; break;
        case StringFormatData_TrimmingEnum.word: _result['Trimming'] = 'Word'; break;
        case StringFormatData_TrimmingEnum.ellipsisCharacter: _result['Trimming'] = 'EllipsisCharacter'; break;
        case StringFormatData_TrimmingEnum.ellipsisWord: _result['Trimming'] = 'EllipsisWord'; break;
        case StringFormatData_TrimmingEnum.ellipsisPath: _result['Trimming'] = 'EllipsisPath'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets horizontal alignment of the string.
enum StringFormatData_AlignmentEnum
{ 
  near,
  center,
  far
}

/// Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
enum StringFormatData_FormatFlagsEnum
{ 
  directionRightToLeft,
  directionVertical,
  fitBlackBox,
  displayFormatControl,
  noFontFallback,
  measureTrailingSpaces,
  noWrap,
  lineLimit,
  noClip
}

/// Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
enum StringFormatData_HotkeyPrefixEnum
{ 
  none,
  show,
  hide
}

/// Gets or sets the vertical alignment of the string.
enum StringFormatData_LineAlignmentEnum
{ 
  near,
  center,
  far
}

/// Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
enum StringFormatData_TrimmingEnum
{ 
  none,
  character,
  word,
  ellipsisCharacter,
  ellipsisWord,
  ellipsisPath
}

