/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="string_format_data.dart">
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

/// Allows to specify System.Drawing.StringFormat options.
class StringFormatData implements ModelBase {
  /// Gets or sets horizontal alignment of the string.
  StringFormatData_AlignmentEnum alignment;

  /// Gets or sets the System.Drawing.StringFormatFlags enumeration, that contains formatting information.
  StringFormatData_FormatFlagsEnum formatFlags;

  /// Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
  StringFormatData_HotkeyPrefixEnum hotkeyPrefix;

  /// Gets or sets the vertical alignment of the string.
  StringFormatData_LineAlignmentEnum lineAlignment;

  /// Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
  StringFormatData_TrimmingEnum trimming;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StringFormatData data model.');
    }

    if (json.containsKey('Alignment')) {
      switch (json['Alignment'] as String) {
        case 'Near': alignment = StringFormatData_AlignmentEnum.near; break;
        case 'Center': alignment = StringFormatData_AlignmentEnum.center; break;
        case 'Far': alignment = StringFormatData_AlignmentEnum.far; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('FormatFlags')) {
      switch (json['FormatFlags'] as String) {
        case 'DirectionRightToLeft': formatFlags = StringFormatData_FormatFlagsEnum.directionRightToLeft; break;
        case 'DirectionVertical': formatFlags = StringFormatData_FormatFlagsEnum.directionVertical; break;
        case 'FitBlackBox': formatFlags = StringFormatData_FormatFlagsEnum.fitBlackBox; break;
        case 'DisplayFormatControl': formatFlags = StringFormatData_FormatFlagsEnum.displayFormatControl; break;
        case 'NoFontFallback': formatFlags = StringFormatData_FormatFlagsEnum.noFontFallback; break;
        case 'MeasureTrailingSpaces': formatFlags = StringFormatData_FormatFlagsEnum.measureTrailingSpaces; break;
        case 'NoWrap': formatFlags = StringFormatData_FormatFlagsEnum.noWrap; break;
        case 'LineLimit': formatFlags = StringFormatData_FormatFlagsEnum.lineLimit; break;
        case 'NoClip': formatFlags = StringFormatData_FormatFlagsEnum.noClip; break;
        default: formatFlags = null; break;
      }
    } else {
      formatFlags = null;
    }

    if (json.containsKey('HotkeyPrefix')) {
      switch (json['HotkeyPrefix'] as String) {
        case 'None': hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.none; break;
        case 'Show': hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.show; break;
        case 'Hide': hotkeyPrefix = StringFormatData_HotkeyPrefixEnum.hide; break;
        default: hotkeyPrefix = null; break;
      }
    } else {
      hotkeyPrefix = null;
    }

    if (json.containsKey('LineAlignment')) {
      switch (json['LineAlignment'] as String) {
        case 'Near': lineAlignment = StringFormatData_LineAlignmentEnum.near; break;
        case 'Center': lineAlignment = StringFormatData_LineAlignmentEnum.center; break;
        case 'Far': lineAlignment = StringFormatData_LineAlignmentEnum.far; break;
        default: lineAlignment = null; break;
      }
    } else {
      lineAlignment = null;
    }

    if (json.containsKey('Trimming')) {
      switch (json['Trimming'] as String) {
        case 'None': trimming = StringFormatData_TrimmingEnum.none; break;
        case 'Character': trimming = StringFormatData_TrimmingEnum.character; break;
        case 'Word': trimming = StringFormatData_TrimmingEnum.word; break;
        case 'EllipsisCharacter': trimming = StringFormatData_TrimmingEnum.ellipsisCharacter; break;
        case 'EllipsisWord': trimming = StringFormatData_TrimmingEnum.ellipsisWord; break;
        case 'EllipsisPath': trimming = StringFormatData_TrimmingEnum.ellipsisPath; break;
        default: trimming = null; break;
      }
    } else {
      trimming = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (alignment != null) {
      switch (alignment) {
        case StringFormatData_AlignmentEnum.near: _result['Alignment'] = 'Near'; break;
        case StringFormatData_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case StringFormatData_AlignmentEnum.far: _result['Alignment'] = 'Far'; break;
        default: break;
      }
    }

    if (formatFlags != null) {
      switch (formatFlags) {
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

    if (hotkeyPrefix != null) {
      switch (hotkeyPrefix) {
        case StringFormatData_HotkeyPrefixEnum.none: _result['HotkeyPrefix'] = 'None'; break;
        case StringFormatData_HotkeyPrefixEnum.show: _result['HotkeyPrefix'] = 'Show'; break;
        case StringFormatData_HotkeyPrefixEnum.hide: _result['HotkeyPrefix'] = 'Hide'; break;
        default: break;
      }
    }

    if (lineAlignment != null) {
      switch (lineAlignment) {
        case StringFormatData_LineAlignmentEnum.near: _result['LineAlignment'] = 'Near'; break;
        case StringFormatData_LineAlignmentEnum.center: _result['LineAlignment'] = 'Center'; break;
        case StringFormatData_LineAlignmentEnum.far: _result['LineAlignment'] = 'Far'; break;
        default: break;
      }
    }

    if (trimming != null) {
      switch (trimming) {
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

/// Gets or sets the System.Drawing.StringFormatFlags enumeration, that contains formatting information.
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

