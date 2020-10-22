/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_setup.dart">
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

/// Represents the page setup properties of a section.
class PageSetup extends LinkElement {
  /// Gets or sets specifies that this section contains bidirectional (complex scripts) text.
  bool bidi;

  /// Gets or sets specifies where the page border is positioned relative to intersecting texts and objects.
  bool borderAlwaysInFront;

  /// Gets or sets specifies which pages the page border is printed on.
  PageSetup_BorderAppliesToEnum borderAppliesTo;

  /// Gets or sets a value that indicates whether the specified page border is measured from the edge of the page or from
  /// the text it surrounds.
  PageSetup_BorderDistanceFromEnum borderDistanceFrom;

  /// Gets or sets returns or sets the distance (in points) between the bottom edge of the page and the bottom boundary of the body
  /// text.
  double bottomMargin;

  /// Gets or sets true if a different header or footer is used on the first page.
  bool differentFirstPageHeaderFooter;

  /// Gets or sets the paper tray (bin) to use for the first page of a section.
  /// The value is implementation (printer) specific.
  int firstPageTray;

  /// Gets or sets returns or sets the distance (in points) between the footer and the bottom of the page.
  double footerDistance;

  /// Gets or sets the amount of extra space added to the margin for document binding.
  double gutter;

  /// Gets or sets returns or sets the distance (in points) between the header and the top of the page.
  double headerDistance;

  /// Gets or sets returns or sets the distance (in points) between the left edge of the page and the left boundary of the body text.
  double leftMargin;

  /// Gets or sets returns or sets the numeric increment for line numbers.
  int lineNumberCountBy;

  /// Gets or sets distance between the right edge of line numbers and the left edge of the document.
  double lineNumberDistanceFromText;

  /// Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new
  /// page or section or runs continuously.
  PageSetup_LineNumberRestartModeEnum lineNumberRestartMode;

  /// Gets or sets the starting line number.
  int lineStartingNumber;

  /// Gets or sets returns or sets the orientation of the page.
  PageSetup_OrientationEnum orientation;

  /// Gets or sets the paper tray (bin) to be used for all but the first page of a section.
  /// The value is implementation (printer) specific.
  int otherPagesTray;

  /// Gets or sets returns or sets the height of the page in points.
  double pageHeight;

  /// Gets or sets the page number format.
  PageSetup_PageNumberStyleEnum pageNumberStyle;

  /// Gets or sets the starting page number of the section.
  int pageStartingNumber;

  /// Gets or sets returns or sets the width of the page in points.
  double pageWidth;

  /// Gets or sets returns or sets the paper size.
  PageSetup_PaperSizeEnum paperSize;

  /// Gets or sets true if page numbering restarts at the beginning of the section.
  bool restartPageNumbering;

  /// Gets or sets returns or sets the distance (in points) between the right edge of the page and the right boundary of the body
  /// text.
  double rightMargin;

  /// Gets or sets whether Microsoft Word uses gutters for the section based on a right-to-left language or a
  /// left-to-right language.
  bool rtlGutter;

  /// Gets or sets returns or sets the type of section break for the specified object.
  PageSetup_SectionStartEnum sectionStart;

  /// Gets or sets true if endnotes are printed at the end of the next section that doesn't suppress endnotes.
  /// Suppressed endnotes are printed before the endnotes in that section.
  bool suppressEndnotes;

  /// Gets or sets returns or sets the distance (in points) between the top edge of the page and the top boundary of the body text.
  double topMargin;

  /// Gets or sets returns or sets the vertical alignment of text on each page in a document or section.
  PageSetup_VerticalAlignmentEnum verticalAlignment;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Bidi')) {
      this.bidi = json['Bidi'];
    } else {
      this.bidi = null;
    }

    if (json.containsKey('BorderAlwaysInFront')) {
      this.borderAlwaysInFront = json['BorderAlwaysInFront'];
    } else {
      this.borderAlwaysInFront = null;
    }

    if (json.containsKey('BorderAppliesTo')) {
      switch (json['BorderAppliesTo']) {
        case 'AllPages': this.borderAppliesTo = PageSetup_BorderAppliesToEnum.allPages; break;
        case 'FirstPage': this.borderAppliesTo = PageSetup_BorderAppliesToEnum.firstPage; break;
        case 'OtherPages': this.borderAppliesTo = PageSetup_BorderAppliesToEnum.otherPages; break;
        default: this.borderAppliesTo = null; break;
      }
    } else {
      this.borderAppliesTo = null;
    }

    if (json.containsKey('BorderDistanceFrom')) {
      switch (json['BorderDistanceFrom']) {
        case 'Text': this.borderDistanceFrom = PageSetup_BorderDistanceFromEnum.text; break;
        case 'PageEdge': this.borderDistanceFrom = PageSetup_BorderDistanceFromEnum.pageEdge; break;
        default: this.borderDistanceFrom = null; break;
      }
    } else {
      this.borderDistanceFrom = null;
    }

    if (json.containsKey('BottomMargin')) {
      this.bottomMargin = json['BottomMargin'];
    } else {
      this.bottomMargin = null;
    }

    if (json.containsKey('DifferentFirstPageHeaderFooter')) {
      this.differentFirstPageHeaderFooter = json['DifferentFirstPageHeaderFooter'];
    } else {
      this.differentFirstPageHeaderFooter = null;
    }

    if (json.containsKey('FirstPageTray')) {
      this.firstPageTray = json['FirstPageTray'];
    } else {
      this.firstPageTray = null;
    }

    if (json.containsKey('FooterDistance')) {
      this.footerDistance = json['FooterDistance'];
    } else {
      this.footerDistance = null;
    }

    if (json.containsKey('Gutter')) {
      this.gutter = json['Gutter'];
    } else {
      this.gutter = null;
    }

    if (json.containsKey('HeaderDistance')) {
      this.headerDistance = json['HeaderDistance'];
    } else {
      this.headerDistance = null;
    }

    if (json.containsKey('LeftMargin')) {
      this.leftMargin = json['LeftMargin'];
    } else {
      this.leftMargin = null;
    }

    if (json.containsKey('LineNumberCountBy')) {
      this.lineNumberCountBy = json['LineNumberCountBy'];
    } else {
      this.lineNumberCountBy = null;
    }

    if (json.containsKey('LineNumberDistanceFromText')) {
      this.lineNumberDistanceFromText = json['LineNumberDistanceFromText'];
    } else {
      this.lineNumberDistanceFromText = null;
    }

    if (json.containsKey('LineNumberRestartMode')) {
      switch (json['LineNumberRestartMode']) {
        case 'RestartPage': this.lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.restartPage; break;
        case 'RestartSection': this.lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.restartSection; break;
        case 'Continuous': this.lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.continuous; break;
        default: this.lineNumberRestartMode = null; break;
      }
    } else {
      this.lineNumberRestartMode = null;
    }

    if (json.containsKey('LineStartingNumber')) {
      this.lineStartingNumber = json['LineStartingNumber'];
    } else {
      this.lineStartingNumber = null;
    }

    if (json.containsKey('Orientation')) {
      switch (json['Orientation']) {
        case 'Portrait': this.orientation = PageSetup_OrientationEnum.portrait; break;
        case 'Landscape': this.orientation = PageSetup_OrientationEnum.landscape; break;
        default: this.orientation = null; break;
      }
    } else {
      this.orientation = null;
    }

    if (json.containsKey('OtherPagesTray')) {
      this.otherPagesTray = json['OtherPagesTray'];
    } else {
      this.otherPagesTray = null;
    }

    if (json.containsKey('PageHeight')) {
      this.pageHeight = json['PageHeight'];
    } else {
      this.pageHeight = null;
    }

    if (json.containsKey('PageNumberStyle')) {
      switch (json['PageNumberStyle']) {
        case 'Arabic': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic; break;
        case 'UppercaseRoman': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseRoman; break;
        case 'LowercaseRoman': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseRoman; break;
        case 'UppercaseLetter': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseLetter; break;
        case 'LowercaseLetter': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseLetter; break;
        case 'Ordinal': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.ordinal; break;
        case 'Number': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.number; break;
        case 'OrdinalText': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.ordinalText; break;
        case 'Hex': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hex; break;
        case 'ChicagoManual': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.chicagoManual; break;
        case 'Kanji': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.kanji; break;
        case 'KanjiDigit': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiDigit; break;
        case 'AiueoHalfWidth': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.aiueoHalfWidth; break;
        case 'IrohaHalfWidth': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.irohaHalfWidth; break;
        case 'ArabicFullWidth': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.arabicFullWidth; break;
        case 'ArabicHalfWidth': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.arabicHalfWidth; break;
        case 'KanjiTraditional': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiTraditional; break;
        case 'KanjiTraditional2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiTraditional2; break;
        case 'NumberInCircle': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.numberInCircle; break;
        case 'DecimalFullWidth': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.decimalFullWidth; break;
        case 'Aiueo': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.aiueo; break;
        case 'Iroha': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.iroha; break;
        case 'LeadingZero': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.leadingZero; break;
        case 'Bullet': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.bullet; break;
        case 'Ganada': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.ganada; break;
        case 'Chosung': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.chosung; break;
        case 'GB1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.gB1; break;
        case 'GB2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.gB2; break;
        case 'GB3': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.gB3; break;
        case 'GB4': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.gB4; break;
        case 'Zodiac1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac1; break;
        case 'Zodiac2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac2; break;
        case 'Zodiac3': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac3; break;
        case 'TradChinNum1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum1; break;
        case 'TradChinNum2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum2; break;
        case 'TradChinNum3': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum3; break;
        case 'TradChinNum4': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum4; break;
        case 'SimpChinNum1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum1; break;
        case 'SimpChinNum2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum2; break;
        case 'SimpChinNum3': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum3; break;
        case 'SimpChinNum4': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum4; break;
        case 'HanjaRead': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hanjaRead; break;
        case 'HanjaReadDigit': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hanjaReadDigit; break;
        case 'Hangul': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hangul; break;
        case 'Hanja': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hanja; break;
        case 'Hebrew1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hebrew1; break;
        case 'Arabic1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic1; break;
        case 'Hebrew2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hebrew2; break;
        case 'Arabic2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic2; break;
        case 'HindiLetter1': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiLetter1; break;
        case 'HindiLetter2': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiLetter2; break;
        case 'HindiArabic': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiArabic; break;
        case 'HindiCardinalText': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiCardinalText; break;
        case 'ThaiLetter': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiLetter; break;
        case 'ThaiArabic': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiArabic; break;
        case 'ThaiCardinalText': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiCardinalText; break;
        case 'VietCardinalText': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.vietCardinalText; break;
        case 'NumberInDash': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.numberInDash; break;
        case 'LowercaseRussian': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseRussian; break;
        case 'UppercaseRussian': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseRussian; break;
        case 'None': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.none; break;
        case 'Custom': this.pageNumberStyle = PageSetup_PageNumberStyleEnum.custom; break;
        default: this.pageNumberStyle = null; break;
      }
    } else {
      this.pageNumberStyle = null;
    }

    if (json.containsKey('PageStartingNumber')) {
      this.pageStartingNumber = json['PageStartingNumber'];
    } else {
      this.pageStartingNumber = null;
    }

    if (json.containsKey('PageWidth')) {
      this.pageWidth = json['PageWidth'];
    } else {
      this.pageWidth = null;
    }

    if (json.containsKey('PaperSize')) {
      switch (json['PaperSize']) {
        case 'A3': this.paperSize = PageSetup_PaperSizeEnum.a3; break;
        case 'A4': this.paperSize = PageSetup_PaperSizeEnum.a4; break;
        case 'A5': this.paperSize = PageSetup_PaperSizeEnum.a5; break;
        case 'B4': this.paperSize = PageSetup_PaperSizeEnum.b4; break;
        case 'B5': this.paperSize = PageSetup_PaperSizeEnum.b5; break;
        case 'Executive': this.paperSize = PageSetup_PaperSizeEnum.executive; break;
        case 'Folio': this.paperSize = PageSetup_PaperSizeEnum.folio; break;
        case 'Ledger': this.paperSize = PageSetup_PaperSizeEnum.ledger; break;
        case 'Legal': this.paperSize = PageSetup_PaperSizeEnum.legal; break;
        case 'Letter': this.paperSize = PageSetup_PaperSizeEnum.letter; break;
        case 'EnvelopeDL': this.paperSize = PageSetup_PaperSizeEnum.envelopeDL; break;
        case 'Quarto': this.paperSize = PageSetup_PaperSizeEnum.quarto; break;
        case 'Statement': this.paperSize = PageSetup_PaperSizeEnum.statement; break;
        case 'Tabloid': this.paperSize = PageSetup_PaperSizeEnum.tabloid; break;
        case 'Paper10x14': this.paperSize = PageSetup_PaperSizeEnum.paper10x14; break;
        case 'Paper11x17': this.paperSize = PageSetup_PaperSizeEnum.paper11x17; break;
        case 'Custom': this.paperSize = PageSetup_PaperSizeEnum.custom; break;
        default: this.paperSize = null; break;
      }
    } else {
      this.paperSize = null;
    }

    if (json.containsKey('RestartPageNumbering')) {
      this.restartPageNumbering = json['RestartPageNumbering'];
    } else {
      this.restartPageNumbering = null;
    }

    if (json.containsKey('RightMargin')) {
      this.rightMargin = json['RightMargin'];
    } else {
      this.rightMargin = null;
    }

    if (json.containsKey('RtlGutter')) {
      this.rtlGutter = json['RtlGutter'];
    } else {
      this.rtlGutter = null;
    }

    if (json.containsKey('SectionStart')) {
      switch (json['SectionStart']) {
        case 'Continuous': this.sectionStart = PageSetup_SectionStartEnum.continuous; break;
        case 'NewColumn': this.sectionStart = PageSetup_SectionStartEnum.newColumn; break;
        case 'NewPage': this.sectionStart = PageSetup_SectionStartEnum.newPage; break;
        case 'EvenPage': this.sectionStart = PageSetup_SectionStartEnum.evenPage; break;
        case 'OddPage': this.sectionStart = PageSetup_SectionStartEnum.oddPage; break;
        default: this.sectionStart = null; break;
      }
    } else {
      this.sectionStart = null;
    }

    if (json.containsKey('SuppressEndnotes')) {
      this.suppressEndnotes = json['SuppressEndnotes'];
    } else {
      this.suppressEndnotes = null;
    }

    if (json.containsKey('TopMargin')) {
      this.topMargin = json['TopMargin'];
    } else {
      this.topMargin = null;
    }

    if (json.containsKey('VerticalAlignment')) {
      switch (json['VerticalAlignment']) {
        case 'Top': this.verticalAlignment = PageSetup_VerticalAlignmentEnum.top; break;
        case 'Center': this.verticalAlignment = PageSetup_VerticalAlignmentEnum.center; break;
        case 'Justify': this.verticalAlignment = PageSetup_VerticalAlignmentEnum.justify; break;
        case 'Bottom': this.verticalAlignment = PageSetup_VerticalAlignmentEnum.bottom; break;
        default: this.verticalAlignment = null; break;
      }
    } else {
      this.verticalAlignment = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.bidi != null) {
      _result['Bidi'] = this.bidi;
    }

    if (this.borderAlwaysInFront != null) {
      _result['BorderAlwaysInFront'] = this.borderAlwaysInFront;
    }

    if (this.borderAppliesTo != null) {
      switch (this.borderAppliesTo) {
        case PageSetup_BorderAppliesToEnum.allPages: _result['BorderAppliesTo'] = 'AllPages'; break;
        case PageSetup_BorderAppliesToEnum.firstPage: _result['BorderAppliesTo'] = 'FirstPage'; break;
        case PageSetup_BorderAppliesToEnum.otherPages: _result['BorderAppliesTo'] = 'OtherPages'; break;
        default: break;
      }
    }

    if (this.borderDistanceFrom != null) {
      switch (this.borderDistanceFrom) {
        case PageSetup_BorderDistanceFromEnum.text: _result['BorderDistanceFrom'] = 'Text'; break;
        case PageSetup_BorderDistanceFromEnum.pageEdge: _result['BorderDistanceFrom'] = 'PageEdge'; break;
        default: break;
      }
    }

    if (this.bottomMargin != null) {
      _result['BottomMargin'] = this.bottomMargin;
    }

    if (this.differentFirstPageHeaderFooter != null) {
      _result['DifferentFirstPageHeaderFooter'] = this.differentFirstPageHeaderFooter;
    }

    if (this.firstPageTray != null) {
      _result['FirstPageTray'] = this.firstPageTray;
    }

    if (this.footerDistance != null) {
      _result['FooterDistance'] = this.footerDistance;
    }

    if (this.gutter != null) {
      _result['Gutter'] = this.gutter;
    }

    if (this.headerDistance != null) {
      _result['HeaderDistance'] = this.headerDistance;
    }

    if (this.leftMargin != null) {
      _result['LeftMargin'] = this.leftMargin;
    }

    if (this.lineNumberCountBy != null) {
      _result['LineNumberCountBy'] = this.lineNumberCountBy;
    }

    if (this.lineNumberDistanceFromText != null) {
      _result['LineNumberDistanceFromText'] = this.lineNumberDistanceFromText;
    }

    if (this.lineNumberRestartMode != null) {
      switch (this.lineNumberRestartMode) {
        case PageSetup_LineNumberRestartModeEnum.restartPage: _result['LineNumberRestartMode'] = 'RestartPage'; break;
        case PageSetup_LineNumberRestartModeEnum.restartSection: _result['LineNumberRestartMode'] = 'RestartSection'; break;
        case PageSetup_LineNumberRestartModeEnum.continuous: _result['LineNumberRestartMode'] = 'Continuous'; break;
        default: break;
      }
    }

    if (this.lineStartingNumber != null) {
      _result['LineStartingNumber'] = this.lineStartingNumber;
    }

    if (this.orientation != null) {
      switch (this.orientation) {
        case PageSetup_OrientationEnum.portrait: _result['Orientation'] = 'Portrait'; break;
        case PageSetup_OrientationEnum.landscape: _result['Orientation'] = 'Landscape'; break;
        default: break;
      }
    }

    if (this.otherPagesTray != null) {
      _result['OtherPagesTray'] = this.otherPagesTray;
    }

    if (this.pageHeight != null) {
      _result['PageHeight'] = this.pageHeight;
    }

    if (this.pageNumberStyle != null) {
      switch (this.pageNumberStyle) {
        case PageSetup_PageNumberStyleEnum.arabic: _result['PageNumberStyle'] = 'Arabic'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseRoman: _result['PageNumberStyle'] = 'UppercaseRoman'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseRoman: _result['PageNumberStyle'] = 'LowercaseRoman'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseLetter: _result['PageNumberStyle'] = 'UppercaseLetter'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseLetter: _result['PageNumberStyle'] = 'LowercaseLetter'; break;
        case PageSetup_PageNumberStyleEnum.ordinal: _result['PageNumberStyle'] = 'Ordinal'; break;
        case PageSetup_PageNumberStyleEnum.number: _result['PageNumberStyle'] = 'Number'; break;
        case PageSetup_PageNumberStyleEnum.ordinalText: _result['PageNumberStyle'] = 'OrdinalText'; break;
        case PageSetup_PageNumberStyleEnum.hex: _result['PageNumberStyle'] = 'Hex'; break;
        case PageSetup_PageNumberStyleEnum.chicagoManual: _result['PageNumberStyle'] = 'ChicagoManual'; break;
        case PageSetup_PageNumberStyleEnum.kanji: _result['PageNumberStyle'] = 'Kanji'; break;
        case PageSetup_PageNumberStyleEnum.kanjiDigit: _result['PageNumberStyle'] = 'KanjiDigit'; break;
        case PageSetup_PageNumberStyleEnum.aiueoHalfWidth: _result['PageNumberStyle'] = 'AiueoHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.irohaHalfWidth: _result['PageNumberStyle'] = 'IrohaHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.arabicFullWidth: _result['PageNumberStyle'] = 'ArabicFullWidth'; break;
        case PageSetup_PageNumberStyleEnum.arabicHalfWidth: _result['PageNumberStyle'] = 'ArabicHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.kanjiTraditional: _result['PageNumberStyle'] = 'KanjiTraditional'; break;
        case PageSetup_PageNumberStyleEnum.kanjiTraditional2: _result['PageNumberStyle'] = 'KanjiTraditional2'; break;
        case PageSetup_PageNumberStyleEnum.numberInCircle: _result['PageNumberStyle'] = 'NumberInCircle'; break;
        case PageSetup_PageNumberStyleEnum.decimalFullWidth: _result['PageNumberStyle'] = 'DecimalFullWidth'; break;
        case PageSetup_PageNumberStyleEnum.aiueo: _result['PageNumberStyle'] = 'Aiueo'; break;
        case PageSetup_PageNumberStyleEnum.iroha: _result['PageNumberStyle'] = 'Iroha'; break;
        case PageSetup_PageNumberStyleEnum.leadingZero: _result['PageNumberStyle'] = 'LeadingZero'; break;
        case PageSetup_PageNumberStyleEnum.bullet: _result['PageNumberStyle'] = 'Bullet'; break;
        case PageSetup_PageNumberStyleEnum.ganada: _result['PageNumberStyle'] = 'Ganada'; break;
        case PageSetup_PageNumberStyleEnum.chosung: _result['PageNumberStyle'] = 'Chosung'; break;
        case PageSetup_PageNumberStyleEnum.gB1: _result['PageNumberStyle'] = 'GB1'; break;
        case PageSetup_PageNumberStyleEnum.gB2: _result['PageNumberStyle'] = 'GB2'; break;
        case PageSetup_PageNumberStyleEnum.gB3: _result['PageNumberStyle'] = 'GB3'; break;
        case PageSetup_PageNumberStyleEnum.gB4: _result['PageNumberStyle'] = 'GB4'; break;
        case PageSetup_PageNumberStyleEnum.zodiac1: _result['PageNumberStyle'] = 'Zodiac1'; break;
        case PageSetup_PageNumberStyleEnum.zodiac2: _result['PageNumberStyle'] = 'Zodiac2'; break;
        case PageSetup_PageNumberStyleEnum.zodiac3: _result['PageNumberStyle'] = 'Zodiac3'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum1: _result['PageNumberStyle'] = 'TradChinNum1'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum2: _result['PageNumberStyle'] = 'TradChinNum2'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum3: _result['PageNumberStyle'] = 'TradChinNum3'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum4: _result['PageNumberStyle'] = 'TradChinNum4'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum1: _result['PageNumberStyle'] = 'SimpChinNum1'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum2: _result['PageNumberStyle'] = 'SimpChinNum2'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum3: _result['PageNumberStyle'] = 'SimpChinNum3'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum4: _result['PageNumberStyle'] = 'SimpChinNum4'; break;
        case PageSetup_PageNumberStyleEnum.hanjaRead: _result['PageNumberStyle'] = 'HanjaRead'; break;
        case PageSetup_PageNumberStyleEnum.hanjaReadDigit: _result['PageNumberStyle'] = 'HanjaReadDigit'; break;
        case PageSetup_PageNumberStyleEnum.hangul: _result['PageNumberStyle'] = 'Hangul'; break;
        case PageSetup_PageNumberStyleEnum.hanja: _result['PageNumberStyle'] = 'Hanja'; break;
        case PageSetup_PageNumberStyleEnum.hebrew1: _result['PageNumberStyle'] = 'Hebrew1'; break;
        case PageSetup_PageNumberStyleEnum.arabic1: _result['PageNumberStyle'] = 'Arabic1'; break;
        case PageSetup_PageNumberStyleEnum.hebrew2: _result['PageNumberStyle'] = 'Hebrew2'; break;
        case PageSetup_PageNumberStyleEnum.arabic2: _result['PageNumberStyle'] = 'Arabic2'; break;
        case PageSetup_PageNumberStyleEnum.hindiLetter1: _result['PageNumberStyle'] = 'HindiLetter1'; break;
        case PageSetup_PageNumberStyleEnum.hindiLetter2: _result['PageNumberStyle'] = 'HindiLetter2'; break;
        case PageSetup_PageNumberStyleEnum.hindiArabic: _result['PageNumberStyle'] = 'HindiArabic'; break;
        case PageSetup_PageNumberStyleEnum.hindiCardinalText: _result['PageNumberStyle'] = 'HindiCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.thaiLetter: _result['PageNumberStyle'] = 'ThaiLetter'; break;
        case PageSetup_PageNumberStyleEnum.thaiArabic: _result['PageNumberStyle'] = 'ThaiArabic'; break;
        case PageSetup_PageNumberStyleEnum.thaiCardinalText: _result['PageNumberStyle'] = 'ThaiCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.vietCardinalText: _result['PageNumberStyle'] = 'VietCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.numberInDash: _result['PageNumberStyle'] = 'NumberInDash'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseRussian: _result['PageNumberStyle'] = 'LowercaseRussian'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseRussian: _result['PageNumberStyle'] = 'UppercaseRussian'; break;
        case PageSetup_PageNumberStyleEnum.none: _result['PageNumberStyle'] = 'None'; break;
        case PageSetup_PageNumberStyleEnum.custom: _result['PageNumberStyle'] = 'Custom'; break;
        default: break;
      }
    }

    if (this.pageStartingNumber != null) {
      _result['PageStartingNumber'] = this.pageStartingNumber;
    }

    if (this.pageWidth != null) {
      _result['PageWidth'] = this.pageWidth;
    }

    if (this.paperSize != null) {
      switch (this.paperSize) {
        case PageSetup_PaperSizeEnum.a3: _result['PaperSize'] = 'A3'; break;
        case PageSetup_PaperSizeEnum.a4: _result['PaperSize'] = 'A4'; break;
        case PageSetup_PaperSizeEnum.a5: _result['PaperSize'] = 'A5'; break;
        case PageSetup_PaperSizeEnum.b4: _result['PaperSize'] = 'B4'; break;
        case PageSetup_PaperSizeEnum.b5: _result['PaperSize'] = 'B5'; break;
        case PageSetup_PaperSizeEnum.executive: _result['PaperSize'] = 'Executive'; break;
        case PageSetup_PaperSizeEnum.folio: _result['PaperSize'] = 'Folio'; break;
        case PageSetup_PaperSizeEnum.ledger: _result['PaperSize'] = 'Ledger'; break;
        case PageSetup_PaperSizeEnum.legal: _result['PaperSize'] = 'Legal'; break;
        case PageSetup_PaperSizeEnum.letter: _result['PaperSize'] = 'Letter'; break;
        case PageSetup_PaperSizeEnum.envelopeDL: _result['PaperSize'] = 'EnvelopeDL'; break;
        case PageSetup_PaperSizeEnum.quarto: _result['PaperSize'] = 'Quarto'; break;
        case PageSetup_PaperSizeEnum.statement: _result['PaperSize'] = 'Statement'; break;
        case PageSetup_PaperSizeEnum.tabloid: _result['PaperSize'] = 'Tabloid'; break;
        case PageSetup_PaperSizeEnum.paper10x14: _result['PaperSize'] = 'Paper10x14'; break;
        case PageSetup_PaperSizeEnum.paper11x17: _result['PaperSize'] = 'Paper11x17'; break;
        case PageSetup_PaperSizeEnum.custom: _result['PaperSize'] = 'Custom'; break;
        default: break;
      }
    }

    if (this.restartPageNumbering != null) {
      _result['RestartPageNumbering'] = this.restartPageNumbering;
    }

    if (this.rightMargin != null) {
      _result['RightMargin'] = this.rightMargin;
    }

    if (this.rtlGutter != null) {
      _result['RtlGutter'] = this.rtlGutter;
    }

    if (this.sectionStart != null) {
      switch (this.sectionStart) {
        case PageSetup_SectionStartEnum.continuous: _result['SectionStart'] = 'Continuous'; break;
        case PageSetup_SectionStartEnum.newColumn: _result['SectionStart'] = 'NewColumn'; break;
        case PageSetup_SectionStartEnum.newPage: _result['SectionStart'] = 'NewPage'; break;
        case PageSetup_SectionStartEnum.evenPage: _result['SectionStart'] = 'EvenPage'; break;
        case PageSetup_SectionStartEnum.oddPage: _result['SectionStart'] = 'OddPage'; break;
        default: break;
      }
    }

    if (this.suppressEndnotes != null) {
      _result['SuppressEndnotes'] = this.suppressEndnotes;
    }

    if (this.topMargin != null) {
      _result['TopMargin'] = this.topMargin;
    }

    if (this.verticalAlignment != null) {
      switch (this.verticalAlignment) {
        case PageSetup_VerticalAlignmentEnum.top: _result['VerticalAlignment'] = 'Top'; break;
        case PageSetup_VerticalAlignmentEnum.center: _result['VerticalAlignment'] = 'Center'; break;
        case PageSetup_VerticalAlignmentEnum.justify: _result['VerticalAlignment'] = 'Justify'; break;
        case PageSetup_VerticalAlignmentEnum.bottom: _result['VerticalAlignment'] = 'Bottom'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specifies which pages the page border is printed on.
enum PageSetup_BorderAppliesToEnum
{ 
  allPages,
  firstPage,
  otherPages
}

/// Gets or sets a value that indicates whether the specified page border is measured from the edge of the page or from
/// the text it surrounds.
enum PageSetup_BorderDistanceFromEnum
{ 
  text,
  pageEdge
}

/// Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new
/// page or section or runs continuously.
enum PageSetup_LineNumberRestartModeEnum
{ 
  restartPage,
  restartSection,
  continuous
}

/// Gets or sets returns or sets the orientation of the page.
enum PageSetup_OrientationEnum
{ 
  portrait,
  landscape
}

/// Gets or sets the page number format.
enum PageSetup_PageNumberStyleEnum
{ 
  arabic,
  uppercaseRoman,
  lowercaseRoman,
  uppercaseLetter,
  lowercaseLetter,
  ordinal,
  number,
  ordinalText,
  hex,
  chicagoManual,
  kanji,
  kanjiDigit,
  aiueoHalfWidth,
  irohaHalfWidth,
  arabicFullWidth,
  arabicHalfWidth,
  kanjiTraditional,
  kanjiTraditional2,
  numberInCircle,
  decimalFullWidth,
  aiueo,
  iroha,
  leadingZero,
  bullet,
  ganada,
  chosung,
  gB1,
  gB2,
  gB3,
  gB4,
  zodiac1,
  zodiac2,
  zodiac3,
  tradChinNum1,
  tradChinNum2,
  tradChinNum3,
  tradChinNum4,
  simpChinNum1,
  simpChinNum2,
  simpChinNum3,
  simpChinNum4,
  hanjaRead,
  hanjaReadDigit,
  hangul,
  hanja,
  hebrew1,
  arabic1,
  hebrew2,
  arabic2,
  hindiLetter1,
  hindiLetter2,
  hindiArabic,
  hindiCardinalText,
  thaiLetter,
  thaiArabic,
  thaiCardinalText,
  vietCardinalText,
  numberInDash,
  lowercaseRussian,
  uppercaseRussian,
  none,
  custom
}

/// Gets or sets returns or sets the paper size.
enum PageSetup_PaperSizeEnum
{ 
  a3,
  a4,
  a5,
  b4,
  b5,
  executive,
  folio,
  ledger,
  legal,
  letter,
  envelopeDL,
  quarto,
  statement,
  tabloid,
  paper10x14,
  paper11x17,
  custom
}

/// Gets or sets returns or sets the type of section break for the specified object.
enum PageSetup_SectionStartEnum
{ 
  continuous,
  newColumn,
  newPage,
  evenPage,
  oddPage
}

/// Gets or sets returns or sets the vertical alignment of text on each page in a document or section.
enum PageSetup_VerticalAlignmentEnum
{ 
  top,
  center,
  justify,
  bottom
}

