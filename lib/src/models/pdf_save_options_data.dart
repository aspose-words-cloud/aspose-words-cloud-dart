/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_save_options_data.dart">
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

/// Container class for pdf save options.
class PdfSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets a value determining whether or not to cache graphics placed in document's background.
  bool? _cacheBackgroundGraphics;

  bool? get cacheBackgroundGraphics => _cacheBackgroundGraphics;
  set cacheBackgroundGraphics(bool? val) => _cacheBackgroundGraphics = val;


  /// Gets or sets the PDF standards compliance level for output documents.
  PdfSaveOptionsData_ComplianceEnum? _compliance;

  PdfSaveOptionsData_ComplianceEnum? get compliance => _compliance;
  set compliance(PdfSaveOptionsData_ComplianceEnum? val) => _compliance = val;


  /// Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks.
  /// When clicked the hyperlink will lead to the corresponding footnote/endnote.
  /// The default value is false.
  bool? _createNoteHyperlinks;

  bool? get createNoteHyperlinks => _createNoteHyperlinks;
  set createNoteHyperlinks(bool? val) => _createNoteHyperlinks = val;


  /// Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file.
  /// The default value is None.
  PdfSaveOptionsData_CustomPropertiesExportEnum? _customPropertiesExport;

  PdfSaveOptionsData_CustomPropertiesExportEnum? get customPropertiesExport => _customPropertiesExport;
  set customPropertiesExport(PdfSaveOptionsData_CustomPropertiesExportEnum? val) => _customPropertiesExport = val;


  /// Gets or sets the details for signing the output PDF document.
  PdfDigitalSignatureDetailsData? _digitalSignatureDetails;

  PdfDigitalSignatureDetailsData? get digitalSignatureDetails => _digitalSignatureDetails;
  set digitalSignatureDetails(PdfDigitalSignatureDetailsData? val) => _digitalSignatureDetails = val;


  /// Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
  bool? _displayDocTitle;

  bool? get displayDocTitle => _displayDocTitle;
  set displayDocTitle(bool? val) => _displayDocTitle = val;


  /// Gets or sets the downsample options.
  DownsampleOptionsData? _downsampleOptions;

  DownsampleOptionsData? get downsampleOptions => _downsampleOptions;
  set downsampleOptions(DownsampleOptionsData? val) => _downsampleOptions = val;


  /// Gets or sets a value determining whether or not to embed attachments to the PDF document.
  bool? _embedAttachments;

  bool? get embedAttachments => _embedAttachments;
  set embedAttachments(bool? val) => _embedAttachments = val;


  /// Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
  bool? _embedFullFonts;

  bool? get embedFullFonts => _embedFullFonts;
  set embedFullFonts(bool? val) => _embedFullFonts = val;


  /// Gets or sets the details for encrypting the output PDF document.
  PdfEncryptionDetailsData? _encryptionDetails;

  PdfEncryptionDetailsData? get encryptionDetails => _encryptionDetails;
  set encryptionDetails(PdfEncryptionDetailsData? val) => _encryptionDetails = val;


  /// Gets or sets a value indicating whether to export document structure.
  bool? _exportDocumentStructure;

  bool? get exportDocumentStructure => _exportDocumentStructure;
  set exportDocumentStructure(bool? val) => _exportDocumentStructure = val;


  /// Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language.
  bool? _exportLanguageToSpanTag;

  bool? get exportLanguageToSpanTag => _exportLanguageToSpanTag;
  set exportLanguageToSpanTag(bool? val) => _exportLanguageToSpanTag = val;


  /// Gets or sets the font embedding mode.
  PdfSaveOptionsData_FontEmbeddingModeEnum? _fontEmbeddingMode;

  PdfSaveOptionsData_FontEmbeddingModeEnum? get fontEmbeddingMode => _fontEmbeddingMode;
  set fontEmbeddingMode(PdfSaveOptionsData_FontEmbeddingModeEnum? val) => _fontEmbeddingMode = val;


  /// Gets or sets the option that controls how bookmarks in headers/footers are exported.
  /// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
  PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum? _headerFooterBookmarksExportMode;

  PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum? get headerFooterBookmarksExportMode => _headerFooterBookmarksExportMode;
  set headerFooterBookmarksExportMode(PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum? val) => _headerFooterBookmarksExportMode = val;


  /// Gets or sets the option that controls how the color space will be selected for the images in PDF document.
  PdfSaveOptionsData_ImageColorSpaceExportModeEnum? _imageColorSpaceExportMode;

  PdfSaveOptionsData_ImageColorSpaceExportModeEnum? get imageColorSpaceExportMode => _imageColorSpaceExportMode;
  set imageColorSpaceExportMode(PdfSaveOptionsData_ImageColorSpaceExportModeEnum? val) => _imageColorSpaceExportMode = val;


  /// Gets or sets the compression type to be used for all images in the document.
  String? _imageCompression;

  String? get imageCompression => _imageCompression;
  set imageCompression(String? val) => _imageCompression = val;


  /// Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead.
  bool? _interpolateImages;

  bool? get interpolateImages => _interpolateImages;
  set interpolateImages(bool? val) => _interpolateImages = val;


  /// Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
  bool? _openHyperlinksInNewWindow;

  bool? get openHyperlinksInNewWindow => _openHyperlinksInNewWindow;
  set openHyperlinksInNewWindow(bool? val) => _openHyperlinksInNewWindow = val;


  /// Gets or sets the outline options.
  OutlineOptionsData? _outlineOptions;

  OutlineOptionsData? get outlineOptions => _outlineOptions;
  set outlineOptions(OutlineOptionsData? val) => _outlineOptions = val;


  /// Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
  PdfSaveOptionsData_PageModeEnum? _pageMode;

  PdfSaveOptionsData_PageModeEnum? get pageMode => _pageMode;
  set pageMode(PdfSaveOptionsData_PageModeEnum? val) => _pageMode = val;


  /// Gets or sets a value indicating whether to preblend transparent images with black background color.
  bool? _preblendImages;

  bool? get preblendImages => _preblendImages;
  set preblendImages(bool? val) => _preblendImages = val;


  /// Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
  bool? _preserveFormFields;

  bool? get preserveFormFields => _preserveFormFields;
  set preserveFormFields(bool? val) => _preserveFormFields = val;


  /// Gets or sets the compression type to be used for all textual content in the document.
  PdfSaveOptionsData_TextCompressionEnum? _textCompression;

  PdfSaveOptionsData_TextCompressionEnum? get textCompression => _textCompression;
  set textCompression(PdfSaveOptionsData_TextCompressionEnum? val) => _textCompression = val;


  /// Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
  bool? _useBookFoldPrintingSettings;

  bool? get useBookFoldPrintingSettings => _useBookFoldPrintingSettings;
  set useBookFoldPrintingSettings(bool? val) => _useBookFoldPrintingSettings = val;


  /// Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
  bool? _useCoreFonts;

  bool? get useCoreFonts => _useCoreFonts;
  set useCoreFonts(bool? val) => _useCoreFonts = val;


  /// Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
  PdfSaveOptionsData_ZoomBehaviorEnum? _zoomBehavior;

  PdfSaveOptionsData_ZoomBehaviorEnum? get zoomBehavior => _zoomBehavior;
  set zoomBehavior(PdfSaveOptionsData_ZoomBehaviorEnum? val) => _zoomBehavior = val;


  /// Gets or sets the zoom factor (in percentages) for a document.
  int? _zoomFactor;

  int? get zoomFactor => _zoomFactor;
  set zoomFactor(int? val) => _zoomFactor = val;


  /// Gets the format of save.
  String? _saveFormat = 'pdf';

  @override
  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PdfSaveOptionsData data model.');
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

    if (json.containsKey('ZipOutput')) {
      zipOutput = json['ZipOutput'] as bool;
    } else {
      zipOutput = null;
    }

    if (json.containsKey('ColorMode')) {
      switch (json['ColorMode'] as String) {
        case 'Normal': colorMode = FixedPageSaveOptionsData_ColorModeEnum.normal; break;
        case 'Grayscale': colorMode = FixedPageSaveOptionsData_ColorModeEnum.grayscale; break;
        default: colorMode = null; break;
      }
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
      metafileRenderingOptions!.deserialize(json['MetafileRenderingOptions'] as Map<String, dynamic>);
    } else {
      metafileRenderingOptions = null;
    }

    if (json.containsKey('NumeralFormat')) {
      switch (json['NumeralFormat'] as String) {
        case 'European': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.european; break;
        case 'ArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.arabicIndic; break;
        case 'EasternArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.easternArabicIndic; break;
        case 'Context': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.context; break;
        case 'System': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.system; break;
        default: numeralFormat = null; break;
      }
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

    if (json.containsKey('CacheBackgroundGraphics')) {
      cacheBackgroundGraphics = json['CacheBackgroundGraphics'] as bool;
    } else {
      cacheBackgroundGraphics = null;
    }

    if (json.containsKey('Compliance')) {
      switch (json['Compliance'] as String) {
        case 'Pdf17': compliance = PdfSaveOptionsData_ComplianceEnum.pdf17; break;
        case 'Pdf20': compliance = PdfSaveOptionsData_ComplianceEnum.pdf20; break;
        case 'PdfA1a': compliance = PdfSaveOptionsData_ComplianceEnum.pdfA1a; break;
        case 'PdfA1b': compliance = PdfSaveOptionsData_ComplianceEnum.pdfA1b; break;
        case 'PdfA2a': compliance = PdfSaveOptionsData_ComplianceEnum.pdfA2a; break;
        case 'PdfA2u': compliance = PdfSaveOptionsData_ComplianceEnum.pdfA2u; break;
        case 'PdfA4': compliance = PdfSaveOptionsData_ComplianceEnum.pdfA4; break;
        case 'PdfUa1': compliance = PdfSaveOptionsData_ComplianceEnum.pdfUa1; break;
        default: compliance = null; break;
      }
    } else {
      compliance = null;
    }

    if (json.containsKey('CreateNoteHyperlinks')) {
      createNoteHyperlinks = json['CreateNoteHyperlinks'] as bool;
    } else {
      createNoteHyperlinks = null;
    }

    if (json.containsKey('CustomPropertiesExport')) {
      switch (json['CustomPropertiesExport'] as String) {
        case 'None': customPropertiesExport = PdfSaveOptionsData_CustomPropertiesExportEnum.none; break;
        case 'Standard': customPropertiesExport = PdfSaveOptionsData_CustomPropertiesExportEnum.standard; break;
        case 'Metadata': customPropertiesExport = PdfSaveOptionsData_CustomPropertiesExportEnum.metadata; break;
        default: customPropertiesExport = null; break;
      }
    } else {
      customPropertiesExport = null;
    }

    if (json.containsKey('DigitalSignatureDetails')) {
      digitalSignatureDetails = PdfDigitalSignatureDetailsData();
      digitalSignatureDetails!.deserialize(json['DigitalSignatureDetails'] as Map<String, dynamic>);
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
      downsampleOptions!.deserialize(json['DownsampleOptions'] as Map<String, dynamic>);
    } else {
      downsampleOptions = null;
    }

    if (json.containsKey('EmbedAttachments')) {
      embedAttachments = json['EmbedAttachments'] as bool;
    } else {
      embedAttachments = null;
    }

    if (json.containsKey('EmbedFullFonts')) {
      embedFullFonts = json['EmbedFullFonts'] as bool;
    } else {
      embedFullFonts = null;
    }

    if (json.containsKey('EncryptionDetails')) {
      encryptionDetails = PdfEncryptionDetailsData();
      encryptionDetails!.deserialize(json['EncryptionDetails'] as Map<String, dynamic>);
    } else {
      encryptionDetails = null;
    }

    if (json.containsKey('ExportDocumentStructure')) {
      exportDocumentStructure = json['ExportDocumentStructure'] as bool;
    } else {
      exportDocumentStructure = null;
    }

    if (json.containsKey('ExportLanguageToSpanTag')) {
      exportLanguageToSpanTag = json['ExportLanguageToSpanTag'] as bool;
    } else {
      exportLanguageToSpanTag = null;
    }

    if (json.containsKey('FontEmbeddingMode')) {
      switch (json['FontEmbeddingMode'] as String) {
        case 'EmbedAll': fontEmbeddingMode = PdfSaveOptionsData_FontEmbeddingModeEnum.embedAll; break;
        case 'EmbedNonstandard': fontEmbeddingMode = PdfSaveOptionsData_FontEmbeddingModeEnum.embedNonstandard; break;
        case 'EmbedNone': fontEmbeddingMode = PdfSaveOptionsData_FontEmbeddingModeEnum.embedNone; break;
        default: fontEmbeddingMode = null; break;
      }
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
      switch (json['ImageColorSpaceExportMode'] as String) {
        case 'Auto': imageColorSpaceExportMode = PdfSaveOptionsData_ImageColorSpaceExportModeEnum.auto; break;
        case 'SimpleCmyk': imageColorSpaceExportMode = PdfSaveOptionsData_ImageColorSpaceExportModeEnum.simpleCmyk; break;
        default: imageColorSpaceExportMode = null; break;
      }
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
      outlineOptions!.deserialize(json['OutlineOptions'] as Map<String, dynamic>);
    } else {
      outlineOptions = null;
    }

    if (json.containsKey('PageMode')) {
      switch (json['PageMode'] as String) {
        case 'UseNone': pageMode = PdfSaveOptionsData_PageModeEnum.useNone; break;
        case 'UseOutlines': pageMode = PdfSaveOptionsData_PageModeEnum.useOutlines; break;
        case 'UseThumbs': pageMode = PdfSaveOptionsData_PageModeEnum.useThumbs; break;
        case 'FullScreen': pageMode = PdfSaveOptionsData_PageModeEnum.fullScreen; break;
        case 'UseOC': pageMode = PdfSaveOptionsData_PageModeEnum.useOC; break;
        case 'UseAttachments': pageMode = PdfSaveOptionsData_PageModeEnum.useAttachments; break;
        default: pageMode = null; break;
      }
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
      switch (json['TextCompression'] as String) {
        case 'None': textCompression = PdfSaveOptionsData_TextCompressionEnum.none; break;
        case 'Flate': textCompression = PdfSaveOptionsData_TextCompressionEnum.flate; break;
        default: textCompression = null; break;
      }
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
      switch (json['ZoomBehavior'] as String) {
        case 'None': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.none; break;
        case 'ZoomFactor': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.zoomFactor; break;
        case 'FitPage': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.fitPage; break;
        case 'FitWidth': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.fitWidth; break;
        case 'FitHeight': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.fitHeight; break;
        case 'FitBox': zoomBehavior = PdfSaveOptionsData_ZoomBehaviorEnum.fitBox; break;
        default: zoomBehavior = null; break;
      }
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
    if (cacheBackgroundGraphics != null) {
      _result['CacheBackgroundGraphics'] = cacheBackgroundGraphics!;
    }

    if (compliance != null) {
      switch (compliance!) {
        case PdfSaveOptionsData_ComplianceEnum.pdf17: _result['Compliance'] = 'Pdf17'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdf20: _result['Compliance'] = 'Pdf20'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfA1a: _result['Compliance'] = 'PdfA1a'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfA1b: _result['Compliance'] = 'PdfA1b'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfA2a: _result['Compliance'] = 'PdfA2a'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfA2u: _result['Compliance'] = 'PdfA2u'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfA4: _result['Compliance'] = 'PdfA4'; break;
        case PdfSaveOptionsData_ComplianceEnum.pdfUa1: _result['Compliance'] = 'PdfUa1'; break;
        default: break;
      }
    }

    if (createNoteHyperlinks != null) {
      _result['CreateNoteHyperlinks'] = createNoteHyperlinks!;
    }

    if (customPropertiesExport != null) {
      switch (customPropertiesExport!) {
        case PdfSaveOptionsData_CustomPropertiesExportEnum.none: _result['CustomPropertiesExport'] = 'None'; break;
        case PdfSaveOptionsData_CustomPropertiesExportEnum.standard: _result['CustomPropertiesExport'] = 'Standard'; break;
        case PdfSaveOptionsData_CustomPropertiesExportEnum.metadata: _result['CustomPropertiesExport'] = 'Metadata'; break;
        default: break;
      }
    }

    if (digitalSignatureDetails != null) {
      _result['DigitalSignatureDetails'] = digitalSignatureDetails!.serialize();
    }

    if (displayDocTitle != null) {
      _result['DisplayDocTitle'] = displayDocTitle!;
    }

    if (downsampleOptions != null) {
      _result['DownsampleOptions'] = downsampleOptions!.serialize();
    }

    if (embedAttachments != null) {
      _result['EmbedAttachments'] = embedAttachments!;
    }

    if (embedFullFonts != null) {
      _result['EmbedFullFonts'] = embedFullFonts!;
    }

    if (encryptionDetails != null) {
      _result['EncryptionDetails'] = encryptionDetails!.serialize();
    }

    if (exportDocumentStructure != null) {
      _result['ExportDocumentStructure'] = exportDocumentStructure!;
    }

    if (exportLanguageToSpanTag != null) {
      _result['ExportLanguageToSpanTag'] = exportLanguageToSpanTag!;
    }

    if (fontEmbeddingMode != null) {
      switch (fontEmbeddingMode!) {
        case PdfSaveOptionsData_FontEmbeddingModeEnum.embedAll: _result['FontEmbeddingMode'] = 'EmbedAll'; break;
        case PdfSaveOptionsData_FontEmbeddingModeEnum.embedNonstandard: _result['FontEmbeddingMode'] = 'EmbedNonstandard'; break;
        case PdfSaveOptionsData_FontEmbeddingModeEnum.embedNone: _result['FontEmbeddingMode'] = 'EmbedNone'; break;
        default: break;
      }
    }

    if (headerFooterBookmarksExportMode != null) {
      switch (headerFooterBookmarksExportMode!) {
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.none: _result['HeaderFooterBookmarksExportMode'] = 'None'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.first: _result['HeaderFooterBookmarksExportMode'] = 'First'; break;
        case PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum.all: _result['HeaderFooterBookmarksExportMode'] = 'All'; break;
        default: break;
      }
    }

    if (imageColorSpaceExportMode != null) {
      switch (imageColorSpaceExportMode!) {
        case PdfSaveOptionsData_ImageColorSpaceExportModeEnum.auto: _result['ImageColorSpaceExportMode'] = 'Auto'; break;
        case PdfSaveOptionsData_ImageColorSpaceExportModeEnum.simpleCmyk: _result['ImageColorSpaceExportMode'] = 'SimpleCmyk'; break;
        default: break;
      }
    }

    if (imageCompression != null) {
      _result['ImageCompression'] = imageCompression!;
    }

    if (interpolateImages != null) {
      _result['InterpolateImages'] = interpolateImages!;
    }

    if (openHyperlinksInNewWindow != null) {
      _result['OpenHyperlinksInNewWindow'] = openHyperlinksInNewWindow!;
    }

    if (outlineOptions != null) {
      _result['OutlineOptions'] = outlineOptions!.serialize();
    }

    if (pageMode != null) {
      switch (pageMode!) {
        case PdfSaveOptionsData_PageModeEnum.useNone: _result['PageMode'] = 'UseNone'; break;
        case PdfSaveOptionsData_PageModeEnum.useOutlines: _result['PageMode'] = 'UseOutlines'; break;
        case PdfSaveOptionsData_PageModeEnum.useThumbs: _result['PageMode'] = 'UseThumbs'; break;
        case PdfSaveOptionsData_PageModeEnum.fullScreen: _result['PageMode'] = 'FullScreen'; break;
        case PdfSaveOptionsData_PageModeEnum.useOC: _result['PageMode'] = 'UseOC'; break;
        case PdfSaveOptionsData_PageModeEnum.useAttachments: _result['PageMode'] = 'UseAttachments'; break;
        default: break;
      }
    }

    if (preblendImages != null) {
      _result['PreblendImages'] = preblendImages!;
    }

    if (preserveFormFields != null) {
      _result['PreserveFormFields'] = preserveFormFields!;
    }

    if (textCompression != null) {
      switch (textCompression!) {
        case PdfSaveOptionsData_TextCompressionEnum.none: _result['TextCompression'] = 'None'; break;
        case PdfSaveOptionsData_TextCompressionEnum.flate: _result['TextCompression'] = 'Flate'; break;
        default: break;
      }
    }

    if (useBookFoldPrintingSettings != null) {
      _result['UseBookFoldPrintingSettings'] = useBookFoldPrintingSettings!;
    }

    if (useCoreFonts != null) {
      _result['UseCoreFonts'] = useCoreFonts!;
    }

    if (zoomBehavior != null) {
      switch (zoomBehavior!) {
        case PdfSaveOptionsData_ZoomBehaviorEnum.none: _result['ZoomBehavior'] = 'None'; break;
        case PdfSaveOptionsData_ZoomBehaviorEnum.zoomFactor: _result['ZoomBehavior'] = 'ZoomFactor'; break;
        case PdfSaveOptionsData_ZoomBehaviorEnum.fitPage: _result['ZoomBehavior'] = 'FitPage'; break;
        case PdfSaveOptionsData_ZoomBehaviorEnum.fitWidth: _result['ZoomBehavior'] = 'FitWidth'; break;
        case PdfSaveOptionsData_ZoomBehaviorEnum.fitHeight: _result['ZoomBehavior'] = 'FitHeight'; break;
        case PdfSaveOptionsData_ZoomBehaviorEnum.fitBox: _result['ZoomBehavior'] = 'FitBox'; break;
        default: break;
      }
    }

    if (zoomFactor != null) {
      _result['ZoomFactor'] = zoomFactor!;
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }
}

/// Gets or sets the PDF standards compliance level for output documents.
enum PdfSaveOptionsData_ComplianceEnum
{ 
  pdf17,
  pdf20,
  pdfA1a,
  pdfA1b,
  pdfA2a,
  pdfA2u,
  pdfA4,
  pdfUa1
}

/// Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file.
/// The default value is None.
enum PdfSaveOptionsData_CustomPropertiesExportEnum
{ 
  none,
  standard,
  metadata
}

/// Gets or sets the font embedding mode.
enum PdfSaveOptionsData_FontEmbeddingModeEnum
{ 
  embedAll,
  embedNonstandard,
  embedNone
}

/// Gets or sets the option that controls how bookmarks in headers/footers are exported.
/// The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
enum PdfSaveOptionsData_HeaderFooterBookmarksExportModeEnum
{ 
  none,
  first,
  all
}

/// Gets or sets the option that controls how the color space will be selected for the images in PDF document.
enum PdfSaveOptionsData_ImageColorSpaceExportModeEnum
{ 
  auto,
  simpleCmyk
}

/// Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
enum PdfSaveOptionsData_PageModeEnum
{ 
  useNone,
  useOutlines,
  useThumbs,
  fullScreen,
  useOC,
  useAttachments
}

/// Gets or sets the compression type to be used for all textual content in the document.
enum PdfSaveOptionsData_TextCompressionEnum
{ 
  none,
  flate
}

/// Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
enum PdfSaveOptionsData_ZoomBehaviorEnum
{ 
  none,
  zoomFactor,
  fitPage,
  fitWidth,
  fitHeight,
  fitBox
}

