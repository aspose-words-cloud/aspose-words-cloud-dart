/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="markdown_save_options_data.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

/// Container class for markdown save options.
class MarkdownSaveOptionsData extends TxtSaveOptionsBaseData {
  /// Gets the format of save.
  String? _saveFormat = 'md';

  @override
  String? get saveFormat => _saveFormat;


  /// Gets or sets the value, that specifies how to align contents in tables when exporting into the Markdown format.
  /// The default value is Auto.
  MarkdownSaveOptionsData_TableContentAlignmentEnum? _tableContentAlignment;

  MarkdownSaveOptionsData_TableContentAlignmentEnum? get tableContentAlignment => _tableContentAlignment;
  set tableContentAlignment(MarkdownSaveOptionsData_TableContentAlignmentEnum? val) => _tableContentAlignment = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize MarkdownSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AllowEmbeddingPostScriptFonts')) {
      allowEmbeddingPostScriptFonts = json['AllowEmbeddingPostScriptFonts'] as bool;
    } else {
      allowEmbeddingPostScriptFonts = null;
    }

    if (json.containsKey('CustomTimeZoneInfoData')) {
      customTimeZoneInfoData = TimeZoneInfoData();
      customTimeZoneInfoData!.deserialize(json['CustomTimeZoneInfoData'] as Map<String, dynamic>);
    } else {
      customTimeZoneInfoData = null;
    }

    if (json.containsKey('Dml3DEffectsRenderingMode')) {
      switch (json['Dml3DEffectsRenderingMode'] as String) {
        case 'Basic': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic; break;
        case 'Advanced': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced; break;
        default: dml3DEffectsRenderingMode = null; break;
      }
    } else {
      dml3DEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlEffectsRenderingMode')) {
      switch (json['DmlEffectsRenderingMode'] as String) {
        case 'Simplified': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.simplified; break;
        case 'None': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.none; break;
        case 'Fine': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.fine; break;
        default: dmlEffectsRenderingMode = null; break;
      }
    } else {
      dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      switch (json['DmlRenderingMode'] as String) {
        case 'Fallback': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.fallback; break;
        case 'DrawingML': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.drawingML; break;
        default: dmlRenderingMode = null; break;
      }
    } else {
      dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('ImlRenderingMode')) {
      switch (json['ImlRenderingMode'] as String) {
        case 'Fallback': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.fallback; break;
        case 'InkML': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.inkML; break;
        default: imlRenderingMode = null; break;
      }
    } else {
      imlRenderingMode = null;
    }

    if (json.containsKey('UpdateCreatedTimeProperty')) {
      updateCreatedTimeProperty = json['UpdateCreatedTimeProperty'] as bool;
    } else {
      updateCreatedTimeProperty = null;
    }

    if (json.containsKey('UpdateFields')) {
      updateFields = json['UpdateFields'] as bool;
    } else {
      updateFields = null;
    }

    if (json.containsKey('UpdateLastPrintedProperty')) {
      updateLastPrintedProperty = json['UpdateLastPrintedProperty'] as bool;
    } else {
      updateLastPrintedProperty = null;
    }

    if (json.containsKey('UpdateLastSavedTimeProperty')) {
      updateLastSavedTimeProperty = json['UpdateLastSavedTimeProperty'] as bool;
    } else {
      updateLastSavedTimeProperty = null;
    }

    if (json.containsKey('UpdateSdtContent')) {
      updateSdtContent = json['UpdateSdtContent'] as bool;
    } else {
      updateSdtContent = null;
    }

    if (json.containsKey('ZipOutput')) {
      zipOutput = json['ZipOutput'] as bool;
    } else {
      zipOutput = null;
    }

    if (json.containsKey('Encoding')) {
      encoding = json['Encoding'] as String;
    } else {
      encoding = null;
    }

    if (json.containsKey('ExportHeadersFootersMode')) {
      switch (json['ExportHeadersFootersMode'] as String) {
        case 'None': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.none; break;
        case 'PrimaryOnly': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.primaryOnly; break;
        case 'AllAtEnd': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.allAtEnd; break;
        default: exportHeadersFootersMode = null; break;
      }
    } else {
      exportHeadersFootersMode = null;
    }

    if (json.containsKey('ForcePageBreaks')) {
      forcePageBreaks = json['ForcePageBreaks'] as bool;
    } else {
      forcePageBreaks = null;
    }

    if (json.containsKey('ParagraphBreak')) {
      paragraphBreak = json['ParagraphBreak'] as String;
    } else {
      paragraphBreak = null;
    }

    if (json.containsKey('TableContentAlignment')) {
      switch (json['TableContentAlignment'] as String) {
        case 'Auto': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.auto; break;
        case 'Left': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.left; break;
        case 'Center': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.center; break;
        case 'Right': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.right; break;
        default: tableContentAlignment = null; break;
      }
    } else {
      tableContentAlignment = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat!;
    }

    if (tableContentAlignment != null) {
      switch (tableContentAlignment!) {
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.auto: _result['TableContentAlignment'] = 'Auto'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.left: _result['TableContentAlignment'] = 'Left'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.center: _result['TableContentAlignment'] = 'Center'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.right: _result['TableContentAlignment'] = 'Right'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }
}

/// Gets or sets the value, that specifies how to align contents in tables when exporting into the Markdown format.
/// The default value is Auto.
enum MarkdownSaveOptionsData_TableContentAlignmentEnum
{ 
  auto,
  left,
  center,
  right
}

