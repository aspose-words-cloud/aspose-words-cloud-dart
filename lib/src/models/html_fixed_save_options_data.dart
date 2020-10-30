/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="html_fixed_save_options_data.dart">
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

/// container class for fixed html save options.
class HtmlFixedSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets specifies prefix which is added to all class names in style.css file.
  /// Default value is "aw".
  String cssClassNamesPrefix;

  /// Gets or sets encoding.
  String encoding;

  /// Gets or sets specifies whether the CSS (Cascading Style Sheet) should be embedded into Html document.
  bool exportEmbeddedCss;

  /// Gets or sets specifies whether fonts should be embedded into Html document in Base64 format.
  bool exportEmbeddedFonts;

  /// Gets or sets specifies whether images should be embedded into Html document in Base64 format.
  bool exportEmbeddedImages;

  /// Gets or sets indication of whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
  bool exportFormFields;

  /// Gets or sets specifies export format of fonts.
  String fontFormat;

  /// Gets or sets specifies the horizontal alignment of pages in an HTML document.
  /// Default value is HtmlFixedHorizontalPageAlignment.Center.
  String pageHorizontalAlignment;

  /// Gets or sets specifies the margins around pages in an HTML document.
  /// The margins value is measured in points and should be equal to or greater than 0.
  /// Default value is 10 points.
  double pageMargins;

  /// Gets or sets specifies the physical folder where resources are saved when exporting a document.
  String resourcesFolder;

  /// Gets or sets specifies the name of the folder used to construct resource URIs.
  String resourcesFolderAlias;

  /// Gets or sets flag indicates whether "@font-face" CSS rules should be placed into a separate
  /// file "fontFaces.css" when a document is being saved with external stylesheet
  /// (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is
  /// false). Default value is false, all CSS rules are written into single file "styles.css".
  bool saveFontFaceCssSeparately;

  /// Gets or sets specifies whether border around pages should be shown.
  bool showPageBorder;

  /// Gets or sets flag indicates whether fonts from target machine must be used to display the
  /// document. If this flag is set to true, Aspose.Words.Saving.HtmlFixedSaveOptions.FontFormat
  /// and Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedFonts properties do
  /// not have effect, also Aspose.Words.Saving.HtmlFixedSaveOptions.ResourceSavingCallback
  /// is not fired for fonts. Default is false.
  bool useTargetMachineFonts;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize HtmlFixedSaveOptionsData data model.');
    }

    super.deserialize(json);
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

    if (showPageBorder != null) {
      _result['ShowPageBorder'] = showPageBorder;
    }

    if (useTargetMachineFonts != null) {
      _result['UseTargetMachineFonts'] = useTargetMachineFonts;
    }
    return _result;
  }
}


