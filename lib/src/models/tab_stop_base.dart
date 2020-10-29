/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tab_stop_base.dart">
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

/// Base class for paragraph format tab stop DTO.
class TabStopBase implements ModelBase {
  /// Gets or sets the alignment of text at this tab stop.
  TabStopBase_AlignmentEnum alignment;

  /// Gets or sets the type of the leader line displayed under the tab character.
  TabStopBase_LeaderEnum leader;

  /// Gets or sets the position of the tab stop in points.
  double position;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Alignment')) {
      switch (json['Alignment']) {
        case 'Left': this.alignment = TabStopBase_AlignmentEnum.left; break;
        case 'Center': this.alignment = TabStopBase_AlignmentEnum.center; break;
        case 'Right': this.alignment = TabStopBase_AlignmentEnum.right; break;
        case 'Decimal': this.alignment = TabStopBase_AlignmentEnum.decimal; break;
        case 'Bar': this.alignment = TabStopBase_AlignmentEnum.bar; break;
        case 'List': this.alignment = TabStopBase_AlignmentEnum.list; break;
        case 'Clear': this.alignment = TabStopBase_AlignmentEnum.clear; break;
        default: this.alignment = null; break;
      }
    } else {
      this.alignment = null;
    }

    if (json.containsKey('Leader')) {
      switch (json['Leader']) {
        case 'None': this.leader = TabStopBase_LeaderEnum.none; break;
        case 'Dots': this.leader = TabStopBase_LeaderEnum.dots; break;
        case 'Dashes': this.leader = TabStopBase_LeaderEnum.dashes; break;
        case 'Line': this.leader = TabStopBase_LeaderEnum.line; break;
        case 'Heavy': this.leader = TabStopBase_LeaderEnum.heavy; break;
        case 'MiddleDot': this.leader = TabStopBase_LeaderEnum.middleDot; break;
        default: this.leader = null; break;
      }
    } else {
      this.leader = null;
    }

    if (json.containsKey('Position')) {
      this.position = json['Position'];
    } else {
      this.position = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.alignment != null) {
      switch (this.alignment) {
        case TabStopBase_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case TabStopBase_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case TabStopBase_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        case TabStopBase_AlignmentEnum.decimal: _result['Alignment'] = 'Decimal'; break;
        case TabStopBase_AlignmentEnum.bar: _result['Alignment'] = 'Bar'; break;
        case TabStopBase_AlignmentEnum.list: _result['Alignment'] = 'List'; break;
        case TabStopBase_AlignmentEnum.clear: _result['Alignment'] = 'Clear'; break;
        default: break;
      }
    }

    if (this.leader != null) {
      switch (this.leader) {
        case TabStopBase_LeaderEnum.none: _result['Leader'] = 'None'; break;
        case TabStopBase_LeaderEnum.dots: _result['Leader'] = 'Dots'; break;
        case TabStopBase_LeaderEnum.dashes: _result['Leader'] = 'Dashes'; break;
        case TabStopBase_LeaderEnum.line: _result['Leader'] = 'Line'; break;
        case TabStopBase_LeaderEnum.heavy: _result['Leader'] = 'Heavy'; break;
        case TabStopBase_LeaderEnum.middleDot: _result['Leader'] = 'MiddleDot'; break;
        default: break;
      }
    }

    if (this.position != null) {
      _result['Position'] = this.position;
    }
    return _result;
  }
}

/// Gets or sets the alignment of text at this tab stop.
enum TabStopBase_AlignmentEnum
{ 
  left,
  center,
  right,
  decimal,
  bar,
  list,
  clear
}

/// Gets or sets the type of the leader line displayed under the tab character.
enum TabStopBase_LeaderEnum
{ 
  none,
  dots,
  dashes,
  line,
  heavy,
  middleDot
}

