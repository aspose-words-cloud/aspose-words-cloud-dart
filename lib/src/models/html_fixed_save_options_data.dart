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
    super.deserialize(json);
    if (json.containsKey('CssClassNamesPrefix')) {
      this.cssClassNamesPrefix = json['CssClassNamesPrefix'];
    } else {
      this.cssClassNamesPrefix = null;
    }

    if (json.containsKey('Encoding')) {
      this.encoding = json['Encoding'];
    } else {
      this.encoding = null;
    }

    if (json.containsKey('ExportEmbeddedCss')) {
      this.exportEmbeddedCss = json['ExportEmbeddedCss'];
    } else {
      this.exportEmbeddedCss = null;
    }

    if (json.containsKey('ExportEmbeddedFonts')) {
      this.exportEmbeddedFonts = json['ExportEmbeddedFonts'];
    } else {
      this.exportEmbeddedFonts = null;
    }

    if (json.containsKey('ExportEmbeddedImages')) {
      this.exportEmbeddedImages = json['ExportEmbeddedImages'];
    } else {
      this.exportEmbeddedImages = null;
    }

    if (json.containsKey('ExportFormFields')) {
      this.exportFormFields = json['ExportFormFields'];
    } else {
      this.exportFormFields = null;
    }

    if (json.containsKey('FontFormat')) {
      this.fontFormat = json['FontFormat'];
    } else {
      this.fontFormat = null;
    }

    if (json.containsKey('PageHorizontalAlignment')) {
      this.pageHorizontalAlignment = json['PageHorizontalAlignment'];
    } else {
      this.pageHorizontalAlignment = null;
    }

    if (json.containsKey('PageMargins')) {
      this.pageMargins = json['PageMargins'];
    } else {
      this.pageMargins = null;
    }

    if (json.containsKey('ResourcesFolder')) {
      this.resourcesFolder = json['ResourcesFolder'];
    } else {
      this.resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      this.resourcesFolderAlias = json['ResourcesFolderAlias'];
    } else {
      this.resourcesFolderAlias = null;
    }

    if (json.containsKey('SaveFontFaceCssSeparately')) {
      this.saveFontFaceCssSeparately = json['SaveFontFaceCssSeparately'];
    } else {
      this.saveFontFaceCssSeparately = null;
    }

    if (json.containsKey('ShowPageBorder')) {
      this.showPageBorder = json['ShowPageBorder'];
    } else {
      this.showPageBorder = null;
    }

    if (json.containsKey('UseTargetMachineFonts')) {
      this.useTargetMachineFonts = json['UseTargetMachineFonts'];
    } else {
      this.useTargetMachineFonts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.cssClassNamesPrefix != null) {
      _result['CssClassNamesPrefix'] = this.cssClassNamesPrefix;
    }

    if (this.encoding != null) {
      _result['Encoding'] = this.encoding;
    }

    if (this.exportEmbeddedCss != null) {
      _result['ExportEmbeddedCss'] = this.exportEmbeddedCss;
    }

    if (this.exportEmbeddedFonts != null) {
      _result['ExportEmbeddedFonts'] = this.exportEmbeddedFonts;
    }

    if (this.exportEmbeddedImages != null) {
      _result['ExportEmbeddedImages'] = this.exportEmbeddedImages;
    }

    if (this.exportFormFields != null) {
      _result['ExportFormFields'] = this.exportFormFields;
    }

    if (this.fontFormat != null) {
      _result['FontFormat'] = this.fontFormat;
    }

    if (this.pageHorizontalAlignment != null) {
      _result['PageHorizontalAlignment'] = this.pageHorizontalAlignment;
    }

    if (this.pageMargins != null) {
      _result['PageMargins'] = this.pageMargins;
    }

    if (this.resourcesFolder != null) {
      _result['ResourcesFolder'] = this.resourcesFolder;
    }

    if (this.resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = this.resourcesFolderAlias;
    }

    if (this.saveFontFaceCssSeparately != null) {
      _result['SaveFontFaceCssSeparately'] = this.saveFontFaceCssSeparately;
    }

    if (this.showPageBorder != null) {
      _result['ShowPageBorder'] = this.showPageBorder;
    }

    if (this.useTargetMachineFonts != null) {
      _result['UseTargetMachineFonts'] = this.useTargetMachineFonts;
    }
    return _result;
  }
}


