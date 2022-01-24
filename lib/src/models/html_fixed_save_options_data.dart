/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="html_fixed_save_options_data.dart">
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

/// Container class for fixed html save options.
class HtmlFixedSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the prefix which is added to all class names in style.css file.
  /// Default value is "aw".
  String _cssClassNamesPrefix;

  String get cssClassNamesPrefix => _cssClassNamesPrefix;
  set cssClassNamesPrefix(String val) => _cssClassNamesPrefix = val;


  /// Gets or sets the character encoding.
  String _encoding;

  String get encoding => _encoding;
  set encoding(String val) => _encoding = val;


  /// Gets or sets a value indicating whether the CSS (Cascading Style Sheet) should be embedded into the Html document.
  bool _exportEmbeddedCss;

  bool get exportEmbeddedCss => _exportEmbeddedCss;
  set exportEmbeddedCss(bool val) => _exportEmbeddedCss = val;


  /// Gets or sets a value indicating whether fonts should be embedded into the Html document in Base64 format.
  bool _exportEmbeddedFonts;

  bool get exportEmbeddedFonts => _exportEmbeddedFonts;
  set exportEmbeddedFonts(bool val) => _exportEmbeddedFonts = val;


  /// Gets or sets a value indicating whether images should be embedded into the Html document in Base64 format.
  bool _exportEmbeddedImages;

  bool get exportEmbeddedImages => _exportEmbeddedImages;
  set exportEmbeddedImages(bool val) => _exportEmbeddedImages = val;


  /// Gets or sets a value indicating whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
  bool _exportFormFields;

  bool get exportFormFields => _exportFormFields;
  set exportFormFields(bool val) => _exportFormFields = val;


  /// Gets or sets the export format of fonts.
  String _fontFormat;

  String get fontFormat => _fontFormat;
  set fontFormat(String val) => _fontFormat = val;


  /// Gets or sets the horizontal alignment of pages in the HTML document.
  /// The default value is HtmlFixedHorizontalPageAlignment.Center.
  String _pageHorizontalAlignment;

  String get pageHorizontalAlignment => _pageHorizontalAlignment;
  set pageHorizontalAlignment(String val) => _pageHorizontalAlignment = val;


  /// Gets or sets the margin around pages in HTML document.
  /// The margins value is measured in points and should be equal to or greater than 0.
  /// Default value is 10 points.
  double _pageMargins;

  double get pageMargins => _pageMargins;
  set pageMargins(double val) => _pageMargins = val;


  /// Gets or sets the physical folder where resources are saved when exporting the document.
  String _resourcesFolder;

  String get resourcesFolder => _resourcesFolder;
  set resourcesFolder(String val) => _resourcesFolder = val;


  /// Gets or sets the name of the folder used to construct resource URIs.
  String _resourcesFolderAlias;

  String get resourcesFolderAlias => _resourcesFolderAlias;
  set resourcesFolderAlias(String val) => _resourcesFolderAlias = val;


  /// Gets or sets a value indicating whether "@font-face" CSS rules should be placed into a separate file "fontFaces.css" when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). The default value is false, all CSS rules are written into single file "styles.css".
  bool _saveFontFaceCssSeparately;

  bool get saveFontFaceCssSeparately => _saveFontFaceCssSeparately;
  set saveFontFaceCssSeparately(bool val) => _saveFontFaceCssSeparately = val;


  /// Gets or sets the format of save.
  String _saveFormat = 'htmlfixed';

  @override
  String get saveFormat => _saveFormat;


  /// Gets or sets a value indicating whether to show border around pages.
  bool _showPageBorder;

  bool get showPageBorder => _showPageBorder;
  set showPageBorder(bool val) => _showPageBorder = val;


  /// Gets or sets a value indicating whether fonts from target machine must be used to display the document. If this flag is set to true, Aspose.Words.Saving.HtmlFixedSaveOptions.FontFormat and Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedFonts properties do not have effect, also Aspose.Words.Saving.HtmlFixedSaveOptions.ResourceSavingCallback is not fired for fonts. The default value is false.
  bool _useTargetMachineFonts;

  bool get useTargetMachineFonts => _useTargetMachineFonts;
  set useTargetMachineFonts(bool val) => _useTargetMachineFonts = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize HtmlFixedSaveOptionsData data model.');
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

    if (json.containsKey('ColorMode')) {
      colorMode = json['ColorMode'] as String;
    } else {
      colorMode = null;
    }

    if (json.containsKey('JpegQuality')) {
      jpegQuality = json['JpegQuality'] as int;
    } else {
      jpegQuality = null;
    }

    if (json.containsKey('MetafileRenderingOptions')) {
      metafileRenderingOptions = MetafileRenderingOptionsData();
      metafileRenderingOptions.deserialize(json['MetafileRenderingOptions'] as Map<String, dynamic>);
    } else {
      metafileRenderingOptions = null;
    }

    if (json.containsKey('NumeralFormat')) {
      numeralFormat = json['NumeralFormat'] as String;
    } else {
      numeralFormat = null;
    }

    if (json.containsKey('OptimizeOutput')) {
      optimizeOutput = json['OptimizeOutput'] as bool;
    } else {
      optimizeOutput = null;
    }

    if (json.containsKey('PageCount')) {
      pageCount = json['PageCount'] as int;
    } else {
      pageCount = null;
    }

    if (json.containsKey('PageIndex')) {
      pageIndex = json['PageIndex'] as int;
    } else {
      pageIndex = null;
    }

    if (json.containsKey('CssClassNamesPrefix')) {
      cssClassNamesPrefix = json['CssClassNamesPrefix'] as String;
    } else {
      cssClassNamesPrefix = null;
    }

    if (json.containsKey('Encoding')) {
      encoding = json['Encoding'] as String;
    } else {
      encoding = null;
    }

    if (json.containsKey('ExportEmbeddedCss')) {
      exportEmbeddedCss = json['ExportEmbeddedCss'] as bool;
    } else {
      exportEmbeddedCss = null;
    }

    if (json.containsKey('ExportEmbeddedFonts')) {
      exportEmbeddedFonts = json['ExportEmbeddedFonts'] as bool;
    } else {
      exportEmbeddedFonts = null;
    }

    if (json.containsKey('ExportEmbeddedImages')) {
      exportEmbeddedImages = json['ExportEmbeddedImages'] as bool;
    } else {
      exportEmbeddedImages = null;
    }

    if (json.containsKey('ExportFormFields')) {
      exportFormFields = json['ExportFormFields'] as bool;
    } else {
      exportFormFields = null;
    }

    if (json.containsKey('FontFormat')) {
      fontFormat = json['FontFormat'] as String;
    } else {
      fontFormat = null;
    }

    if (json.containsKey('PageHorizontalAlignment')) {
      pageHorizontalAlignment = json['PageHorizontalAlignment'] as String;
    } else {
      pageHorizontalAlignment = null;
    }

    if (json.containsKey('PageMargins')) {
      pageMargins = json['PageMargins'] as double;
    } else {
      pageMargins = null;
    }

    if (json.containsKey('ResourcesFolder')) {
      resourcesFolder = json['ResourcesFolder'] as String;
    } else {
      resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      resourcesFolderAlias = json['ResourcesFolderAlias'] as String;
    } else {
      resourcesFolderAlias = null;
    }

    if (json.containsKey('SaveFontFaceCssSeparately')) {
      saveFontFaceCssSeparately = json['SaveFontFaceCssSeparately'] as bool;
    } else {
      saveFontFaceCssSeparately = null;
    }

    if (json.containsKey('ShowPageBorder')) {
      showPageBorder = json['ShowPageBorder'] as bool;
    } else {
      showPageBorder = null;
    }

    if (json.containsKey('UseTargetMachineFonts')) {
      useTargetMachineFonts = json['UseTargetMachineFonts'] as bool;
    } else {
      useTargetMachineFonts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (cssClassNamesPrefix != null) {
      _result['CssClassNamesPrefix'] = cssClassNamesPrefix;
    }

    if (encoding != null) {
      _result['Encoding'] = encoding;
    }

    if (exportEmbeddedCss != null) {
      _result['ExportEmbeddedCss'] = exportEmbeddedCss;
    }

    if (exportEmbeddedFonts != null) {
      _result['ExportEmbeddedFonts'] = exportEmbeddedFonts;
    }

    if (exportEmbeddedImages != null) {
      _result['ExportEmbeddedImages'] = exportEmbeddedImages;
    }

    if (exportFormFields != null) {
      _result['ExportFormFields'] = exportFormFields;
    }

    if (fontFormat != null) {
      _result['FontFormat'] = fontFormat;
    }

    if (pageHorizontalAlignment != null) {
      _result['PageHorizontalAlignment'] = pageHorizontalAlignment;
    }

    if (pageMargins != null) {
      _result['PageMargins'] = pageMargins;
    }

    if (resourcesFolder != null) {
      _result['ResourcesFolder'] = resourcesFolder;
    }

    if (resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = resourcesFolderAlias;
    }

    if (saveFontFaceCssSeparately != null) {
      _result['SaveFontFaceCssSeparately'] = saveFontFaceCssSeparately;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat;
    }

    if (showPageBorder != null) {
      _result['ShowPageBorder'] = showPageBorder;
    }

    if (useTargetMachineFonts != null) {
      _result['UseTargetMachineFonts'] = useTargetMachineFonts;
    }
    return _result;
  }
}


