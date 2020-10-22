/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="txt_save_options_base_data.dart">
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

/// Base class for save options of text formats.
class TxtSaveOptionsBaseData extends SaveOptionsData {
  /// Gets or sets specifies the encoding to use when exporting in plain text format.
  String encoding;

  /// Gets or sets specifies whether to output headers and footers when exporting in plain text format.
  /// default value is TxtExportHeadersFootersMode.PrimaryOnly.
  TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum exportHeadersFootersMode;

  /// Gets or sets allows to specify whether the page breaks should be preserved during export.
  /// The default value is false.
  bool forcePageBreaks;

  /// Gets or sets specifies the string to use as a paragraph break when exporting in plain text format.
  String paragraphBreak;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Encoding')) {
      this.encoding = json['Encoding'];
    } else {
      this.encoding = null;
    }

    if (json.containsKey('ExportHeadersFootersMode')) {
      switch (json['ExportHeadersFootersMode']) {
        case 'None': this.exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.none; break;
        case 'PrimaryOnly': this.exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.primaryOnly; break;
        case 'AllAtEnd': this.exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.allAtEnd; break;
        default: this.exportHeadersFootersMode = null; break;
      }
    } else {
      this.exportHeadersFootersMode = null;
    }

    if (json.containsKey('ForcePageBreaks')) {
      this.forcePageBreaks = json['ForcePageBreaks'];
    } else {
      this.forcePageBreaks = null;
    }

    if (json.containsKey('ParagraphBreak')) {
      this.paragraphBreak = json['ParagraphBreak'];
    } else {
      this.paragraphBreak = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.encoding != null) {
      _result['Encoding'] = this.encoding;
    }

    if (this.exportHeadersFootersMode != null) {
      switch (this.exportHeadersFootersMode) {
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.none: _result['ExportHeadersFootersMode'] = 'None'; break;
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.primaryOnly: _result['ExportHeadersFootersMode'] = 'PrimaryOnly'; break;
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.allAtEnd: _result['ExportHeadersFootersMode'] = 'AllAtEnd'; break;
        default: break;
      }
    }

    if (this.forcePageBreaks != null) {
      _result['ForcePageBreaks'] = this.forcePageBreaks;
    }

    if (this.paragraphBreak != null) {
      _result['ParagraphBreak'] = this.paragraphBreak;
    }
    return _result;
  }
}

/// Gets or sets specifies whether to output headers and footers when exporting in plain text format.
/// default value is TxtExportHeadersFootersMode.PrimaryOnly.
enum TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum
{ 
  none,
  primaryOnly,
  allAtEnd
}

