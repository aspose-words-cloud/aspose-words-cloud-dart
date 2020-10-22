/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_save_options_data.dart">
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

/// container class for pdf save options.
class PdfSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets specifies the PDF standards compliance level for output documents.
  String compliance;

  /// Gets or sets specifies whether to convert footnote/endnote references in main text story into active hyperlinks.
  /// When clicked the hyperlink will lead to the corresponding footnote/endnote.
  /// Default is false.
  bool createNoteHyperlinks;

  /// Gets or sets a value determining the way CustomDocumentProperties are exported to PDF file.
  /// Default value is None.
  String customPropertiesExport;

  /// Gets or sets specifies the details for signing the output PDF document.
  PdfDigitalSignatureDetailsData digitalSignatureDetails;

  /// Gets or sets a flag specifying whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
  bool displayDocTitle;

  /// Gets or sets allows to specify downsample options.
  DownsampleOptionsData downsampleOptions;

  /// Gets or sets controls how fonts are embedded into the resulting PDF documents.
  bool embedFullFonts;

  /// Gets or sets specifies the details for encrypting the output PDF document.
  PdfEncryptionDetailsData encryptionDetails;

  /// Gets or sets a flag specifying whether URI should be escaped before writing.
  bool escapeUri;

  /// Gets or sets determines whether or not to export document structure.
  bool exportDocumentStructure;

  /// Gets or sets specifies the font embedding mode.
  String fontEmbeddingMode;

  /// Gets or sets determines how bookmarks in headers/footers are exported.
  /// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
  PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum headerFooterBookmarksExportMode;

  /// Gets or sets specifies how the color space will be selected for the images in PDF document.
  String imageColorSpaceExportMode;

  /// Gets or sets specifies compression type to be used for all images in the document.
  String imageCompression;

  /// Gets or sets a flag indicating whether image interpolation shall be performed by a conforming
  /// reader. When false is specified, the flag is not written to the output document
  /// and the default behaviour of reader is used instead.
  bool interpolateImages;

  /// Gets or sets determines whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
  bool openHyperlinksInNewWindow;

  /// Gets or sets allows to specify outline options.
  OutlineOptionsData outlineOptions;

  /// Gets or sets specifies how the PDF document should be displayed when opened in the PDF reader.
  String pageMode;

  /// Gets or sets a value determining whether or not to preblend transparent images with black background color.
  bool preblendImages;

  /// Gets or sets specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
  bool preserveFormFields;

  /// Gets or sets specifies compression type to be used for all textual content in the document.
  String textCompression;

  /// Gets or sets determines whether the document should be saved using a booklet printing layout.
  bool useBookFoldPrintingSettings;

  /// Gets or sets determines whether or not to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
  bool useCoreFonts;

  /// Gets or sets determines what type of zoom should be applied when a document is opened with a PDF viewer.
  String zoomBehavior;

  /// Gets or sets determines zoom factor (in percentages) for a document.
  int zoomFactor;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Compliance')) {
      this.compliance = json['Compliance'];
    } else {
      this.compliance = null;
    }

    if (json.containsKey('CreateNoteHyperlinks')) {
      this.createNoteHyperlinks = json['CreateNoteHyperlinks'];
    } else {
      this.createNoteHyperlinks = null;
    }

    if (json.containsKey('CustomPropertiesExport')) {
      this.customPropertiesExport = json['CustomPropertiesExport'];
    } else {
      this.customPropertiesExport = null;
    }

    if (json.containsKey('DigitalSignatureDetails')) {
      this.digitalSignatureDetails = new PdfDigitalSignatureDetailsData();
      this.digitalSignatureDetails.deserialize(json['DigitalSignatureDetails']);
    } else {
      this.digitalSignatureDetails = null;
    }

    if (json.containsKey('DisplayDocTitle')) {
      this.displayDocTitle = json['DisplayDocTitle'];
    } else {
      this.displayDocTitle = null;
    }

    if (json.containsKey('DownsampleOptions')) {
      this.downsampleOptions = new DownsampleOptionsData();
      this.downsampleOptions.deserialize(json['DownsampleOptions']);
    } else {
      this.downsampleOptions = null;
    }

    if (json.containsKey('EmbedFullFonts')) {
      this.embedFullFonts = json['EmbedFullFonts'];
    } else {
      this.embedFullFonts = null;
    }

    if (json.containsKey('EncryptionDetails')) {
      this.encryptionDetails = new PdfEncryptionDetailsData();
      this.encryptionDetails.deserialize(json['EncryptionDetails']);
    } else {
      this.encryptionDetails = null;
    }

    if (json.containsKey('EscapeUri')) {
      this.escapeUri = json['EscapeUri'];
    } else {
      this.escapeUri = null;
    }

    if (json.containsKey('ExportDocumentStructure')) {
      this.exportDocumentStructure = json['ExportDocumentStructure'];
    } else {
      this.exportDocumentStructure = null;
    }

    if (json.containsKey('FontEmbeddingMode')) {
      this.fontEmbeddingMode = json['FontEmbeddingMode'];
    } else {
      this.fontEmbeddingMode = null;
    }

    if (json.containsKey('HeaderFooterBookmarksExportMode')) {
      switch (json['HeaderFooterBookmarksExportMode']) {
        case 'None': this.headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.none; break;
        case 'First': this.headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.first; break;
        case 'All': this.headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.all; break;
        default: this.headerFooterBookmarksExportMode = null; break;
      }
    } else {
      this.headerFooterBookmarksExportMode = null;
    }

    if (json.containsKey('ImageColorSpaceExportMode')) {
      this.imageColorSpaceExportMode = json['ImageColorSpaceExportMode'];
    } else {
      this.imageColorSpaceExportMode = null;
    }

    if (json.containsKey('ImageCompression')) {
      this.imageCompression = json['ImageCompression'];
    } else {
      this.imageCompression = null;
    }

    if (json.containsKey('InterpolateImages')) {
      this.interpolateImages = json['InterpolateImages'];
    } else {
      this.interpolateImages = null;
    }

    if (json.containsKey('OpenHyperlinksInNewWindow')) {
      this.openHyperlinksInNewWindow = json['OpenHyperlinksInNewWindow'];
    } else {
      this.openHyperlinksInNewWindow = null;
    }

    if (json.containsKey('OutlineOptions')) {
      this.outlineOptions = new OutlineOptionsData();
      this.outlineOptions.deserialize(json['OutlineOptions']);
    } else {
      this.outlineOptions = null;
    }

    if (json.containsKey('PageMode')) {
      this.pageMode = json['PageMode'];
    } else {
      this.pageMode = null;
    }

    if (json.containsKey('PreblendImages')) {
      this.preblendImages = json['PreblendImages'];
    } else {
      this.preblendImages = null;
    }

    if (json.containsKey('PreserveFormFields')) {
      this.preserveFormFields = json['PreserveFormFields'];
    } else {
      this.preserveFormFields = null;
    }

    if (json.containsKey('TextCompression')) {
      this.textCompression = json['TextCompression'];
    } else {
      this.textCompression = null;
    }

    if (json.containsKey('UseBookFoldPrintingSettings')) {
      this.useBookFoldPrintingSettings = json['UseBookFoldPrintingSettings'];
    } else {
      this.useBookFoldPrintingSettings = null;
    }

    if (json.containsKey('UseCoreFonts')) {
      this.useCoreFonts = json['UseCoreFonts'];
    } else {
      this.useCoreFonts = null;
    }

    if (json.containsKey('ZoomBehavior')) {
      this.zoomBehavior = json['ZoomBehavior'];
    } else {
      this.zoomBehavior = null;
    }

    if (json.containsKey('ZoomFactor')) {
      this.zoomFactor = json['ZoomFactor'];
    } else {
      this.zoomFactor = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.compliance != null) {
      _result['Compliance'] = this.compliance;
    }

    if (this.createNoteHyperlinks != null) {
      _result['CreateNoteHyperlinks'] = this.createNoteHyperlinks;
    }

    if (this.customPropertiesExport != null) {
      _result['CustomPropertiesExport'] = this.customPropertiesExport;
    }

    if (this.digitalSignatureDetails != null) {
      _result['DigitalSignatureDetails'] = this.digitalSignatureDetails.serialize();
    }

    if (this.displayDocTitle != null) {
      _result['DisplayDocTitle'] = this.displayDocTitle;
    }

    if (this.downsampleOptions != null) {
      _result['DownsampleOptions'] = this.downsampleOptions.serialize();
    }

    if (this.embedFullFonts != null) {
      _result['EmbedFullFonts'] = this.embedFullFonts;
    }

    if (this.encryptionDetails != null) {
      _result['EncryptionDetails'] = this.encryptionDetails.serialize();
    }

    if (this.escapeUri != null) {
      _result['EscapeUri'] = this.escapeUri;
    }

    if (this.exportDocumentStructure != null) {
      _result['ExportDocumentStructure'] = this.exportDocumentStructure;
    }

    if (this.fontEmbeddingMode != null) {
      _result['FontEmbeddingMode'] = this.fontEmbeddingMode;
    }

    if (this.headerFooterBookmarksExportMode != null) {
      switch (this.headerFooterBookmarksExportMode) {
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.none: _result['HeaderFooterBookmarksExportMode'] = 'None'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.first: _result['HeaderFooterBookmarksExportMode'] = 'First'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.all: _result['HeaderFooterBookmarksExportMode'] = 'All'; break;
        default: break;
      }
    }

    if (this.imageColorSpaceExportMode != null) {
      _result['ImageColorSpaceExportMode'] = this.imageColorSpaceExportMode;
    }

    if (this.imageCompression != null) {
      _result['ImageCompression'] = this.imageCompression;
    }

    if (this.interpolateImages != null) {
      _result['InterpolateImages'] = this.interpolateImages;
    }

    if (this.openHyperlinksInNewWindow != null) {
      _result['OpenHyperlinksInNewWindow'] = this.openHyperlinksInNewWindow;
    }

    if (this.outlineOptions != null) {
      _result['OutlineOptions'] = this.outlineOptions.serialize();
    }

    if (this.pageMode != null) {
      _result['PageMode'] = this.pageMode;
    }

    if (this.preblendImages != null) {
      _result['PreblendImages'] = this.preblendImages;
    }

    if (this.preserveFormFields != null) {
      _result['PreserveFormFields'] = this.preserveFormFields;
    }

    if (this.textCompression != null) {
      _result['TextCompression'] = this.textCompression;
    }

    if (this.useBookFoldPrintingSettings != null) {
      _result['UseBookFoldPrintingSettings'] = this.useBookFoldPrintingSettings;
    }

    if (this.useCoreFonts != null) {
      _result['UseCoreFonts'] = this.useCoreFonts;
    }

    if (this.zoomBehavior != null) {
      _result['ZoomBehavior'] = this.zoomBehavior;
    }

    if (this.zoomFactor != null) {
      _result['ZoomFactor'] = this.zoomFactor;
    }
    return _result;
  }
}

/// Gets or sets determines how bookmarks in headers/footers are exported.
/// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
enum PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum
{ 
  none,
  first,
  all
}

