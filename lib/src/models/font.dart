/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="font.dart">
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

/// Font element.
class Font extends LinkElement {
  /// Gets or sets true if the font is formatted as all capital letters.
  bool allCaps;

  /// Gets or sets specifies whether the contents of this run shall have right-to-left characteristics.
  bool bidi;

  /// Gets or sets true if the font is formatted as bold.
  bool bold;

  /// Gets or sets true if the right-to-left text is formatted as bold.
  bool boldBi;

  /// Gets or sets border object that specifies border for the font.
  Border border;

  /// Gets or sets the color of the font.
  XmlColor color;

  /// Gets or sets specifies whether the contents of this run shall be treated as complex script text regardless
  /// of their Unicode character values when determining the formatting for this run.
  bool complexScript;

  /// Gets or sets true if the font is formatted as double strikethrough text.
  bool doubleStrikeThrough;

  /// Gets or sets true if the font is formatted as embossed.
  bool emboss;

  /// Gets or sets true if the font is formatted as engraved.
  bool engrave;

  /// Gets or sets true if the font is formatted as hidden text.
  bool hidden;

  /// Gets or sets the highlight (marker) color.
  XmlColor highlightColor;

  /// Gets or sets true if the font is formatted as italic.
  bool italic;

  /// Gets or sets true if the right-to-left text is formatted as italic.
  bool italicBi;

  /// Gets or sets the font size at which kerning starts.
  double kerning;

  /// Gets or sets the locale identifier (language) of the formatted characters.
  int localeId;

  /// Gets or sets the locale identifier (language) of the formatted right-to-left characters.
  int localeIdBi;

  /// Gets or sets the locale identifier (language) of the formatted Asian characters.
  int localeIdFarEast;

  /// Gets or sets the name of the font.
  String name;

  /// Gets or sets returns or sets the font used for Latin text (characters with character codes from 0 (zero) through 127).
  String nameAscii;

  /// Gets or sets returns or sets the name of the font in a right-to-left language document.
  String nameBi;

  /// Gets or sets returns or sets an East Asian font name.
  String nameFarEast;

  /// Gets or sets returns or sets the font used for characters with character codes from 128 through 255.
  String nameOther;

  /// Gets or sets true when the formatted characters are not to be spell checked.
  bool noProofing;

  /// Gets or sets true if the font is formatted as outline.
  bool outline;

  /// Gets or sets the position of text (in points) relative to the base line.
  /// A positive number raises the text, and a negative number lowers it.
  double position;

  /// Gets or sets character width scaling in percent.
  int scaling;

  /// Gets or sets true if the font is formatted as shadowed.
  bool shadow;

  /// Gets or sets the font size in points.
  double size;

  /// Gets or sets the font size in points used in a right-to-left document.
  double sizeBi;

  /// Gets or sets true if the font is formatted as small capital letters.
  bool smallCaps;

  /// Gets or sets returns or sets the spacing (in points) between characters.
  double spacing;

  /// Gets or sets true if the font is formatted as strikethrough text.
  bool strikeThrough;

  /// Gets or sets the locale independent style identifier of the character style applied to this formatting.
  Font_StyleIdentifierEnum styleIdentifier;

  /// Gets or sets the name of the character style applied to this formatting.
  String styleName;

  /// Gets or sets true if the font is formatted as subscript.
  bool subscript;

  /// Gets or sets true if the font is formatted as superscript.
  bool superscript;

  /// Gets or sets the font animation effect.
  Font_TextEffectEnum textEffect;

  /// Gets or sets the type of underline applied to the font.
  Font_UnderlineEnum underline;

  /// Gets or sets the color of the underline applied to the font.
  XmlColor underlineColor;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('AllCaps')) {
      this.allCaps = json['AllCaps'];
    } else {
      this.allCaps = null;
    }

    if (json.containsKey('Bidi')) {
      this.bidi = json['Bidi'];
    } else {
      this.bidi = null;
    }

    if (json.containsKey('Bold')) {
      this.bold = json['Bold'];
    } else {
      this.bold = null;
    }

    if (json.containsKey('BoldBi')) {
      this.boldBi = json['BoldBi'];
    } else {
      this.boldBi = null;
    }

    if (json.containsKey('Border')) {
      this.border = new Border();
      this.border.deserialize(json['Border']);
    } else {
      this.border = null;
    }

    if (json.containsKey('Color')) {
      this.color = new XmlColor();
      this.color.deserialize(json['Color']);
    } else {
      this.color = null;
    }

    if (json.containsKey('ComplexScript')) {
      this.complexScript = json['ComplexScript'];
    } else {
      this.complexScript = null;
    }

    if (json.containsKey('DoubleStrikeThrough')) {
      this.doubleStrikeThrough = json['DoubleStrikeThrough'];
    } else {
      this.doubleStrikeThrough = null;
    }

    if (json.containsKey('Emboss')) {
      this.emboss = json['Emboss'];
    } else {
      this.emboss = null;
    }

    if (json.containsKey('Engrave')) {
      this.engrave = json['Engrave'];
    } else {
      this.engrave = null;
    }

    if (json.containsKey('Hidden')) {
      this.hidden = json['Hidden'];
    } else {
      this.hidden = null;
    }

    if (json.containsKey('HighlightColor')) {
      this.highlightColor = new XmlColor();
      this.highlightColor.deserialize(json['HighlightColor']);
    } else {
      this.highlightColor = null;
    }

    if (json.containsKey('Italic')) {
      this.italic = json['Italic'];
    } else {
      this.italic = null;
    }

    if (json.containsKey('ItalicBi')) {
      this.italicBi = json['ItalicBi'];
    } else {
      this.italicBi = null;
    }

    if (json.containsKey('Kerning')) {
      this.kerning = json['Kerning'];
    } else {
      this.kerning = null;
    }

    if (json.containsKey('LocaleId')) {
      this.localeId = json['LocaleId'];
    } else {
      this.localeId = null;
    }

    if (json.containsKey('LocaleIdBi')) {
      this.localeIdBi = json['LocaleIdBi'];
    } else {
      this.localeIdBi = null;
    }

    if (json.containsKey('LocaleIdFarEast')) {
      this.localeIdFarEast = json['LocaleIdFarEast'];
    } else {
      this.localeIdFarEast = null;
    }

    if (json.containsKey('Name')) {
      this.name = json['Name'];
    } else {
      this.name = null;
    }

    if (json.containsKey('NameAscii')) {
      this.nameAscii = json['NameAscii'];
    } else {
      this.nameAscii = null;
    }

    if (json.containsKey('NameBi')) {
      this.nameBi = json['NameBi'];
    } else {
      this.nameBi = null;
    }

    if (json.containsKey('NameFarEast')) {
      this.nameFarEast = json['NameFarEast'];
    } else {
      this.nameFarEast = null;
    }

    if (json.containsKey('NameOther')) {
      this.nameOther = json['NameOther'];
    } else {
      this.nameOther = null;
    }

    if (json.containsKey('NoProofing')) {
      this.noProofing = json['NoProofing'];
    } else {
      this.noProofing = null;
    }

    if (json.containsKey('Outline')) {
      this.outline = json['Outline'];
    } else {
      this.outline = null;
    }

    if (json.containsKey('Position')) {
      this.position = json['Position'];
    } else {
      this.position = null;
    }

    if (json.containsKey('Scaling')) {
      this.scaling = json['Scaling'];
    } else {
      this.scaling = null;
    }

    if (json.containsKey('Shadow')) {
      this.shadow = json['Shadow'];
    } else {
      this.shadow = null;
    }

    if (json.containsKey('Size')) {
      this.size = json['Size'];
    } else {
      this.size = null;
    }

    if (json.containsKey('SizeBi')) {
      this.sizeBi = json['SizeBi'];
    } else {
      this.sizeBi = null;
    }

    if (json.containsKey('SmallCaps')) {
      this.smallCaps = json['SmallCaps'];
    } else {
      this.smallCaps = null;
    }

    if (json.containsKey('Spacing')) {
      this.spacing = json['Spacing'];
    } else {
      this.spacing = null;
    }

    if (json.containsKey('StrikeThrough')) {
      this.strikeThrough = json['StrikeThrough'];
    } else {
      this.strikeThrough = null;
    }

    if (json.containsKey('StyleIdentifier')) {
      switch (json['StyleIdentifier']) {
        case 'Normal': this.styleIdentifier = Font_StyleIdentifierEnum.normal; break;
        case 'Heading1': this.styleIdentifier = Font_StyleIdentifierEnum.heading1; break;
        case 'Heading2': this.styleIdentifier = Font_StyleIdentifierEnum.heading2; break;
        case 'Heading3': this.styleIdentifier = Font_StyleIdentifierEnum.heading3; break;
        case 'Heading4': this.styleIdentifier = Font_StyleIdentifierEnum.heading4; break;
        case 'Heading5': this.styleIdentifier = Font_StyleIdentifierEnum.heading5; break;
        case 'Heading6': this.styleIdentifier = Font_StyleIdentifierEnum.heading6; break;
        case 'Heading7': this.styleIdentifier = Font_StyleIdentifierEnum.heading7; break;
        case 'Heading8': this.styleIdentifier = Font_StyleIdentifierEnum.heading8; break;
        case 'Heading9': this.styleIdentifier = Font_StyleIdentifierEnum.heading9; break;
        case 'Index1': this.styleIdentifier = Font_StyleIdentifierEnum.index1; break;
        case 'Index2': this.styleIdentifier = Font_StyleIdentifierEnum.index2; break;
        case 'Index3': this.styleIdentifier = Font_StyleIdentifierEnum.index3; break;
        case 'Index4': this.styleIdentifier = Font_StyleIdentifierEnum.index4; break;
        case 'Index5': this.styleIdentifier = Font_StyleIdentifierEnum.index5; break;
        case 'Index6': this.styleIdentifier = Font_StyleIdentifierEnum.index6; break;
        case 'Index7': this.styleIdentifier = Font_StyleIdentifierEnum.index7; break;
        case 'Index8': this.styleIdentifier = Font_StyleIdentifierEnum.index8; break;
        case 'Index9': this.styleIdentifier = Font_StyleIdentifierEnum.index9; break;
        case 'Toc1': this.styleIdentifier = Font_StyleIdentifierEnum.toc1; break;
        case 'Toc2': this.styleIdentifier = Font_StyleIdentifierEnum.toc2; break;
        case 'Toc3': this.styleIdentifier = Font_StyleIdentifierEnum.toc3; break;
        case 'Toc4': this.styleIdentifier = Font_StyleIdentifierEnum.toc4; break;
        case 'Toc5': this.styleIdentifier = Font_StyleIdentifierEnum.toc5; break;
        case 'Toc6': this.styleIdentifier = Font_StyleIdentifierEnum.toc6; break;
        case 'Toc7': this.styleIdentifier = Font_StyleIdentifierEnum.toc7; break;
        case 'Toc8': this.styleIdentifier = Font_StyleIdentifierEnum.toc8; break;
        case 'Toc9': this.styleIdentifier = Font_StyleIdentifierEnum.toc9; break;
        case 'NormalIndent': this.styleIdentifier = Font_StyleIdentifierEnum.normalIndent; break;
        case 'FootnoteText': this.styleIdentifier = Font_StyleIdentifierEnum.footnoteText; break;
        case 'CommentText': this.styleIdentifier = Font_StyleIdentifierEnum.commentText; break;
        case 'Header': this.styleIdentifier = Font_StyleIdentifierEnum.header; break;
        case 'Footer': this.styleIdentifier = Font_StyleIdentifierEnum.footer; break;
        case 'IndexHeading': this.styleIdentifier = Font_StyleIdentifierEnum.indexHeading; break;
        case 'Caption': this.styleIdentifier = Font_StyleIdentifierEnum.caption; break;
        case 'TableOfFigures': this.styleIdentifier = Font_StyleIdentifierEnum.tableOfFigures; break;
        case 'EnvelopeAddress': this.styleIdentifier = Font_StyleIdentifierEnum.envelopeAddress; break;
        case 'EnvelopeReturn': this.styleIdentifier = Font_StyleIdentifierEnum.envelopeReturn; break;
        case 'FootnoteReference': this.styleIdentifier = Font_StyleIdentifierEnum.footnoteReference; break;
        case 'CommentReference': this.styleIdentifier = Font_StyleIdentifierEnum.commentReference; break;
        case 'LineNumber': this.styleIdentifier = Font_StyleIdentifierEnum.lineNumber; break;
        case 'PageNumber': this.styleIdentifier = Font_StyleIdentifierEnum.pageNumber; break;
        case 'EndnoteReference': this.styleIdentifier = Font_StyleIdentifierEnum.endnoteReference; break;
        case 'EndnoteText': this.styleIdentifier = Font_StyleIdentifierEnum.endnoteText; break;
        case 'TableOfAuthorities': this.styleIdentifier = Font_StyleIdentifierEnum.tableOfAuthorities; break;
        case 'Macro': this.styleIdentifier = Font_StyleIdentifierEnum.macro; break;
        case 'ToaHeading': this.styleIdentifier = Font_StyleIdentifierEnum.toaHeading; break;
        case 'List': this.styleIdentifier = Font_StyleIdentifierEnum.list; break;
        case 'ListBullet': this.styleIdentifier = Font_StyleIdentifierEnum.listBullet; break;
        case 'ListNumber': this.styleIdentifier = Font_StyleIdentifierEnum.listNumber; break;
        case 'List2': this.styleIdentifier = Font_StyleIdentifierEnum.list2; break;
        case 'List3': this.styleIdentifier = Font_StyleIdentifierEnum.list3; break;
        case 'List4': this.styleIdentifier = Font_StyleIdentifierEnum.list4; break;
        case 'List5': this.styleIdentifier = Font_StyleIdentifierEnum.list5; break;
        case 'ListBullet2': this.styleIdentifier = Font_StyleIdentifierEnum.listBullet2; break;
        case 'ListBullet3': this.styleIdentifier = Font_StyleIdentifierEnum.listBullet3; break;
        case 'ListBullet4': this.styleIdentifier = Font_StyleIdentifierEnum.listBullet4; break;
        case 'ListBullet5': this.styleIdentifier = Font_StyleIdentifierEnum.listBullet5; break;
        case 'ListNumber2': this.styleIdentifier = Font_StyleIdentifierEnum.listNumber2; break;
        case 'ListNumber3': this.styleIdentifier = Font_StyleIdentifierEnum.listNumber3; break;
        case 'ListNumber4': this.styleIdentifier = Font_StyleIdentifierEnum.listNumber4; break;
        case 'ListNumber5': this.styleIdentifier = Font_StyleIdentifierEnum.listNumber5; break;
        case 'Title': this.styleIdentifier = Font_StyleIdentifierEnum.title; break;
        case 'Closing': this.styleIdentifier = Font_StyleIdentifierEnum.closing; break;
        case 'Signature': this.styleIdentifier = Font_StyleIdentifierEnum.signature; break;
        case 'DefaultParagraphFont': this.styleIdentifier = Font_StyleIdentifierEnum.defaultParagraphFont; break;
        case 'BodyText': this.styleIdentifier = Font_StyleIdentifierEnum.bodyText; break;
        case 'BodyTextInd': this.styleIdentifier = Font_StyleIdentifierEnum.bodyTextInd; break;
        case 'ListContinue': this.styleIdentifier = Font_StyleIdentifierEnum.listContinue; break;
        case 'ListContinue2': this.styleIdentifier = Font_StyleIdentifierEnum.listContinue2; break;
        case 'ListContinue3': this.styleIdentifier = Font_StyleIdentifierEnum.listContinue3; break;
        case 'ListContinue4': this.styleIdentifier = Font_StyleIdentifierEnum.listContinue4; break;
        case 'ListContinue5': this.styleIdentifier = Font_StyleIdentifierEnum.listContinue5; break;
        case 'MessageHeader': this.styleIdentifier = Font_StyleIdentifierEnum.messageHeader; break;
        case 'Subtitle': this.styleIdentifier = Font_StyleIdentifierEnum.subtitle; break;
        case 'Salutation': this.styleIdentifier = Font_StyleIdentifierEnum.salutation; break;
        case 'Date': this.styleIdentifier = Font_StyleIdentifierEnum.date; break;
        case 'BodyText1I': this.styleIdentifier = Font_StyleIdentifierEnum.bodyText1I; break;
        case 'BodyText1I2': this.styleIdentifier = Font_StyleIdentifierEnum.bodyText1I2; break;
        case 'NoteHeading': this.styleIdentifier = Font_StyleIdentifierEnum.noteHeading; break;
        case 'BodyText2': this.styleIdentifier = Font_StyleIdentifierEnum.bodyText2; break;
        case 'BodyText3': this.styleIdentifier = Font_StyleIdentifierEnum.bodyText3; break;
        case 'BodyTextInd2': this.styleIdentifier = Font_StyleIdentifierEnum.bodyTextInd2; break;
        case 'BodyTextInd3': this.styleIdentifier = Font_StyleIdentifierEnum.bodyTextInd3; break;
        case 'BlockText': this.styleIdentifier = Font_StyleIdentifierEnum.blockText; break;
        case 'Hyperlink': this.styleIdentifier = Font_StyleIdentifierEnum.hyperlink; break;
        case 'FollowedHyperlink': this.styleIdentifier = Font_StyleIdentifierEnum.followedHyperlink; break;
        case 'Strong': this.styleIdentifier = Font_StyleIdentifierEnum.strong; break;
        case 'Emphasis': this.styleIdentifier = Font_StyleIdentifierEnum.emphasis; break;
        case 'DocumentMap': this.styleIdentifier = Font_StyleIdentifierEnum.documentMap; break;
        case 'PlainText': this.styleIdentifier = Font_StyleIdentifierEnum.plainText; break;
        case 'EmailSignature': this.styleIdentifier = Font_StyleIdentifierEnum.emailSignature; break;
        case 'HtmlTopOfForm': this.styleIdentifier = Font_StyleIdentifierEnum.htmlTopOfForm; break;
        case 'HtmlBottomOfForm': this.styleIdentifier = Font_StyleIdentifierEnum.htmlBottomOfForm; break;
        case 'NormalWeb': this.styleIdentifier = Font_StyleIdentifierEnum.normalWeb; break;
        case 'HtmlAcronym': this.styleIdentifier = Font_StyleIdentifierEnum.htmlAcronym; break;
        case 'HtmlAddress': this.styleIdentifier = Font_StyleIdentifierEnum.htmlAddress; break;
        case 'HtmlCite': this.styleIdentifier = Font_StyleIdentifierEnum.htmlCite; break;
        case 'HtmlCode': this.styleIdentifier = Font_StyleIdentifierEnum.htmlCode; break;
        case 'HtmlDefinition': this.styleIdentifier = Font_StyleIdentifierEnum.htmlDefinition; break;
        case 'HtmlKeyboard': this.styleIdentifier = Font_StyleIdentifierEnum.htmlKeyboard; break;
        case 'HtmlPreformatted': this.styleIdentifier = Font_StyleIdentifierEnum.htmlPreformatted; break;
        case 'HtmlSample': this.styleIdentifier = Font_StyleIdentifierEnum.htmlSample; break;
        case 'HtmlTypewriter': this.styleIdentifier = Font_StyleIdentifierEnum.htmlTypewriter; break;
        case 'HtmlVariable': this.styleIdentifier = Font_StyleIdentifierEnum.htmlVariable; break;
        case 'TableNormal': this.styleIdentifier = Font_StyleIdentifierEnum.tableNormal; break;
        case 'CommentSubject': this.styleIdentifier = Font_StyleIdentifierEnum.commentSubject; break;
        case 'NoList': this.styleIdentifier = Font_StyleIdentifierEnum.noList; break;
        case 'OutlineList1': this.styleIdentifier = Font_StyleIdentifierEnum.outlineList1; break;
        case 'OutlineList2': this.styleIdentifier = Font_StyleIdentifierEnum.outlineList2; break;
        case 'OutlineList3': this.styleIdentifier = Font_StyleIdentifierEnum.outlineList3; break;
        case 'TableSimple1': this.styleIdentifier = Font_StyleIdentifierEnum.tableSimple1; break;
        case 'TableSimple2': this.styleIdentifier = Font_StyleIdentifierEnum.tableSimple2; break;
        case 'TableSimple3': this.styleIdentifier = Font_StyleIdentifierEnum.tableSimple3; break;
        case 'TableClassic1': this.styleIdentifier = Font_StyleIdentifierEnum.tableClassic1; break;
        case 'TableClassic2': this.styleIdentifier = Font_StyleIdentifierEnum.tableClassic2; break;
        case 'TableClassic3': this.styleIdentifier = Font_StyleIdentifierEnum.tableClassic3; break;
        case 'TableClassic4': this.styleIdentifier = Font_StyleIdentifierEnum.tableClassic4; break;
        case 'TableColorful1': this.styleIdentifier = Font_StyleIdentifierEnum.tableColorful1; break;
        case 'TableColorful2': this.styleIdentifier = Font_StyleIdentifierEnum.tableColorful2; break;
        case 'TableColorful3': this.styleIdentifier = Font_StyleIdentifierEnum.tableColorful3; break;
        case 'TableColumns1': this.styleIdentifier = Font_StyleIdentifierEnum.tableColumns1; break;
        case 'TableColumns2': this.styleIdentifier = Font_StyleIdentifierEnum.tableColumns2; break;
        case 'TableColumns3': this.styleIdentifier = Font_StyleIdentifierEnum.tableColumns3; break;
        case 'TableColumns4': this.styleIdentifier = Font_StyleIdentifierEnum.tableColumns4; break;
        case 'TableColumns5': this.styleIdentifier = Font_StyleIdentifierEnum.tableColumns5; break;
        case 'TableGrid1': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid1; break;
        case 'TableGrid2': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid2; break;
        case 'TableGrid3': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid3; break;
        case 'TableGrid4': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid4; break;
        case 'TableGrid5': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid5; break;
        case 'TableGrid6': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid6; break;
        case 'TableGrid7': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid7; break;
        case 'TableGrid8': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid8; break;
        case 'TableList1': this.styleIdentifier = Font_StyleIdentifierEnum.tableList1; break;
        case 'TableList2': this.styleIdentifier = Font_StyleIdentifierEnum.tableList2; break;
        case 'TableList3': this.styleIdentifier = Font_StyleIdentifierEnum.tableList3; break;
        case 'TableList4': this.styleIdentifier = Font_StyleIdentifierEnum.tableList4; break;
        case 'TableList5': this.styleIdentifier = Font_StyleIdentifierEnum.tableList5; break;
        case 'TableList6': this.styleIdentifier = Font_StyleIdentifierEnum.tableList6; break;
        case 'TableList7': this.styleIdentifier = Font_StyleIdentifierEnum.tableList7; break;
        case 'TableList8': this.styleIdentifier = Font_StyleIdentifierEnum.tableList8; break;
        case 'Table3DEffects1': this.styleIdentifier = Font_StyleIdentifierEnum.table3DEffects1; break;
        case 'Table3DEffects2': this.styleIdentifier = Font_StyleIdentifierEnum.table3DEffects2; break;
        case 'Table3DEffects3': this.styleIdentifier = Font_StyleIdentifierEnum.table3DEffects3; break;
        case 'TableContemporary': this.styleIdentifier = Font_StyleIdentifierEnum.tableContemporary; break;
        case 'TableElegant': this.styleIdentifier = Font_StyleIdentifierEnum.tableElegant; break;
        case 'TableProfessional': this.styleIdentifier = Font_StyleIdentifierEnum.tableProfessional; break;
        case 'TableSubtle1': this.styleIdentifier = Font_StyleIdentifierEnum.tableSubtle1; break;
        case 'TableSubtle2': this.styleIdentifier = Font_StyleIdentifierEnum.tableSubtle2; break;
        case 'TableWeb1': this.styleIdentifier = Font_StyleIdentifierEnum.tableWeb1; break;
        case 'TableWeb2': this.styleIdentifier = Font_StyleIdentifierEnum.tableWeb2; break;
        case 'TableWeb3': this.styleIdentifier = Font_StyleIdentifierEnum.tableWeb3; break;
        case 'BalloonText': this.styleIdentifier = Font_StyleIdentifierEnum.balloonText; break;
        case 'TableGrid': this.styleIdentifier = Font_StyleIdentifierEnum.tableGrid; break;
        case 'TableTheme': this.styleIdentifier = Font_StyleIdentifierEnum.tableTheme; break;
        case 'PlaceholderText': this.styleIdentifier = Font_StyleIdentifierEnum.placeholderText; break;
        case 'NoSpacing': this.styleIdentifier = Font_StyleIdentifierEnum.noSpacing; break;
        case 'LightShading': this.styleIdentifier = Font_StyleIdentifierEnum.lightShading; break;
        case 'LightList': this.styleIdentifier = Font_StyleIdentifierEnum.lightList; break;
        case 'LightGrid': this.styleIdentifier = Font_StyleIdentifierEnum.lightGrid; break;
        case 'MediumShading1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1; break;
        case 'MediumShading2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2; break;
        case 'MediumList1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1; break;
        case 'MediumList2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2; break;
        case 'MediumGrid1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1; break;
        case 'MediumGrid2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2; break;
        case 'MediumGrid3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3; break;
        case 'DarkList': this.styleIdentifier = Font_StyleIdentifierEnum.darkList; break;
        case 'ColorfulShading': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShading; break;
        case 'ColorfulList': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulList; break;
        case 'ColorfulGrid': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGrid; break;
        case 'LightShadingAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent1; break;
        case 'LightListAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent1; break;
        case 'LightGridAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent1; break;
        case 'MediumShading1Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent1; break;
        case 'MediumShading2Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent1; break;
        case 'MediumList1Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent1; break;
        case 'Revision': this.styleIdentifier = Font_StyleIdentifierEnum.revision; break;
        case 'ListParagraph': this.styleIdentifier = Font_StyleIdentifierEnum.listParagraph; break;
        case 'Quote': this.styleIdentifier = Font_StyleIdentifierEnum.quote; break;
        case 'IntenseQuote': this.styleIdentifier = Font_StyleIdentifierEnum.intenseQuote; break;
        case 'MediumList2Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent1; break;
        case 'MediumGrid1Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent1; break;
        case 'MediumGrid2Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent1; break;
        case 'MediumGrid3Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent1; break;
        case 'DarkListAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent1; break;
        case 'ColorfulShadingAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent1; break;
        case 'ColorfulListAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent1; break;
        case 'ColorfulGridAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent1; break;
        case 'LightShadingAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent2; break;
        case 'LightListAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent2; break;
        case 'LightGridAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent2; break;
        case 'MediumShading1Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent2; break;
        case 'MediumShading2Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent2; break;
        case 'MediumList1Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent2; break;
        case 'MediumList2Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent2; break;
        case 'MediumGrid1Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent2; break;
        case 'MediumGrid2Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent2; break;
        case 'MediumGrid3Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent2; break;
        case 'DarkListAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent2; break;
        case 'ColorfulShadingAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent2; break;
        case 'ColorfulListAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent2; break;
        case 'ColorfulGridAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent2; break;
        case 'LightShadingAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent3; break;
        case 'LightListAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent3; break;
        case 'LightGridAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent3; break;
        case 'MediumShading1Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent3; break;
        case 'MediumShading2Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent3; break;
        case 'MediumList1Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent3; break;
        case 'MediumList2Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent3; break;
        case 'MediumGrid1Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent3; break;
        case 'MediumGrid2Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent3; break;
        case 'MediumGrid3Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent3; break;
        case 'DarkListAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent3; break;
        case 'ColorfulShadingAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent3; break;
        case 'ColorfulListAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent3; break;
        case 'ColorfulGridAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent3; break;
        case 'LightShadingAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent4; break;
        case 'LightListAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent4; break;
        case 'LightGridAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent4; break;
        case 'MediumShading1Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent4; break;
        case 'MediumShading2Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent4; break;
        case 'MediumList1Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent4; break;
        case 'MediumList2Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent4; break;
        case 'MediumGrid1Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent4; break;
        case 'MediumGrid2Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent4; break;
        case 'MediumGrid3Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent4; break;
        case 'DarkListAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent4; break;
        case 'ColorfulShadingAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent4; break;
        case 'ColorfulListAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent4; break;
        case 'ColorfulGridAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent4; break;
        case 'LightShadingAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent5; break;
        case 'LightListAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent5; break;
        case 'LightGridAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent5; break;
        case 'MediumShading1Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent5; break;
        case 'MediumShading2Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent5; break;
        case 'MediumList1Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent5; break;
        case 'MediumList2Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent5; break;
        case 'MediumGrid1Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent5; break;
        case 'MediumGrid2Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent5; break;
        case 'MediumGrid3Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent5; break;
        case 'DarkListAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent5; break;
        case 'ColorfulShadingAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent5; break;
        case 'ColorfulListAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent5; break;
        case 'ColorfulGridAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent5; break;
        case 'LightShadingAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.lightShadingAccent6; break;
        case 'LightListAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.lightListAccent6; break;
        case 'LightGridAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.lightGridAccent6; break;
        case 'MediumShading1Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading1Accent6; break;
        case 'MediumShading2Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumShading2Accent6; break;
        case 'MediumList1Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList1Accent6; break;
        case 'MediumList2Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumList2Accent6; break;
        case 'MediumGrid1Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid1Accent6; break;
        case 'MediumGrid2Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid2Accent6; break;
        case 'MediumGrid3Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.mediumGrid3Accent6; break;
        case 'DarkListAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.darkListAccent6; break;
        case 'ColorfulShadingAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulShadingAccent6; break;
        case 'ColorfulListAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulListAccent6; break;
        case 'ColorfulGridAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.colorfulGridAccent6; break;
        case 'SubtleEmphasis': this.styleIdentifier = Font_StyleIdentifierEnum.subtleEmphasis; break;
        case 'IntenseEmphasis': this.styleIdentifier = Font_StyleIdentifierEnum.intenseEmphasis; break;
        case 'SubtleReference': this.styleIdentifier = Font_StyleIdentifierEnum.subtleReference; break;
        case 'IntenseReference': this.styleIdentifier = Font_StyleIdentifierEnum.intenseReference; break;
        case 'BookTitle': this.styleIdentifier = Font_StyleIdentifierEnum.bookTitle; break;
        case 'Bibliography': this.styleIdentifier = Font_StyleIdentifierEnum.bibliography; break;
        case 'TocHeading': this.styleIdentifier = Font_StyleIdentifierEnum.tocHeading; break;
        case 'PlainTable1': this.styleIdentifier = Font_StyleIdentifierEnum.plainTable1; break;
        case 'PlainTable2': this.styleIdentifier = Font_StyleIdentifierEnum.plainTable2; break;
        case 'PlainTable3': this.styleIdentifier = Font_StyleIdentifierEnum.plainTable3; break;
        case 'PlainTable4': this.styleIdentifier = Font_StyleIdentifierEnum.plainTable4; break;
        case 'PlainTable5': this.styleIdentifier = Font_StyleIdentifierEnum.plainTable5; break;
        case 'TableGridLight': this.styleIdentifier = Font_StyleIdentifierEnum.tableGridLight; break;
        case 'GridTable1Light': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1Light; break;
        case 'GridTable2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2; break;
        case 'GridTable3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3; break;
        case 'GridTable4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4; break;
        case 'GridTable5Dark': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5Dark; break;
        case 'GridTable6Colorful': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6Colorful; break;
        case 'GridTable7Colorful': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7Colorful; break;
        case 'GridTable1LightAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent1; break;
        case 'GridTable2Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent1; break;
        case 'GridTable3Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent1; break;
        case 'GridTable4Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent1; break;
        case 'GridTable5DarkAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent1; break;
        case 'GridTable6ColorfulAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent1; break;
        case 'GridTable7ColorfulAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent1; break;
        case 'GridTable1LightAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent2; break;
        case 'GridTable2Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent2; break;
        case 'GridTable3Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent2; break;
        case 'GridTable4Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent2; break;
        case 'GridTable5DarkAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent2; break;
        case 'GridTable6ColorfulAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent2; break;
        case 'GridTable7ColorfulAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent2; break;
        case 'GridTable1LightAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent3; break;
        case 'GridTable2Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent3; break;
        case 'GridTable3Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent3; break;
        case 'GridTable4Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent3; break;
        case 'GridTable5DarkAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent3; break;
        case 'GridTable6ColorfulAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent3; break;
        case 'GridTable7ColorfulAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent3; break;
        case 'GridTable1LightAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent4; break;
        case 'GridTable2Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent4; break;
        case 'GridTable3Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent4; break;
        case 'GridTable4Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent4; break;
        case 'GridTable5DarkAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent4; break;
        case 'GridTable6ColorfulAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent4; break;
        case 'GridTable7ColorfulAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent4; break;
        case 'GridTable1LightAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent5; break;
        case 'GridTable2Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent5; break;
        case 'GridTable3Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent5; break;
        case 'GridTable4Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent5; break;
        case 'GridTable5DarkAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent5; break;
        case 'GridTable6ColorfulAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent5; break;
        case 'GridTable7ColorfulAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent5; break;
        case 'GridTable1LightAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable1LightAccent6; break;
        case 'GridTable2Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable2Accent6; break;
        case 'GridTable3Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable3Accent6; break;
        case 'GridTable4Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable4Accent6; break;
        case 'GridTable5DarkAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable5DarkAccent6; break;
        case 'GridTable6ColorfulAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable6ColorfulAccent6; break;
        case 'GridTable7ColorfulAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.gridTable7ColorfulAccent6; break;
        case 'ListTable1Light': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1Light; break;
        case 'ListTable2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2; break;
        case 'ListTable3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3; break;
        case 'ListTable4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4; break;
        case 'ListTable5Dark': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5Dark; break;
        case 'ListTable6Colorful': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6Colorful; break;
        case 'ListTable7Colorful': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7Colorful; break;
        case 'ListTable1LightAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent1; break;
        case 'ListTable2Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent1; break;
        case 'ListTable3Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent1; break;
        case 'ListTable4Accent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent1; break;
        case 'ListTable5DarkAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent1; break;
        case 'ListTable6ColorfulAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent1; break;
        case 'ListTable7ColorfulAccent1': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent1; break;
        case 'ListTable1LightAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent2; break;
        case 'ListTable2Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent2; break;
        case 'ListTable3Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent2; break;
        case 'ListTable4Accent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent2; break;
        case 'ListTable5DarkAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent2; break;
        case 'ListTable6ColorfulAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent2; break;
        case 'ListTable7ColorfulAccent2': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent2; break;
        case 'ListTable1LightAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent3; break;
        case 'ListTable2Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent3; break;
        case 'ListTable3Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent3; break;
        case 'ListTable4Accent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent3; break;
        case 'ListTable5DarkAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent3; break;
        case 'ListTable6ColorfulAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent3; break;
        case 'ListTable7ColorfulAccent3': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent3; break;
        case 'ListTable1LightAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent4; break;
        case 'ListTable2Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent4; break;
        case 'ListTable3Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent4; break;
        case 'ListTable4Accent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent4; break;
        case 'ListTable5DarkAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent4; break;
        case 'ListTable6ColorfulAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent4; break;
        case 'ListTable7ColorfulAccent4': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent4; break;
        case 'ListTable1LightAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent5; break;
        case 'ListTable2Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent5; break;
        case 'ListTable3Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent5; break;
        case 'ListTable4Accent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent5; break;
        case 'ListTable5DarkAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent5; break;
        case 'ListTable6ColorfulAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent5; break;
        case 'ListTable7ColorfulAccent5': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent5; break;
        case 'ListTable1LightAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable1LightAccent6; break;
        case 'ListTable2Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable2Accent6; break;
        case 'ListTable3Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable3Accent6; break;
        case 'ListTable4Accent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable4Accent6; break;
        case 'ListTable5DarkAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable5DarkAccent6; break;
        case 'ListTable6ColorfulAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable6ColorfulAccent6; break;
        case 'ListTable7ColorfulAccent6': this.styleIdentifier = Font_StyleIdentifierEnum.listTable7ColorfulAccent6; break;
        case 'User': this.styleIdentifier = Font_StyleIdentifierEnum.user; break;
        case 'Nil': this.styleIdentifier = Font_StyleIdentifierEnum.nil; break;
        default: this.styleIdentifier = null; break;
      }
    } else {
      this.styleIdentifier = null;
    }

    if (json.containsKey('StyleName')) {
      this.styleName = json['StyleName'];
    } else {
      this.styleName = null;
    }

    if (json.containsKey('Subscript')) {
      this.subscript = json['Subscript'];
    } else {
      this.subscript = null;
    }

    if (json.containsKey('Superscript')) {
      this.superscript = json['Superscript'];
    } else {
      this.superscript = null;
    }

    if (json.containsKey('TextEffect')) {
      switch (json['TextEffect']) {
        case 'None': this.textEffect = Font_TextEffectEnum.none; break;
        case 'LasVegasLights': this.textEffect = Font_TextEffectEnum.lasVegasLights; break;
        case 'BlinkingBackground': this.textEffect = Font_TextEffectEnum.blinkingBackground; break;
        case 'SparkleText': this.textEffect = Font_TextEffectEnum.sparkleText; break;
        case 'MarchingBlackAnts': this.textEffect = Font_TextEffectEnum.marchingBlackAnts; break;
        case 'MarchingRedAnts': this.textEffect = Font_TextEffectEnum.marchingRedAnts; break;
        case 'Shimmer': this.textEffect = Font_TextEffectEnum.shimmer; break;
        default: this.textEffect = null; break;
      }
    } else {
      this.textEffect = null;
    }

    if (json.containsKey('Underline')) {
      switch (json['Underline']) {
        case 'None': this.underline = Font_UnderlineEnum.none; break;
        case 'Single': this.underline = Font_UnderlineEnum.single; break;
        case 'Words': this.underline = Font_UnderlineEnum.words; break;
        case 'Double': this.underline = Font_UnderlineEnum.double; break;
        case 'Dotted': this.underline = Font_UnderlineEnum.dotted; break;
        case 'Thick': this.underline = Font_UnderlineEnum.thick; break;
        case 'Dash': this.underline = Font_UnderlineEnum.dash; break;
        case 'DotDash': this.underline = Font_UnderlineEnum.dotDash; break;
        case 'DotDotDash': this.underline = Font_UnderlineEnum.dotDotDash; break;
        case 'Wavy': this.underline = Font_UnderlineEnum.wavy; break;
        case 'DottedHeavy': this.underline = Font_UnderlineEnum.dottedHeavy; break;
        case 'DashHeavy': this.underline = Font_UnderlineEnum.dashHeavy; break;
        case 'DotDashHeavy': this.underline = Font_UnderlineEnum.dotDashHeavy; break;
        case 'DotDotDashHeavy': this.underline = Font_UnderlineEnum.dotDotDashHeavy; break;
        case 'WavyHeavy': this.underline = Font_UnderlineEnum.wavyHeavy; break;
        case 'DashLong': this.underline = Font_UnderlineEnum.dashLong; break;
        case 'WavyDouble': this.underline = Font_UnderlineEnum.wavyDouble; break;
        case 'DashLongHeavy': this.underline = Font_UnderlineEnum.dashLongHeavy; break;
        default: this.underline = null; break;
      }
    } else {
      this.underline = null;
    }

    if (json.containsKey('UnderlineColor')) {
      this.underlineColor = new XmlColor();
      this.underlineColor.deserialize(json['UnderlineColor']);
    } else {
      this.underlineColor = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.allCaps != null) {
      _result['AllCaps'] = this.allCaps;
    }

    if (this.bidi != null) {
      _result['Bidi'] = this.bidi;
    }

    if (this.bold != null) {
      _result['Bold'] = this.bold;
    }

    if (this.boldBi != null) {
      _result['BoldBi'] = this.boldBi;
    }

    if (this.border != null) {
      _result['Border'] = this.border.serialize();
    }

    if (this.color != null) {
      _result['Color'] = this.color.serialize();
    }

    if (this.complexScript != null) {
      _result['ComplexScript'] = this.complexScript;
    }

    if (this.doubleStrikeThrough != null) {
      _result['DoubleStrikeThrough'] = this.doubleStrikeThrough;
    }

    if (this.emboss != null) {
      _result['Emboss'] = this.emboss;
    }

    if (this.engrave != null) {
      _result['Engrave'] = this.engrave;
    }

    if (this.hidden != null) {
      _result['Hidden'] = this.hidden;
    }

    if (this.highlightColor != null) {
      _result['HighlightColor'] = this.highlightColor.serialize();
    }

    if (this.italic != null) {
      _result['Italic'] = this.italic;
    }

    if (this.italicBi != null) {
      _result['ItalicBi'] = this.italicBi;
    }

    if (this.kerning != null) {
      _result['Kerning'] = this.kerning;
    }

    if (this.localeId != null) {
      _result['LocaleId'] = this.localeId;
    }

    if (this.localeIdBi != null) {
      _result['LocaleIdBi'] = this.localeIdBi;
    }

    if (this.localeIdFarEast != null) {
      _result['LocaleIdFarEast'] = this.localeIdFarEast;
    }

    if (this.name != null) {
      _result['Name'] = this.name;
    }

    if (this.nameAscii != null) {
      _result['NameAscii'] = this.nameAscii;
    }

    if (this.nameBi != null) {
      _result['NameBi'] = this.nameBi;
    }

    if (this.nameFarEast != null) {
      _result['NameFarEast'] = this.nameFarEast;
    }

    if (this.nameOther != null) {
      _result['NameOther'] = this.nameOther;
    }

    if (this.noProofing != null) {
      _result['NoProofing'] = this.noProofing;
    }

    if (this.outline != null) {
      _result['Outline'] = this.outline;
    }

    if (this.position != null) {
      _result['Position'] = this.position;
    }

    if (this.scaling != null) {
      _result['Scaling'] = this.scaling;
    }

    if (this.shadow != null) {
      _result['Shadow'] = this.shadow;
    }

    if (this.size != null) {
      _result['Size'] = this.size;
    }

    if (this.sizeBi != null) {
      _result['SizeBi'] = this.sizeBi;
    }

    if (this.smallCaps != null) {
      _result['SmallCaps'] = this.smallCaps;
    }

    if (this.spacing != null) {
      _result['Spacing'] = this.spacing;
    }

    if (this.strikeThrough != null) {
      _result['StrikeThrough'] = this.strikeThrough;
    }

    if (this.styleIdentifier != null) {
      switch (this.styleIdentifier) {
        case Font_StyleIdentifierEnum.normal: _result['StyleIdentifier'] = 'Normal'; break;
        case Font_StyleIdentifierEnum.heading1: _result['StyleIdentifier'] = 'Heading1'; break;
        case Font_StyleIdentifierEnum.heading2: _result['StyleIdentifier'] = 'Heading2'; break;
        case Font_StyleIdentifierEnum.heading3: _result['StyleIdentifier'] = 'Heading3'; break;
        case Font_StyleIdentifierEnum.heading4: _result['StyleIdentifier'] = 'Heading4'; break;
        case Font_StyleIdentifierEnum.heading5: _result['StyleIdentifier'] = 'Heading5'; break;
        case Font_StyleIdentifierEnum.heading6: _result['StyleIdentifier'] = 'Heading6'; break;
        case Font_StyleIdentifierEnum.heading7: _result['StyleIdentifier'] = 'Heading7'; break;
        case Font_StyleIdentifierEnum.heading8: _result['StyleIdentifier'] = 'Heading8'; break;
        case Font_StyleIdentifierEnum.heading9: _result['StyleIdentifier'] = 'Heading9'; break;
        case Font_StyleIdentifierEnum.index1: _result['StyleIdentifier'] = 'Index1'; break;
        case Font_StyleIdentifierEnum.index2: _result['StyleIdentifier'] = 'Index2'; break;
        case Font_StyleIdentifierEnum.index3: _result['StyleIdentifier'] = 'Index3'; break;
        case Font_StyleIdentifierEnum.index4: _result['StyleIdentifier'] = 'Index4'; break;
        case Font_StyleIdentifierEnum.index5: _result['StyleIdentifier'] = 'Index5'; break;
        case Font_StyleIdentifierEnum.index6: _result['StyleIdentifier'] = 'Index6'; break;
        case Font_StyleIdentifierEnum.index7: _result['StyleIdentifier'] = 'Index7'; break;
        case Font_StyleIdentifierEnum.index8: _result['StyleIdentifier'] = 'Index8'; break;
        case Font_StyleIdentifierEnum.index9: _result['StyleIdentifier'] = 'Index9'; break;
        case Font_StyleIdentifierEnum.toc1: _result['StyleIdentifier'] = 'Toc1'; break;
        case Font_StyleIdentifierEnum.toc2: _result['StyleIdentifier'] = 'Toc2'; break;
        case Font_StyleIdentifierEnum.toc3: _result['StyleIdentifier'] = 'Toc3'; break;
        case Font_StyleIdentifierEnum.toc4: _result['StyleIdentifier'] = 'Toc4'; break;
        case Font_StyleIdentifierEnum.toc5: _result['StyleIdentifier'] = 'Toc5'; break;
        case Font_StyleIdentifierEnum.toc6: _result['StyleIdentifier'] = 'Toc6'; break;
        case Font_StyleIdentifierEnum.toc7: _result['StyleIdentifier'] = 'Toc7'; break;
        case Font_StyleIdentifierEnum.toc8: _result['StyleIdentifier'] = 'Toc8'; break;
        case Font_StyleIdentifierEnum.toc9: _result['StyleIdentifier'] = 'Toc9'; break;
        case Font_StyleIdentifierEnum.normalIndent: _result['StyleIdentifier'] = 'NormalIndent'; break;
        case Font_StyleIdentifierEnum.footnoteText: _result['StyleIdentifier'] = 'FootnoteText'; break;
        case Font_StyleIdentifierEnum.commentText: _result['StyleIdentifier'] = 'CommentText'; break;
        case Font_StyleIdentifierEnum.header: _result['StyleIdentifier'] = 'Header'; break;
        case Font_StyleIdentifierEnum.footer: _result['StyleIdentifier'] = 'Footer'; break;
        case Font_StyleIdentifierEnum.indexHeading: _result['StyleIdentifier'] = 'IndexHeading'; break;
        case Font_StyleIdentifierEnum.caption: _result['StyleIdentifier'] = 'Caption'; break;
        case Font_StyleIdentifierEnum.tableOfFigures: _result['StyleIdentifier'] = 'TableOfFigures'; break;
        case Font_StyleIdentifierEnum.envelopeAddress: _result['StyleIdentifier'] = 'EnvelopeAddress'; break;
        case Font_StyleIdentifierEnum.envelopeReturn: _result['StyleIdentifier'] = 'EnvelopeReturn'; break;
        case Font_StyleIdentifierEnum.footnoteReference: _result['StyleIdentifier'] = 'FootnoteReference'; break;
        case Font_StyleIdentifierEnum.commentReference: _result['StyleIdentifier'] = 'CommentReference'; break;
        case Font_StyleIdentifierEnum.lineNumber: _result['StyleIdentifier'] = 'LineNumber'; break;
        case Font_StyleIdentifierEnum.pageNumber: _result['StyleIdentifier'] = 'PageNumber'; break;
        case Font_StyleIdentifierEnum.endnoteReference: _result['StyleIdentifier'] = 'EndnoteReference'; break;
        case Font_StyleIdentifierEnum.endnoteText: _result['StyleIdentifier'] = 'EndnoteText'; break;
        case Font_StyleIdentifierEnum.tableOfAuthorities: _result['StyleIdentifier'] = 'TableOfAuthorities'; break;
        case Font_StyleIdentifierEnum.macro: _result['StyleIdentifier'] = 'Macro'; break;
        case Font_StyleIdentifierEnum.toaHeading: _result['StyleIdentifier'] = 'ToaHeading'; break;
        case Font_StyleIdentifierEnum.list: _result['StyleIdentifier'] = 'List'; break;
        case Font_StyleIdentifierEnum.listBullet: _result['StyleIdentifier'] = 'ListBullet'; break;
        case Font_StyleIdentifierEnum.listNumber: _result['StyleIdentifier'] = 'ListNumber'; break;
        case Font_StyleIdentifierEnum.list2: _result['StyleIdentifier'] = 'List2'; break;
        case Font_StyleIdentifierEnum.list3: _result['StyleIdentifier'] = 'List3'; break;
        case Font_StyleIdentifierEnum.list4: _result['StyleIdentifier'] = 'List4'; break;
        case Font_StyleIdentifierEnum.list5: _result['StyleIdentifier'] = 'List5'; break;
        case Font_StyleIdentifierEnum.listBullet2: _result['StyleIdentifier'] = 'ListBullet2'; break;
        case Font_StyleIdentifierEnum.listBullet3: _result['StyleIdentifier'] = 'ListBullet3'; break;
        case Font_StyleIdentifierEnum.listBullet4: _result['StyleIdentifier'] = 'ListBullet4'; break;
        case Font_StyleIdentifierEnum.listBullet5: _result['StyleIdentifier'] = 'ListBullet5'; break;
        case Font_StyleIdentifierEnum.listNumber2: _result['StyleIdentifier'] = 'ListNumber2'; break;
        case Font_StyleIdentifierEnum.listNumber3: _result['StyleIdentifier'] = 'ListNumber3'; break;
        case Font_StyleIdentifierEnum.listNumber4: _result['StyleIdentifier'] = 'ListNumber4'; break;
        case Font_StyleIdentifierEnum.listNumber5: _result['StyleIdentifier'] = 'ListNumber5'; break;
        case Font_StyleIdentifierEnum.title: _result['StyleIdentifier'] = 'Title'; break;
        case Font_StyleIdentifierEnum.closing: _result['StyleIdentifier'] = 'Closing'; break;
        case Font_StyleIdentifierEnum.signature: _result['StyleIdentifier'] = 'Signature'; break;
        case Font_StyleIdentifierEnum.defaultParagraphFont: _result['StyleIdentifier'] = 'DefaultParagraphFont'; break;
        case Font_StyleIdentifierEnum.bodyText: _result['StyleIdentifier'] = 'BodyText'; break;
        case Font_StyleIdentifierEnum.bodyTextInd: _result['StyleIdentifier'] = 'BodyTextInd'; break;
        case Font_StyleIdentifierEnum.listContinue: _result['StyleIdentifier'] = 'ListContinue'; break;
        case Font_StyleIdentifierEnum.listContinue2: _result['StyleIdentifier'] = 'ListContinue2'; break;
        case Font_StyleIdentifierEnum.listContinue3: _result['StyleIdentifier'] = 'ListContinue3'; break;
        case Font_StyleIdentifierEnum.listContinue4: _result['StyleIdentifier'] = 'ListContinue4'; break;
        case Font_StyleIdentifierEnum.listContinue5: _result['StyleIdentifier'] = 'ListContinue5'; break;
        case Font_StyleIdentifierEnum.messageHeader: _result['StyleIdentifier'] = 'MessageHeader'; break;
        case Font_StyleIdentifierEnum.subtitle: _result['StyleIdentifier'] = 'Subtitle'; break;
        case Font_StyleIdentifierEnum.salutation: _result['StyleIdentifier'] = 'Salutation'; break;
        case Font_StyleIdentifierEnum.date: _result['StyleIdentifier'] = 'Date'; break;
        case Font_StyleIdentifierEnum.bodyText1I: _result['StyleIdentifier'] = 'BodyText1I'; break;
        case Font_StyleIdentifierEnum.bodyText1I2: _result['StyleIdentifier'] = 'BodyText1I2'; break;
        case Font_StyleIdentifierEnum.noteHeading: _result['StyleIdentifier'] = 'NoteHeading'; break;
        case Font_StyleIdentifierEnum.bodyText2: _result['StyleIdentifier'] = 'BodyText2'; break;
        case Font_StyleIdentifierEnum.bodyText3: _result['StyleIdentifier'] = 'BodyText3'; break;
        case Font_StyleIdentifierEnum.bodyTextInd2: _result['StyleIdentifier'] = 'BodyTextInd2'; break;
        case Font_StyleIdentifierEnum.bodyTextInd3: _result['StyleIdentifier'] = 'BodyTextInd3'; break;
        case Font_StyleIdentifierEnum.blockText: _result['StyleIdentifier'] = 'BlockText'; break;
        case Font_StyleIdentifierEnum.hyperlink: _result['StyleIdentifier'] = 'Hyperlink'; break;
        case Font_StyleIdentifierEnum.followedHyperlink: _result['StyleIdentifier'] = 'FollowedHyperlink'; break;
        case Font_StyleIdentifierEnum.strong: _result['StyleIdentifier'] = 'Strong'; break;
        case Font_StyleIdentifierEnum.emphasis: _result['StyleIdentifier'] = 'Emphasis'; break;
        case Font_StyleIdentifierEnum.documentMap: _result['StyleIdentifier'] = 'DocumentMap'; break;
        case Font_StyleIdentifierEnum.plainText: _result['StyleIdentifier'] = 'PlainText'; break;
        case Font_StyleIdentifierEnum.emailSignature: _result['StyleIdentifier'] = 'EmailSignature'; break;
        case Font_StyleIdentifierEnum.htmlTopOfForm: _result['StyleIdentifier'] = 'HtmlTopOfForm'; break;
        case Font_StyleIdentifierEnum.htmlBottomOfForm: _result['StyleIdentifier'] = 'HtmlBottomOfForm'; break;
        case Font_StyleIdentifierEnum.normalWeb: _result['StyleIdentifier'] = 'NormalWeb'; break;
        case Font_StyleIdentifierEnum.htmlAcronym: _result['StyleIdentifier'] = 'HtmlAcronym'; break;
        case Font_StyleIdentifierEnum.htmlAddress: _result['StyleIdentifier'] = 'HtmlAddress'; break;
        case Font_StyleIdentifierEnum.htmlCite: _result['StyleIdentifier'] = 'HtmlCite'; break;
        case Font_StyleIdentifierEnum.htmlCode: _result['StyleIdentifier'] = 'HtmlCode'; break;
        case Font_StyleIdentifierEnum.htmlDefinition: _result['StyleIdentifier'] = 'HtmlDefinition'; break;
        case Font_StyleIdentifierEnum.htmlKeyboard: _result['StyleIdentifier'] = 'HtmlKeyboard'; break;
        case Font_StyleIdentifierEnum.htmlPreformatted: _result['StyleIdentifier'] = 'HtmlPreformatted'; break;
        case Font_StyleIdentifierEnum.htmlSample: _result['StyleIdentifier'] = 'HtmlSample'; break;
        case Font_StyleIdentifierEnum.htmlTypewriter: _result['StyleIdentifier'] = 'HtmlTypewriter'; break;
        case Font_StyleIdentifierEnum.htmlVariable: _result['StyleIdentifier'] = 'HtmlVariable'; break;
        case Font_StyleIdentifierEnum.tableNormal: _result['StyleIdentifier'] = 'TableNormal'; break;
        case Font_StyleIdentifierEnum.commentSubject: _result['StyleIdentifier'] = 'CommentSubject'; break;
        case Font_StyleIdentifierEnum.noList: _result['StyleIdentifier'] = 'NoList'; break;
        case Font_StyleIdentifierEnum.outlineList1: _result['StyleIdentifier'] = 'OutlineList1'; break;
        case Font_StyleIdentifierEnum.outlineList2: _result['StyleIdentifier'] = 'OutlineList2'; break;
        case Font_StyleIdentifierEnum.outlineList3: _result['StyleIdentifier'] = 'OutlineList3'; break;
        case Font_StyleIdentifierEnum.tableSimple1: _result['StyleIdentifier'] = 'TableSimple1'; break;
        case Font_StyleIdentifierEnum.tableSimple2: _result['StyleIdentifier'] = 'TableSimple2'; break;
        case Font_StyleIdentifierEnum.tableSimple3: _result['StyleIdentifier'] = 'TableSimple3'; break;
        case Font_StyleIdentifierEnum.tableClassic1: _result['StyleIdentifier'] = 'TableClassic1'; break;
        case Font_StyleIdentifierEnum.tableClassic2: _result['StyleIdentifier'] = 'TableClassic2'; break;
        case Font_StyleIdentifierEnum.tableClassic3: _result['StyleIdentifier'] = 'TableClassic3'; break;
        case Font_StyleIdentifierEnum.tableClassic4: _result['StyleIdentifier'] = 'TableClassic4'; break;
        case Font_StyleIdentifierEnum.tableColorful1: _result['StyleIdentifier'] = 'TableColorful1'; break;
        case Font_StyleIdentifierEnum.tableColorful2: _result['StyleIdentifier'] = 'TableColorful2'; break;
        case Font_StyleIdentifierEnum.tableColorful3: _result['StyleIdentifier'] = 'TableColorful3'; break;
        case Font_StyleIdentifierEnum.tableColumns1: _result['StyleIdentifier'] = 'TableColumns1'; break;
        case Font_StyleIdentifierEnum.tableColumns2: _result['StyleIdentifier'] = 'TableColumns2'; break;
        case Font_StyleIdentifierEnum.tableColumns3: _result['StyleIdentifier'] = 'TableColumns3'; break;
        case Font_StyleIdentifierEnum.tableColumns4: _result['StyleIdentifier'] = 'TableColumns4'; break;
        case Font_StyleIdentifierEnum.tableColumns5: _result['StyleIdentifier'] = 'TableColumns5'; break;
        case Font_StyleIdentifierEnum.tableGrid1: _result['StyleIdentifier'] = 'TableGrid1'; break;
        case Font_StyleIdentifierEnum.tableGrid2: _result['StyleIdentifier'] = 'TableGrid2'; break;
        case Font_StyleIdentifierEnum.tableGrid3: _result['StyleIdentifier'] = 'TableGrid3'; break;
        case Font_StyleIdentifierEnum.tableGrid4: _result['StyleIdentifier'] = 'TableGrid4'; break;
        case Font_StyleIdentifierEnum.tableGrid5: _result['StyleIdentifier'] = 'TableGrid5'; break;
        case Font_StyleIdentifierEnum.tableGrid6: _result['StyleIdentifier'] = 'TableGrid6'; break;
        case Font_StyleIdentifierEnum.tableGrid7: _result['StyleIdentifier'] = 'TableGrid7'; break;
        case Font_StyleIdentifierEnum.tableGrid8: _result['StyleIdentifier'] = 'TableGrid8'; break;
        case Font_StyleIdentifierEnum.tableList1: _result['StyleIdentifier'] = 'TableList1'; break;
        case Font_StyleIdentifierEnum.tableList2: _result['StyleIdentifier'] = 'TableList2'; break;
        case Font_StyleIdentifierEnum.tableList3: _result['StyleIdentifier'] = 'TableList3'; break;
        case Font_StyleIdentifierEnum.tableList4: _result['StyleIdentifier'] = 'TableList4'; break;
        case Font_StyleIdentifierEnum.tableList5: _result['StyleIdentifier'] = 'TableList5'; break;
        case Font_StyleIdentifierEnum.tableList6: _result['StyleIdentifier'] = 'TableList6'; break;
        case Font_StyleIdentifierEnum.tableList7: _result['StyleIdentifier'] = 'TableList7'; break;
        case Font_StyleIdentifierEnum.tableList8: _result['StyleIdentifier'] = 'TableList8'; break;
        case Font_StyleIdentifierEnum.table3DEffects1: _result['StyleIdentifier'] = 'Table3DEffects1'; break;
        case Font_StyleIdentifierEnum.table3DEffects2: _result['StyleIdentifier'] = 'Table3DEffects2'; break;
        case Font_StyleIdentifierEnum.table3DEffects3: _result['StyleIdentifier'] = 'Table3DEffects3'; break;
        case Font_StyleIdentifierEnum.tableContemporary: _result['StyleIdentifier'] = 'TableContemporary'; break;
        case Font_StyleIdentifierEnum.tableElegant: _result['StyleIdentifier'] = 'TableElegant'; break;
        case Font_StyleIdentifierEnum.tableProfessional: _result['StyleIdentifier'] = 'TableProfessional'; break;
        case Font_StyleIdentifierEnum.tableSubtle1: _result['StyleIdentifier'] = 'TableSubtle1'; break;
        case Font_StyleIdentifierEnum.tableSubtle2: _result['StyleIdentifier'] = 'TableSubtle2'; break;
        case Font_StyleIdentifierEnum.tableWeb1: _result['StyleIdentifier'] = 'TableWeb1'; break;
        case Font_StyleIdentifierEnum.tableWeb2: _result['StyleIdentifier'] = 'TableWeb2'; break;
        case Font_StyleIdentifierEnum.tableWeb3: _result['StyleIdentifier'] = 'TableWeb3'; break;
        case Font_StyleIdentifierEnum.balloonText: _result['StyleIdentifier'] = 'BalloonText'; break;
        case Font_StyleIdentifierEnum.tableGrid: _result['StyleIdentifier'] = 'TableGrid'; break;
        case Font_StyleIdentifierEnum.tableTheme: _result['StyleIdentifier'] = 'TableTheme'; break;
        case Font_StyleIdentifierEnum.placeholderText: _result['StyleIdentifier'] = 'PlaceholderText'; break;
        case Font_StyleIdentifierEnum.noSpacing: _result['StyleIdentifier'] = 'NoSpacing'; break;
        case Font_StyleIdentifierEnum.lightShading: _result['StyleIdentifier'] = 'LightShading'; break;
        case Font_StyleIdentifierEnum.lightList: _result['StyleIdentifier'] = 'LightList'; break;
        case Font_StyleIdentifierEnum.lightGrid: _result['StyleIdentifier'] = 'LightGrid'; break;
        case Font_StyleIdentifierEnum.mediumShading1: _result['StyleIdentifier'] = 'MediumShading1'; break;
        case Font_StyleIdentifierEnum.mediumShading2: _result['StyleIdentifier'] = 'MediumShading2'; break;
        case Font_StyleIdentifierEnum.mediumList1: _result['StyleIdentifier'] = 'MediumList1'; break;
        case Font_StyleIdentifierEnum.mediumList2: _result['StyleIdentifier'] = 'MediumList2'; break;
        case Font_StyleIdentifierEnum.mediumGrid1: _result['StyleIdentifier'] = 'MediumGrid1'; break;
        case Font_StyleIdentifierEnum.mediumGrid2: _result['StyleIdentifier'] = 'MediumGrid2'; break;
        case Font_StyleIdentifierEnum.mediumGrid3: _result['StyleIdentifier'] = 'MediumGrid3'; break;
        case Font_StyleIdentifierEnum.darkList: _result['StyleIdentifier'] = 'DarkList'; break;
        case Font_StyleIdentifierEnum.colorfulShading: _result['StyleIdentifier'] = 'ColorfulShading'; break;
        case Font_StyleIdentifierEnum.colorfulList: _result['StyleIdentifier'] = 'ColorfulList'; break;
        case Font_StyleIdentifierEnum.colorfulGrid: _result['StyleIdentifier'] = 'ColorfulGrid'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent1: _result['StyleIdentifier'] = 'LightShadingAccent1'; break;
        case Font_StyleIdentifierEnum.lightListAccent1: _result['StyleIdentifier'] = 'LightListAccent1'; break;
        case Font_StyleIdentifierEnum.lightGridAccent1: _result['StyleIdentifier'] = 'LightGridAccent1'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent1: _result['StyleIdentifier'] = 'MediumShading1Accent1'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent1: _result['StyleIdentifier'] = 'MediumShading2Accent1'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent1: _result['StyleIdentifier'] = 'MediumList1Accent1'; break;
        case Font_StyleIdentifierEnum.revision: _result['StyleIdentifier'] = 'Revision'; break;
        case Font_StyleIdentifierEnum.listParagraph: _result['StyleIdentifier'] = 'ListParagraph'; break;
        case Font_StyleIdentifierEnum.quote: _result['StyleIdentifier'] = 'Quote'; break;
        case Font_StyleIdentifierEnum.intenseQuote: _result['StyleIdentifier'] = 'IntenseQuote'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent1: _result['StyleIdentifier'] = 'MediumList2Accent1'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent1: _result['StyleIdentifier'] = 'MediumGrid1Accent1'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent1: _result['StyleIdentifier'] = 'MediumGrid2Accent1'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent1: _result['StyleIdentifier'] = 'MediumGrid3Accent1'; break;
        case Font_StyleIdentifierEnum.darkListAccent1: _result['StyleIdentifier'] = 'DarkListAccent1'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent1: _result['StyleIdentifier'] = 'ColorfulShadingAccent1'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent1: _result['StyleIdentifier'] = 'ColorfulListAccent1'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent1: _result['StyleIdentifier'] = 'ColorfulGridAccent1'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent2: _result['StyleIdentifier'] = 'LightShadingAccent2'; break;
        case Font_StyleIdentifierEnum.lightListAccent2: _result['StyleIdentifier'] = 'LightListAccent2'; break;
        case Font_StyleIdentifierEnum.lightGridAccent2: _result['StyleIdentifier'] = 'LightGridAccent2'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent2: _result['StyleIdentifier'] = 'MediumShading1Accent2'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent2: _result['StyleIdentifier'] = 'MediumShading2Accent2'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent2: _result['StyleIdentifier'] = 'MediumList1Accent2'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent2: _result['StyleIdentifier'] = 'MediumList2Accent2'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent2: _result['StyleIdentifier'] = 'MediumGrid1Accent2'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent2: _result['StyleIdentifier'] = 'MediumGrid2Accent2'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent2: _result['StyleIdentifier'] = 'MediumGrid3Accent2'; break;
        case Font_StyleIdentifierEnum.darkListAccent2: _result['StyleIdentifier'] = 'DarkListAccent2'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent2: _result['StyleIdentifier'] = 'ColorfulShadingAccent2'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent2: _result['StyleIdentifier'] = 'ColorfulListAccent2'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent2: _result['StyleIdentifier'] = 'ColorfulGridAccent2'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent3: _result['StyleIdentifier'] = 'LightShadingAccent3'; break;
        case Font_StyleIdentifierEnum.lightListAccent3: _result['StyleIdentifier'] = 'LightListAccent3'; break;
        case Font_StyleIdentifierEnum.lightGridAccent3: _result['StyleIdentifier'] = 'LightGridAccent3'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent3: _result['StyleIdentifier'] = 'MediumShading1Accent3'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent3: _result['StyleIdentifier'] = 'MediumShading2Accent3'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent3: _result['StyleIdentifier'] = 'MediumList1Accent3'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent3: _result['StyleIdentifier'] = 'MediumList2Accent3'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent3: _result['StyleIdentifier'] = 'MediumGrid1Accent3'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent3: _result['StyleIdentifier'] = 'MediumGrid2Accent3'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent3: _result['StyleIdentifier'] = 'MediumGrid3Accent3'; break;
        case Font_StyleIdentifierEnum.darkListAccent3: _result['StyleIdentifier'] = 'DarkListAccent3'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent3: _result['StyleIdentifier'] = 'ColorfulShadingAccent3'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent3: _result['StyleIdentifier'] = 'ColorfulListAccent3'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent3: _result['StyleIdentifier'] = 'ColorfulGridAccent3'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent4: _result['StyleIdentifier'] = 'LightShadingAccent4'; break;
        case Font_StyleIdentifierEnum.lightListAccent4: _result['StyleIdentifier'] = 'LightListAccent4'; break;
        case Font_StyleIdentifierEnum.lightGridAccent4: _result['StyleIdentifier'] = 'LightGridAccent4'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent4: _result['StyleIdentifier'] = 'MediumShading1Accent4'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent4: _result['StyleIdentifier'] = 'MediumShading2Accent4'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent4: _result['StyleIdentifier'] = 'MediumList1Accent4'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent4: _result['StyleIdentifier'] = 'MediumList2Accent4'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent4: _result['StyleIdentifier'] = 'MediumGrid1Accent4'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent4: _result['StyleIdentifier'] = 'MediumGrid2Accent4'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent4: _result['StyleIdentifier'] = 'MediumGrid3Accent4'; break;
        case Font_StyleIdentifierEnum.darkListAccent4: _result['StyleIdentifier'] = 'DarkListAccent4'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent4: _result['StyleIdentifier'] = 'ColorfulShadingAccent4'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent4: _result['StyleIdentifier'] = 'ColorfulListAccent4'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent4: _result['StyleIdentifier'] = 'ColorfulGridAccent4'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent5: _result['StyleIdentifier'] = 'LightShadingAccent5'; break;
        case Font_StyleIdentifierEnum.lightListAccent5: _result['StyleIdentifier'] = 'LightListAccent5'; break;
        case Font_StyleIdentifierEnum.lightGridAccent5: _result['StyleIdentifier'] = 'LightGridAccent5'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent5: _result['StyleIdentifier'] = 'MediumShading1Accent5'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent5: _result['StyleIdentifier'] = 'MediumShading2Accent5'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent5: _result['StyleIdentifier'] = 'MediumList1Accent5'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent5: _result['StyleIdentifier'] = 'MediumList2Accent5'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent5: _result['StyleIdentifier'] = 'MediumGrid1Accent5'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent5: _result['StyleIdentifier'] = 'MediumGrid2Accent5'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent5: _result['StyleIdentifier'] = 'MediumGrid3Accent5'; break;
        case Font_StyleIdentifierEnum.darkListAccent5: _result['StyleIdentifier'] = 'DarkListAccent5'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent5: _result['StyleIdentifier'] = 'ColorfulShadingAccent5'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent5: _result['StyleIdentifier'] = 'ColorfulListAccent5'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent5: _result['StyleIdentifier'] = 'ColorfulGridAccent5'; break;
        case Font_StyleIdentifierEnum.lightShadingAccent6: _result['StyleIdentifier'] = 'LightShadingAccent6'; break;
        case Font_StyleIdentifierEnum.lightListAccent6: _result['StyleIdentifier'] = 'LightListAccent6'; break;
        case Font_StyleIdentifierEnum.lightGridAccent6: _result['StyleIdentifier'] = 'LightGridAccent6'; break;
        case Font_StyleIdentifierEnum.mediumShading1Accent6: _result['StyleIdentifier'] = 'MediumShading1Accent6'; break;
        case Font_StyleIdentifierEnum.mediumShading2Accent6: _result['StyleIdentifier'] = 'MediumShading2Accent6'; break;
        case Font_StyleIdentifierEnum.mediumList1Accent6: _result['StyleIdentifier'] = 'MediumList1Accent6'; break;
        case Font_StyleIdentifierEnum.mediumList2Accent6: _result['StyleIdentifier'] = 'MediumList2Accent6'; break;
        case Font_StyleIdentifierEnum.mediumGrid1Accent6: _result['StyleIdentifier'] = 'MediumGrid1Accent6'; break;
        case Font_StyleIdentifierEnum.mediumGrid2Accent6: _result['StyleIdentifier'] = 'MediumGrid2Accent6'; break;
        case Font_StyleIdentifierEnum.mediumGrid3Accent6: _result['StyleIdentifier'] = 'MediumGrid3Accent6'; break;
        case Font_StyleIdentifierEnum.darkListAccent6: _result['StyleIdentifier'] = 'DarkListAccent6'; break;
        case Font_StyleIdentifierEnum.colorfulShadingAccent6: _result['StyleIdentifier'] = 'ColorfulShadingAccent6'; break;
        case Font_StyleIdentifierEnum.colorfulListAccent6: _result['StyleIdentifier'] = 'ColorfulListAccent6'; break;
        case Font_StyleIdentifierEnum.colorfulGridAccent6: _result['StyleIdentifier'] = 'ColorfulGridAccent6'; break;
        case Font_StyleIdentifierEnum.subtleEmphasis: _result['StyleIdentifier'] = 'SubtleEmphasis'; break;
        case Font_StyleIdentifierEnum.intenseEmphasis: _result['StyleIdentifier'] = 'IntenseEmphasis'; break;
        case Font_StyleIdentifierEnum.subtleReference: _result['StyleIdentifier'] = 'SubtleReference'; break;
        case Font_StyleIdentifierEnum.intenseReference: _result['StyleIdentifier'] = 'IntenseReference'; break;
        case Font_StyleIdentifierEnum.bookTitle: _result['StyleIdentifier'] = 'BookTitle'; break;
        case Font_StyleIdentifierEnum.bibliography: _result['StyleIdentifier'] = 'Bibliography'; break;
        case Font_StyleIdentifierEnum.tocHeading: _result['StyleIdentifier'] = 'TocHeading'; break;
        case Font_StyleIdentifierEnum.plainTable1: _result['StyleIdentifier'] = 'PlainTable1'; break;
        case Font_StyleIdentifierEnum.plainTable2: _result['StyleIdentifier'] = 'PlainTable2'; break;
        case Font_StyleIdentifierEnum.plainTable3: _result['StyleIdentifier'] = 'PlainTable3'; break;
        case Font_StyleIdentifierEnum.plainTable4: _result['StyleIdentifier'] = 'PlainTable4'; break;
        case Font_StyleIdentifierEnum.plainTable5: _result['StyleIdentifier'] = 'PlainTable5'; break;
        case Font_StyleIdentifierEnum.tableGridLight: _result['StyleIdentifier'] = 'TableGridLight'; break;
        case Font_StyleIdentifierEnum.gridTable1Light: _result['StyleIdentifier'] = 'GridTable1Light'; break;
        case Font_StyleIdentifierEnum.gridTable2: _result['StyleIdentifier'] = 'GridTable2'; break;
        case Font_StyleIdentifierEnum.gridTable3: _result['StyleIdentifier'] = 'GridTable3'; break;
        case Font_StyleIdentifierEnum.gridTable4: _result['StyleIdentifier'] = 'GridTable4'; break;
        case Font_StyleIdentifierEnum.gridTable5Dark: _result['StyleIdentifier'] = 'GridTable5Dark'; break;
        case Font_StyleIdentifierEnum.gridTable6Colorful: _result['StyleIdentifier'] = 'GridTable6Colorful'; break;
        case Font_StyleIdentifierEnum.gridTable7Colorful: _result['StyleIdentifier'] = 'GridTable7Colorful'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent1: _result['StyleIdentifier'] = 'GridTable1LightAccent1'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent1: _result['StyleIdentifier'] = 'GridTable2Accent1'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent1: _result['StyleIdentifier'] = 'GridTable3Accent1'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent1: _result['StyleIdentifier'] = 'GridTable4Accent1'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent1: _result['StyleIdentifier'] = 'GridTable5DarkAccent1'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent1'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent1'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent2: _result['StyleIdentifier'] = 'GridTable1LightAccent2'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent2: _result['StyleIdentifier'] = 'GridTable2Accent2'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent2: _result['StyleIdentifier'] = 'GridTable3Accent2'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent2: _result['StyleIdentifier'] = 'GridTable4Accent2'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent2: _result['StyleIdentifier'] = 'GridTable5DarkAccent2'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent2'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent2'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent3: _result['StyleIdentifier'] = 'GridTable1LightAccent3'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent3: _result['StyleIdentifier'] = 'GridTable2Accent3'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent3: _result['StyleIdentifier'] = 'GridTable3Accent3'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent3: _result['StyleIdentifier'] = 'GridTable4Accent3'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent3: _result['StyleIdentifier'] = 'GridTable5DarkAccent3'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent3'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent3'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent4: _result['StyleIdentifier'] = 'GridTable1LightAccent4'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent4: _result['StyleIdentifier'] = 'GridTable2Accent4'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent4: _result['StyleIdentifier'] = 'GridTable3Accent4'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent4: _result['StyleIdentifier'] = 'GridTable4Accent4'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent4: _result['StyleIdentifier'] = 'GridTable5DarkAccent4'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent4'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent4'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent5: _result['StyleIdentifier'] = 'GridTable1LightAccent5'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent5: _result['StyleIdentifier'] = 'GridTable2Accent5'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent5: _result['StyleIdentifier'] = 'GridTable3Accent5'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent5: _result['StyleIdentifier'] = 'GridTable4Accent5'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent5: _result['StyleIdentifier'] = 'GridTable5DarkAccent5'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent5'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent5'; break;
        case Font_StyleIdentifierEnum.gridTable1LightAccent6: _result['StyleIdentifier'] = 'GridTable1LightAccent6'; break;
        case Font_StyleIdentifierEnum.gridTable2Accent6: _result['StyleIdentifier'] = 'GridTable2Accent6'; break;
        case Font_StyleIdentifierEnum.gridTable3Accent6: _result['StyleIdentifier'] = 'GridTable3Accent6'; break;
        case Font_StyleIdentifierEnum.gridTable4Accent6: _result['StyleIdentifier'] = 'GridTable4Accent6'; break;
        case Font_StyleIdentifierEnum.gridTable5DarkAccent6: _result['StyleIdentifier'] = 'GridTable5DarkAccent6'; break;
        case Font_StyleIdentifierEnum.gridTable6ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent6'; break;
        case Font_StyleIdentifierEnum.gridTable7ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent6'; break;
        case Font_StyleIdentifierEnum.listTable1Light: _result['StyleIdentifier'] = 'ListTable1Light'; break;
        case Font_StyleIdentifierEnum.listTable2: _result['StyleIdentifier'] = 'ListTable2'; break;
        case Font_StyleIdentifierEnum.listTable3: _result['StyleIdentifier'] = 'ListTable3'; break;
        case Font_StyleIdentifierEnum.listTable4: _result['StyleIdentifier'] = 'ListTable4'; break;
        case Font_StyleIdentifierEnum.listTable5Dark: _result['StyleIdentifier'] = 'ListTable5Dark'; break;
        case Font_StyleIdentifierEnum.listTable6Colorful: _result['StyleIdentifier'] = 'ListTable6Colorful'; break;
        case Font_StyleIdentifierEnum.listTable7Colorful: _result['StyleIdentifier'] = 'ListTable7Colorful'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent1: _result['StyleIdentifier'] = 'ListTable1LightAccent1'; break;
        case Font_StyleIdentifierEnum.listTable2Accent1: _result['StyleIdentifier'] = 'ListTable2Accent1'; break;
        case Font_StyleIdentifierEnum.listTable3Accent1: _result['StyleIdentifier'] = 'ListTable3Accent1'; break;
        case Font_StyleIdentifierEnum.listTable4Accent1: _result['StyleIdentifier'] = 'ListTable4Accent1'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent1: _result['StyleIdentifier'] = 'ListTable5DarkAccent1'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent1'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent1'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent2: _result['StyleIdentifier'] = 'ListTable1LightAccent2'; break;
        case Font_StyleIdentifierEnum.listTable2Accent2: _result['StyleIdentifier'] = 'ListTable2Accent2'; break;
        case Font_StyleIdentifierEnum.listTable3Accent2: _result['StyleIdentifier'] = 'ListTable3Accent2'; break;
        case Font_StyleIdentifierEnum.listTable4Accent2: _result['StyleIdentifier'] = 'ListTable4Accent2'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent2: _result['StyleIdentifier'] = 'ListTable5DarkAccent2'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent2'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent2'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent3: _result['StyleIdentifier'] = 'ListTable1LightAccent3'; break;
        case Font_StyleIdentifierEnum.listTable2Accent3: _result['StyleIdentifier'] = 'ListTable2Accent3'; break;
        case Font_StyleIdentifierEnum.listTable3Accent3: _result['StyleIdentifier'] = 'ListTable3Accent3'; break;
        case Font_StyleIdentifierEnum.listTable4Accent3: _result['StyleIdentifier'] = 'ListTable4Accent3'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent3: _result['StyleIdentifier'] = 'ListTable5DarkAccent3'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent3'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent3'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent4: _result['StyleIdentifier'] = 'ListTable1LightAccent4'; break;
        case Font_StyleIdentifierEnum.listTable2Accent4: _result['StyleIdentifier'] = 'ListTable2Accent4'; break;
        case Font_StyleIdentifierEnum.listTable3Accent4: _result['StyleIdentifier'] = 'ListTable3Accent4'; break;
        case Font_StyleIdentifierEnum.listTable4Accent4: _result['StyleIdentifier'] = 'ListTable4Accent4'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent4: _result['StyleIdentifier'] = 'ListTable5DarkAccent4'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent4'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent4'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent5: _result['StyleIdentifier'] = 'ListTable1LightAccent5'; break;
        case Font_StyleIdentifierEnum.listTable2Accent5: _result['StyleIdentifier'] = 'ListTable2Accent5'; break;
        case Font_StyleIdentifierEnum.listTable3Accent5: _result['StyleIdentifier'] = 'ListTable3Accent5'; break;
        case Font_StyleIdentifierEnum.listTable4Accent5: _result['StyleIdentifier'] = 'ListTable4Accent5'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent5: _result['StyleIdentifier'] = 'ListTable5DarkAccent5'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent5'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent5'; break;
        case Font_StyleIdentifierEnum.listTable1LightAccent6: _result['StyleIdentifier'] = 'ListTable1LightAccent6'; break;
        case Font_StyleIdentifierEnum.listTable2Accent6: _result['StyleIdentifier'] = 'ListTable2Accent6'; break;
        case Font_StyleIdentifierEnum.listTable3Accent6: _result['StyleIdentifier'] = 'ListTable3Accent6'; break;
        case Font_StyleIdentifierEnum.listTable4Accent6: _result['StyleIdentifier'] = 'ListTable4Accent6'; break;
        case Font_StyleIdentifierEnum.listTable5DarkAccent6: _result['StyleIdentifier'] = 'ListTable5DarkAccent6'; break;
        case Font_StyleIdentifierEnum.listTable6ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent6'; break;
        case Font_StyleIdentifierEnum.listTable7ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent6'; break;
        case Font_StyleIdentifierEnum.user: _result['StyleIdentifier'] = 'User'; break;
        case Font_StyleIdentifierEnum.nil: _result['StyleIdentifier'] = 'Nil'; break;
        default: break;
      }
    }

    if (this.styleName != null) {
      _result['StyleName'] = this.styleName;
    }

    if (this.subscript != null) {
      _result['Subscript'] = this.subscript;
    }

    if (this.superscript != null) {
      _result['Superscript'] = this.superscript;
    }

    if (this.textEffect != null) {
      switch (this.textEffect) {
        case Font_TextEffectEnum.none: _result['TextEffect'] = 'None'; break;
        case Font_TextEffectEnum.lasVegasLights: _result['TextEffect'] = 'LasVegasLights'; break;
        case Font_TextEffectEnum.blinkingBackground: _result['TextEffect'] = 'BlinkingBackground'; break;
        case Font_TextEffectEnum.sparkleText: _result['TextEffect'] = 'SparkleText'; break;
        case Font_TextEffectEnum.marchingBlackAnts: _result['TextEffect'] = 'MarchingBlackAnts'; break;
        case Font_TextEffectEnum.marchingRedAnts: _result['TextEffect'] = 'MarchingRedAnts'; break;
        case Font_TextEffectEnum.shimmer: _result['TextEffect'] = 'Shimmer'; break;
        default: break;
      }
    }

    if (this.underline != null) {
      switch (this.underline) {
        case Font_UnderlineEnum.none: _result['Underline'] = 'None'; break;
        case Font_UnderlineEnum.single: _result['Underline'] = 'Single'; break;
        case Font_UnderlineEnum.words: _result['Underline'] = 'Words'; break;
        case Font_UnderlineEnum.double: _result['Underline'] = 'Double'; break;
        case Font_UnderlineEnum.dotted: _result['Underline'] = 'Dotted'; break;
        case Font_UnderlineEnum.thick: _result['Underline'] = 'Thick'; break;
        case Font_UnderlineEnum.dash: _result['Underline'] = 'Dash'; break;
        case Font_UnderlineEnum.dotDash: _result['Underline'] = 'DotDash'; break;
        case Font_UnderlineEnum.dotDotDash: _result['Underline'] = 'DotDotDash'; break;
        case Font_UnderlineEnum.wavy: _result['Underline'] = 'Wavy'; break;
        case Font_UnderlineEnum.dottedHeavy: _result['Underline'] = 'DottedHeavy'; break;
        case Font_UnderlineEnum.dashHeavy: _result['Underline'] = 'DashHeavy'; break;
        case Font_UnderlineEnum.dotDashHeavy: _result['Underline'] = 'DotDashHeavy'; break;
        case Font_UnderlineEnum.dotDotDashHeavy: _result['Underline'] = 'DotDotDashHeavy'; break;
        case Font_UnderlineEnum.wavyHeavy: _result['Underline'] = 'WavyHeavy'; break;
        case Font_UnderlineEnum.dashLong: _result['Underline'] = 'DashLong'; break;
        case Font_UnderlineEnum.wavyDouble: _result['Underline'] = 'WavyDouble'; break;
        case Font_UnderlineEnum.dashLongHeavy: _result['Underline'] = 'DashLongHeavy'; break;
        default: break;
      }
    }

    if (this.underlineColor != null) {
      _result['UnderlineColor'] = this.underlineColor.serialize();
    }
    return _result;
  }
}

/// Gets or sets the locale independent style identifier of the character style applied to this formatting.
enum Font_StyleIdentifierEnum
{ 
  normal,
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  heading6,
  heading7,
  heading8,
  heading9,
  index1,
  index2,
  index3,
  index4,
  index5,
  index6,
  index7,
  index8,
  index9,
  toc1,
  toc2,
  toc3,
  toc4,
  toc5,
  toc6,
  toc7,
  toc8,
  toc9,
  normalIndent,
  footnoteText,
  commentText,
  header,
  footer,
  indexHeading,
  caption,
  tableOfFigures,
  envelopeAddress,
  envelopeReturn,
  footnoteReference,
  commentReference,
  lineNumber,
  pageNumber,
  endnoteReference,
  endnoteText,
  tableOfAuthorities,
  macro,
  toaHeading,
  list,
  listBullet,
  listNumber,
  list2,
  list3,
  list4,
  list5,
  listBullet2,
  listBullet3,
  listBullet4,
  listBullet5,
  listNumber2,
  listNumber3,
  listNumber4,
  listNumber5,
  title,
  closing,
  signature,
  defaultParagraphFont,
  bodyText,
  bodyTextInd,
  listContinue,
  listContinue2,
  listContinue3,
  listContinue4,
  listContinue5,
  messageHeader,
  subtitle,
  salutation,
  date,
  bodyText1I,
  bodyText1I2,
  noteHeading,
  bodyText2,
  bodyText3,
  bodyTextInd2,
  bodyTextInd3,
  blockText,
  hyperlink,
  followedHyperlink,
  strong,
  emphasis,
  documentMap,
  plainText,
  emailSignature,
  htmlTopOfForm,
  htmlBottomOfForm,
  normalWeb,
  htmlAcronym,
  htmlAddress,
  htmlCite,
  htmlCode,
  htmlDefinition,
  htmlKeyboard,
  htmlPreformatted,
  htmlSample,
  htmlTypewriter,
  htmlVariable,
  tableNormal,
  commentSubject,
  noList,
  outlineList1,
  outlineList2,
  outlineList3,
  tableSimple1,
  tableSimple2,
  tableSimple3,
  tableClassic1,
  tableClassic2,
  tableClassic3,
  tableClassic4,
  tableColorful1,
  tableColorful2,
  tableColorful3,
  tableColumns1,
  tableColumns2,
  tableColumns3,
  tableColumns4,
  tableColumns5,
  tableGrid1,
  tableGrid2,
  tableGrid3,
  tableGrid4,
  tableGrid5,
  tableGrid6,
  tableGrid7,
  tableGrid8,
  tableList1,
  tableList2,
  tableList3,
  tableList4,
  tableList5,
  tableList6,
  tableList7,
  tableList8,
  table3DEffects1,
  table3DEffects2,
  table3DEffects3,
  tableContemporary,
  tableElegant,
  tableProfessional,
  tableSubtle1,
  tableSubtle2,
  tableWeb1,
  tableWeb2,
  tableWeb3,
  balloonText,
  tableGrid,
  tableTheme,
  placeholderText,
  noSpacing,
  lightShading,
  lightList,
  lightGrid,
  mediumShading1,
  mediumShading2,
  mediumList1,
  mediumList2,
  mediumGrid1,
  mediumGrid2,
  mediumGrid3,
  darkList,
  colorfulShading,
  colorfulList,
  colorfulGrid,
  lightShadingAccent1,
  lightListAccent1,
  lightGridAccent1,
  mediumShading1Accent1,
  mediumShading2Accent1,
  mediumList1Accent1,
  revision,
  listParagraph,
  quote,
  intenseQuote,
  mediumList2Accent1,
  mediumGrid1Accent1,
  mediumGrid2Accent1,
  mediumGrid3Accent1,
  darkListAccent1,
  colorfulShadingAccent1,
  colorfulListAccent1,
  colorfulGridAccent1,
  lightShadingAccent2,
  lightListAccent2,
  lightGridAccent2,
  mediumShading1Accent2,
  mediumShading2Accent2,
  mediumList1Accent2,
  mediumList2Accent2,
  mediumGrid1Accent2,
  mediumGrid2Accent2,
  mediumGrid3Accent2,
  darkListAccent2,
  colorfulShadingAccent2,
  colorfulListAccent2,
  colorfulGridAccent2,
  lightShadingAccent3,
  lightListAccent3,
  lightGridAccent3,
  mediumShading1Accent3,
  mediumShading2Accent3,
  mediumList1Accent3,
  mediumList2Accent3,
  mediumGrid1Accent3,
  mediumGrid2Accent3,
  mediumGrid3Accent3,
  darkListAccent3,
  colorfulShadingAccent3,
  colorfulListAccent3,
  colorfulGridAccent3,
  lightShadingAccent4,
  lightListAccent4,
  lightGridAccent4,
  mediumShading1Accent4,
  mediumShading2Accent4,
  mediumList1Accent4,
  mediumList2Accent4,
  mediumGrid1Accent4,
  mediumGrid2Accent4,
  mediumGrid3Accent4,
  darkListAccent4,
  colorfulShadingAccent4,
  colorfulListAccent4,
  colorfulGridAccent4,
  lightShadingAccent5,
  lightListAccent5,
  lightGridAccent5,
  mediumShading1Accent5,
  mediumShading2Accent5,
  mediumList1Accent5,
  mediumList2Accent5,
  mediumGrid1Accent5,
  mediumGrid2Accent5,
  mediumGrid3Accent5,
  darkListAccent5,
  colorfulShadingAccent5,
  colorfulListAccent5,
  colorfulGridAccent5,
  lightShadingAccent6,
  lightListAccent6,
  lightGridAccent6,
  mediumShading1Accent6,
  mediumShading2Accent6,
  mediumList1Accent6,
  mediumList2Accent6,
  mediumGrid1Accent6,
  mediumGrid2Accent6,
  mediumGrid3Accent6,
  darkListAccent6,
  colorfulShadingAccent6,
  colorfulListAccent6,
  colorfulGridAccent6,
  subtleEmphasis,
  intenseEmphasis,
  subtleReference,
  intenseReference,
  bookTitle,
  bibliography,
  tocHeading,
  plainTable1,
  plainTable2,
  plainTable3,
  plainTable4,
  plainTable5,
  tableGridLight,
  gridTable1Light,
  gridTable2,
  gridTable3,
  gridTable4,
  gridTable5Dark,
  gridTable6Colorful,
  gridTable7Colorful,
  gridTable1LightAccent1,
  gridTable2Accent1,
  gridTable3Accent1,
  gridTable4Accent1,
  gridTable5DarkAccent1,
  gridTable6ColorfulAccent1,
  gridTable7ColorfulAccent1,
  gridTable1LightAccent2,
  gridTable2Accent2,
  gridTable3Accent2,
  gridTable4Accent2,
  gridTable5DarkAccent2,
  gridTable6ColorfulAccent2,
  gridTable7ColorfulAccent2,
  gridTable1LightAccent3,
  gridTable2Accent3,
  gridTable3Accent3,
  gridTable4Accent3,
  gridTable5DarkAccent3,
  gridTable6ColorfulAccent3,
  gridTable7ColorfulAccent3,
  gridTable1LightAccent4,
  gridTable2Accent4,
  gridTable3Accent4,
  gridTable4Accent4,
  gridTable5DarkAccent4,
  gridTable6ColorfulAccent4,
  gridTable7ColorfulAccent4,
  gridTable1LightAccent5,
  gridTable2Accent5,
  gridTable3Accent5,
  gridTable4Accent5,
  gridTable5DarkAccent5,
  gridTable6ColorfulAccent5,
  gridTable7ColorfulAccent5,
  gridTable1LightAccent6,
  gridTable2Accent6,
  gridTable3Accent6,
  gridTable4Accent6,
  gridTable5DarkAccent6,
  gridTable6ColorfulAccent6,
  gridTable7ColorfulAccent6,
  listTable1Light,
  listTable2,
  listTable3,
  listTable4,
  listTable5Dark,
  listTable6Colorful,
  listTable7Colorful,
  listTable1LightAccent1,
  listTable2Accent1,
  listTable3Accent1,
  listTable4Accent1,
  listTable5DarkAccent1,
  listTable6ColorfulAccent1,
  listTable7ColorfulAccent1,
  listTable1LightAccent2,
  listTable2Accent2,
  listTable3Accent2,
  listTable4Accent2,
  listTable5DarkAccent2,
  listTable6ColorfulAccent2,
  listTable7ColorfulAccent2,
  listTable1LightAccent3,
  listTable2Accent3,
  listTable3Accent3,
  listTable4Accent3,
  listTable5DarkAccent3,
  listTable6ColorfulAccent3,
  listTable7ColorfulAccent3,
  listTable1LightAccent4,
  listTable2Accent4,
  listTable3Accent4,
  listTable4Accent4,
  listTable5DarkAccent4,
  listTable6ColorfulAccent4,
  listTable7ColorfulAccent4,
  listTable1LightAccent5,
  listTable2Accent5,
  listTable3Accent5,
  listTable4Accent5,
  listTable5DarkAccent5,
  listTable6ColorfulAccent5,
  listTable7ColorfulAccent5,
  listTable1LightAccent6,
  listTable2Accent6,
  listTable3Accent6,
  listTable4Accent6,
  listTable5DarkAccent6,
  listTable6ColorfulAccent6,
  listTable7ColorfulAccent6,
  user,
  nil
}

/// Gets or sets the font animation effect.
enum Font_TextEffectEnum
{ 
  none,
  lasVegasLights,
  blinkingBackground,
  sparkleText,
  marchingBlackAnts,
  marchingRedAnts,
  shimmer
}

/// Gets or sets the type of underline applied to the font.
enum Font_UnderlineEnum
{ 
  none,
  single,
  words,
  double,
  dotted,
  thick,
  dash,
  dotDash,
  dotDotDash,
  wavy,
  dottedHeavy,
  dashHeavy,
  dotDashHeavy,
  dotDotDashHeavy,
  wavyHeavy,
  dashLong,
  wavyDouble,
  dashLongHeavy
}

