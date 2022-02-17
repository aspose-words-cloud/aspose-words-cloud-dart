/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="epub_save_options_data.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// Container class for epub save options.
class EpubSaveOptionsData extends HtmlSaveOptionsData {
  /// Gets or sets the maximum level of headings populated to the navigation map when exporting.
  int _epubNavigationMapLevel;

  int get epubNavigationMapLevel => _epubNavigationMapLevel;
  set epubNavigationMapLevel(int val) => _epubNavigationMapLevel = val;


  /// Gets the format of save.
  String _saveFormat = 'epub';

  @override
  String get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize EpubSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AllowEmbeddingPostScriptFonts')) {
      allowEmbeddingPostScriptFonts = json['AllowEmbeddingPostScriptFonts'] as bool;
    } else {
      allowEmbeddingPostScriptFonts = null;
    }

    if (json.containsKey('CustomTimeZoneInfoData')) {
      customTimeZoneInfoData = TimeZoneInfoData();
      customTimeZoneInfoData.deserialize(json['CustomTimeZoneInfoData'] as Map<String, dynamic>);
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
      dmlEffectsRenderingMode = json['DmlEffectsRenderingMode'] as String;
    } else {
      dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      dmlRenderingMode = json['DmlRenderingMode'] as String;
    } else {
      dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('FlatOpcXmlMappingOnly')) {
      flatOpcXmlMappingOnly = json['FlatOpcXmlMappingOnly'] as bool;
    } else {
      flatOpcXmlMappingOnly = null;
    }

    if (json.containsKey('ImlRenderingMode')) {
      imlRenderingMode = json['ImlRenderingMode'] as String;
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

    if (json.containsKey('AllowNegativeIndent')) {
      allowNegativeIndent = json['AllowNegativeIndent'] as bool;
    } else {
      allowNegativeIndent = null;
    }

    if (json.containsKey('CssClassNamePrefix')) {
      cssClassNamePrefix = json['CssClassNamePrefix'] as String;
    } else {
      cssClassNamePrefix = null;
    }

    if (json.containsKey('CssStyleSheetFileName')) {
      cssStyleSheetFileName = json['CssStyleSheetFileName'] as String;
    } else {
      cssStyleSheetFileName = null;
    }

    if (json.containsKey('CssStyleSheetType')) {
      switch (json['CssStyleSheetType'] as String) {
        case 'Inline': cssStyleSheetType = HtmlSaveOptionsData_CssStyleSheetTypeEnum.inline; break;
        case 'Embedded': cssStyleSheetType = HtmlSaveOptionsData_CssStyleSheetTypeEnum.embedded; break;
        case 'External': cssStyleSheetType = HtmlSaveOptionsData_CssStyleSheetTypeEnum.external; break;
        default: cssStyleSheetType = null; break;
      }
    } else {
      cssStyleSheetType = null;
    }

    if (json.containsKey('DocumentSplitCriteria')) {
      documentSplitCriteria = json['DocumentSplitCriteria'] as String;
    } else {
      documentSplitCriteria = null;
    }

    if (json.containsKey('DocumentSplitHeadingLevel')) {
      documentSplitHeadingLevel = json['DocumentSplitHeadingLevel'] as int;
    } else {
      documentSplitHeadingLevel = null;
    }

    if (json.containsKey('Encoding')) {
      encoding = json['Encoding'] as String;
    } else {
      encoding = null;
    }

    if (json.containsKey('ExportDocumentProperties')) {
      exportDocumentProperties = json['ExportDocumentProperties'] as bool;
    } else {
      exportDocumentProperties = null;
    }

    if (json.containsKey('ExportDropDownFormFieldAsText')) {
      exportDropDownFormFieldAsText = json['ExportDropDownFormFieldAsText'] as bool;
    } else {
      exportDropDownFormFieldAsText = null;
    }

    if (json.containsKey('ExportFontResources')) {
      exportFontResources = json['ExportFontResources'] as bool;
    } else {
      exportFontResources = null;
    }

    if (json.containsKey('ExportFontsAsBase64')) {
      exportFontsAsBase64 = json['ExportFontsAsBase64'] as bool;
    } else {
      exportFontsAsBase64 = null;
    }

    if (json.containsKey('ExportHeadersFootersMode')) {
      exportHeadersFootersMode = json['ExportHeadersFootersMode'] as String;
    } else {
      exportHeadersFootersMode = null;
    }

    if (json.containsKey('ExportImagesAsBase64')) {
      exportImagesAsBase64 = json['ExportImagesAsBase64'] as bool;
    } else {
      exportImagesAsBase64 = null;
    }

    if (json.containsKey('ExportLanguageInformation')) {
      exportLanguageInformation = json['ExportLanguageInformation'] as bool;
    } else {
      exportLanguageInformation = null;
    }

    if (json.containsKey('ExportListLabels')) {
      exportListLabels = json['ExportListLabels'] as String;
    } else {
      exportListLabels = null;
    }

    if (json.containsKey('ExportOriginalUrlForLinkedImages')) {
      exportOriginalUrlForLinkedImages = json['ExportOriginalUrlForLinkedImages'] as bool;
    } else {
      exportOriginalUrlForLinkedImages = null;
    }

    if (json.containsKey('ExportPageMargins')) {
      exportPageMargins = json['ExportPageMargins'] as bool;
    } else {
      exportPageMargins = null;
    }

    if (json.containsKey('ExportPageSetup')) {
      exportPageSetup = json['ExportPageSetup'] as bool;
    } else {
      exportPageSetup = null;
    }

    if (json.containsKey('ExportRelativeFontSize')) {
      exportRelativeFontSize = json['ExportRelativeFontSize'] as bool;
    } else {
      exportRelativeFontSize = null;
    }

    if (json.containsKey('ExportRoundtripInformation')) {
      exportRoundtripInformation = json['ExportRoundtripInformation'] as bool;
    } else {
      exportRoundtripInformation = null;
    }

    if (json.containsKey('ExportTextBoxAsSvg')) {
      exportTextBoxAsSvg = json['ExportTextBoxAsSvg'] as bool;
    } else {
      exportTextBoxAsSvg = null;
    }

    if (json.containsKey('ExportTextInputFormFieldAsText')) {
      exportTextInputFormFieldAsText = json['ExportTextInputFormFieldAsText'] as bool;
    } else {
      exportTextInputFormFieldAsText = null;
    }

    if (json.containsKey('ExportTocPageNumbers')) {
      exportTocPageNumbers = json['ExportTocPageNumbers'] as bool;
    } else {
      exportTocPageNumbers = null;
    }

    if (json.containsKey('ExportXhtmlTransitional')) {
      exportXhtmlTransitional = json['ExportXhtmlTransitional'] as bool;
    } else {
      exportXhtmlTransitional = null;
    }

    if (json.containsKey('FontResourcesSubsettingSizeThreshold')) {
      fontResourcesSubsettingSizeThreshold = json['FontResourcesSubsettingSizeThreshold'] as int;
    } else {
      fontResourcesSubsettingSizeThreshold = null;
    }

    if (json.containsKey('FontsFolder')) {
      fontsFolder = json['FontsFolder'] as String;
    } else {
      fontsFolder = null;
    }

    if (json.containsKey('FontsFolderAlias')) {
      fontsFolderAlias = json['FontsFolderAlias'] as String;
    } else {
      fontsFolderAlias = null;
    }

    if (json.containsKey('HtmlVersion')) {
      switch (json['HtmlVersion'] as String) {
        case 'Xhtml': htmlVersion = HtmlSaveOptionsData_HtmlVersionEnum.xhtml; break;
        case 'Html5': htmlVersion = HtmlSaveOptionsData_HtmlVersionEnum.html5; break;
        default: htmlVersion = null; break;
      }
    } else {
      htmlVersion = null;
    }

    if (json.containsKey('ImageResolution')) {
      imageResolution = json['ImageResolution'] as int;
    } else {
      imageResolution = null;
    }

    if (json.containsKey('ImagesFolder')) {
      imagesFolder = json['ImagesFolder'] as String;
    } else {
      imagesFolder = null;
    }

    if (json.containsKey('ImagesFolderAlias')) {
      imagesFolderAlias = json['ImagesFolderAlias'] as String;
    } else {
      imagesFolderAlias = null;
    }

    if (json.containsKey('MetafileFormat')) {
      switch (json['MetafileFormat'] as String) {
        case 'Png': metafileFormat = HtmlSaveOptionsData_MetafileFormatEnum.png; break;
        case 'Svg': metafileFormat = HtmlSaveOptionsData_MetafileFormatEnum.svg; break;
        case 'EmfOrWmf': metafileFormat = HtmlSaveOptionsData_MetafileFormatEnum.emfOrWmf; break;
        default: metafileFormat = null; break;
      }
    } else {
      metafileFormat = null;
    }

    if (json.containsKey('OfficeMathOutputMode')) {
      switch (json['OfficeMathOutputMode'] as String) {
        case 'Image': officeMathOutputMode = HtmlSaveOptionsData_OfficeMathOutputModeEnum.image; break;
        case 'MathML': officeMathOutputMode = HtmlSaveOptionsData_OfficeMathOutputModeEnum.mathML; break;
        case 'Text': officeMathOutputMode = HtmlSaveOptionsData_OfficeMathOutputModeEnum.text; break;
        default: officeMathOutputMode = null; break;
      }
    } else {
      officeMathOutputMode = null;
    }

    if (json.containsKey('PrettyFormat')) {
      prettyFormat = json['PrettyFormat'] as bool;
    } else {
      prettyFormat = null;
    }

    if (json.containsKey('ResolveFontNames')) {
      resolveFontNames = json['ResolveFontNames'] as bool;
    } else {
      resolveFontNames = null;
    }

    if (json.containsKey('ResourceFolder')) {
      resourceFolder = json['ResourceFolder'] as String;
    } else {
      resourceFolder = null;
    }

    if (json.containsKey('ResourceFolderAlias')) {
      resourceFolderAlias = json['ResourceFolderAlias'] as String;
    } else {
      resourceFolderAlias = null;
    }

    if (json.containsKey('ScaleImageToShapeSize')) {
      scaleImageToShapeSize = json['ScaleImageToShapeSize'] as bool;
    } else {
      scaleImageToShapeSize = null;
    }

    if (json.containsKey('TableWidthOutputMode')) {
      tableWidthOutputMode = json['TableWidthOutputMode'] as String;
    } else {
      tableWidthOutputMode = null;
    }

    if (json.containsKey('EpubNavigationMapLevel')) {
      epubNavigationMapLevel = json['EpubNavigationMapLevel'] as int;
    } else {
      epubNavigationMapLevel = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (epubNavigationMapLevel != null) {
      _result['EpubNavigationMapLevel'] = epubNavigationMapLevel;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }
    return _result;
  }
}


