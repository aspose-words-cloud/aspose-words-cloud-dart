/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_save_options_data.dart">
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

/// Container class for pdf save options.
class PdfSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the PDF standards compliance level for output documents.
  String compliance;

  /// Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks.
  /// When clicked the hyperlink will lead to the corresponding footnote/endnote.
  /// The default value is false.
  bool createNoteHyperlinks;

  /// Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file.
  /// The default value is None.
  String customPropertiesExport;

  /// Gets or sets the details for signing the output PDF document.
  PdfDigitalSignatureDetailsData digitalSignatureDetails;

  /// Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
  bool displayDocTitle;

  /// Gets or sets the downsample options.
  DownsampleOptionsData downsampleOptions;

  /// Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
  bool embedFullFonts;

  /// Gets or sets the details for encrypting the output PDF document.
  PdfEncryptionDetailsData encryptionDetails;

  /// Gets or sets a value indicating whether URI should be escaped before writing.
  bool escapeUri;

  /// Gets or sets a value indicating whether to export document structure.
  bool exportDocumentStructure;

  /// Gets or sets the font embedding mode.
  String fontEmbeddingMode;

  /// Gets or sets the option that controls how bookmarks in headers/footers are exported.
  /// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
  PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum headerFooterBookmarksExportMode;

  /// Gets or sets the option that controls how the color space will be selected for the images in PDF document.
  String imageColorSpaceExportMode;

  /// Gets or sets the compression type to be used for all images in the document.
  String imageCompression;

  /// Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead.
  bool interpolateImages;

  /// Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
  bool openHyperlinksInNewWindow;

  /// Gets or sets the outline options.
  OutlineOptionsData outlineOptions;

  /// Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
  String pageMode;

  /// Gets or sets a value indicating whether to preblend transparent images with black background color.
  bool preblendImages;

  /// Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
  bool preserveFormFields;

  /// Gets or sets the compression type to be used for all textual content in the document.
  String textCompression;

  /// Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
  bool useBookFoldPrintingSettings;

  /// Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
  bool useCoreFonts;

  /// Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
  String zoomBehavior;

  /// Gets or sets the zoom factor (in percentages) for a document.
  int zoomFactor;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PdfSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Compliance')) {
      compliance = json['Compliance'] as String;
    } else {
      compliance = null;
    }

    if (json.containsKey('CreateNoteHyperlinks')) {
      createNoteHyperlinks = json['CreateNoteHyperlinks'] as bool;
    } else {
      createNoteHyperlinks = null;
    }

    if (json.containsKey('CustomPropertiesExport')) {
      customPropertiesExport = json['CustomPropertiesExport'] as String;
    } else {
      customPropertiesExport = null;
    }

    if (json.containsKey('DigitalSignatureDetails')) {
      digitalSignatureDetails = PdfDigitalSignatureDetailsData();
      digitalSignatureDetails.deserialize(json['DigitalSignatureDetails'] as Map<String, dynamic>);
    } else {
      digitalSignatureDetails = null;
    }

    if (json.containsKey('DisplayDocTitle')) {
      displayDocTitle = json['DisplayDocTitle'] as bool;
    } else {
      displayDocTitle = null;
    }

    if (json.containsKey('DownsampleOptions')) {
      downsampleOptions = DownsampleOptionsData();
      downsampleOptions.deserialize(json['DownsampleOptions'] as Map<String, dynamic>);
    } else {
      downsampleOptions = null;
    }

    if (json.containsKey('EmbedFullFonts')) {
      embedFullFonts = json['EmbedFullFonts'] as bool;
    } else {
      embedFullFonts = null;
    }

    if (json.containsKey('EncryptionDetails')) {
      encryptionDetails = PdfEncryptionDetailsData();
      encryptionDetails.deserialize(json['EncryptionDetails'] as Map<String, dynamic>);
    } else {
      encryptionDetails = null;
    }

    if (json.containsKey('EscapeUri')) {
      escapeUri = json['EscapeUri'] as bool;
    } else {
      escapeUri = null;
    }

    if (json.containsKey('ExportDocumentStructure')) {
      exportDocumentStructure = json['ExportDocumentStructure'] as bool;
    } else {
      exportDocumentStructure = null;
    }

    if (json.containsKey('FontEmbeddingMode')) {
      fontEmbeddingMode = json['FontEmbeddingMode'] as String;
    } else {
      fontEmbeddingMode = null;
    }

    if (json.containsKey('HeaderFooterBookmarksExportMode')) {
      switch (json['HeaderFooterBookmarksExportMode'] as String) {
        case 'None': headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.none; break;
        case 'First': headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.first; break;
        case 'All': headerFooterBookmarksExportMode = PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.all; break;
        default: headerFooterBookmarksExportMode = null; break;
      }
    } else {
      headerFooterBookmarksExportMode = null;
    }

    if (json.containsKey('ImageColorSpaceExportMode')) {
      imageColorSpaceExportMode = json['ImageColorSpaceExportMode'] as String;
    } else {
      imageColorSpaceExportMode = null;
    }

    if (json.containsKey('ImageCompression')) {
      imageCompression = json['ImageCompression'] as String;
    } else {
      imageCompression = null;
    }

    if (json.containsKey('InterpolateImages')) {
      interpolateImages = json['InterpolateImages'] as bool;
    } else {
      interpolateImages = null;
    }

    if (json.containsKey('OpenHyperlinksInNewWindow')) {
      openHyperlinksInNewWindow = json['OpenHyperlinksInNewWindow'] as bool;
    } else {
      openHyperlinksInNewWindow = null;
    }

    if (json.containsKey('OutlineOptions')) {
      outlineOptions = OutlineOptionsData();
      outlineOptions.deserialize(json['OutlineOptions'] as Map<String, dynamic>);
    } else {
      outlineOptions = null;
    }

    if (json.containsKey('PageMode')) {
      pageMode = json['PageMode'] as String;
    } else {
      pageMode = null;
    }

    if (json.containsKey('PreblendImages')) {
      preblendImages = json['PreblendImages'] as bool;
    } else {
      preblendImages = null;
    }

    if (json.containsKey('PreserveFormFields')) {
      preserveFormFields = json['PreserveFormFields'] as bool;
    } else {
      preserveFormFields = null;
    }

    if (json.containsKey('TextCompression')) {
      textCompression = json['TextCompression'] as String;
    } else {
      textCompression = null;
    }

    if (json.containsKey('UseBookFoldPrintingSettings')) {
      useBookFoldPrintingSettings = json['UseBookFoldPrintingSettings'] as bool;
    } else {
      useBookFoldPrintingSettings = null;
    }

    if (json.containsKey('UseCoreFonts')) {
      useCoreFonts = json['UseCoreFonts'] as bool;
    } else {
      useCoreFonts = null;
    }

    if (json.containsKey('ZoomBehavior')) {
      zoomBehavior = json['ZoomBehavior'] as String;
    } else {
      zoomBehavior = null;
    }

    if (json.containsKey('ZoomFactor')) {
      zoomFactor = json['ZoomFactor'] as int;
    } else {
      zoomFactor = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (compliance != null) {
      _result['Compliance'] = compliance;
    }

    if (createNoteHyperlinks != null) {
      _result['CreateNoteHyperlinks'] = createNoteHyperlinks;
    }

    if (customPropertiesExport != null) {
      _result['CustomPropertiesExport'] = customPropertiesExport;
    }

    if (digitalSignatureDetails != null) {
      _result['DigitalSignatureDetails'] = digitalSignatureDetails.serialize();
    }

    if (displayDocTitle != null) {
      _result['DisplayDocTitle'] = displayDocTitle;
    }

    if (downsampleOptions != null) {
      _result['DownsampleOptions'] = downsampleOptions.serialize();
    }

    if (embedFullFonts != null) {
      _result['EmbedFullFonts'] = embedFullFonts;
    }

    if (encryptionDetails != null) {
      _result['EncryptionDetails'] = encryptionDetails.serialize();
    }

    if (escapeUri != null) {
      _result['EscapeUri'] = escapeUri;
    }

    if (exportDocumentStructure != null) {
      _result['ExportDocumentStructure'] = exportDocumentStructure;
    }

    if (fontEmbeddingMode != null) {
      _result['FontEmbeddingMode'] = fontEmbeddingMode;
    }

    if (headerFooterBookmarksExportMode != null) {
      switch (headerFooterBookmarksExportMode) {
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.none: _result['HeaderFooterBookmarksExportMode'] = 'None'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.first: _result['HeaderFooterBookmarksExportMode'] = 'First'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.all: _result['HeaderFooterBookmarksExportMode'] = 'All'; break;
        default: break;
      }
    }

    if (imageColorSpaceExportMode != null) {
      _result['ImageColorSpaceExportMode'] = imageColorSpaceExportMode;
    }

    if (imageCompression != null) {
      _result['ImageCompression'] = imageCompression;
    }

    if (interpolateImages != null) {
      _result['InterpolateImages'] = interpolateImages;
    }

    if (openHyperlinksInNewWindow != null) {
      _result['OpenHyperlinksInNewWindow'] = openHyperlinksInNewWindow;
    }

    if (outlineOptions != null) {
      _result['OutlineOptions'] = outlineOptions.serialize();
    }

    if (pageMode != null) {
      _result['PageMode'] = pageMode;
    }

    if (preblendImages != null) {
      _result['PreblendImages'] = preblendImages;
    }

    if (preserveFormFields != null) {
      _result['PreserveFormFields'] = preserveFormFields;
    }

    if (textCompression != null) {
      _result['TextCompression'] = textCompression;
    }

    if (useBookFoldPrintingSettings != null) {
      _result['UseBookFoldPrintingSettings'] = useBookFoldPrintingSettings;
    }

    if (useCoreFonts != null) {
      _result['UseCoreFonts'] = useCoreFonts;
    }

    if (zoomBehavior != null) {
      _result['ZoomBehavior'] = zoomBehavior;
    }

    if (zoomFactor != null) {
      _result['ZoomFactor'] = zoomFactor;
    }
    return _result;
  }
}

/// Gets or sets the option that controls how bookmarks in headers/footers are exported.
/// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
enum PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum
{ 
  none,
  first,
  all
}

