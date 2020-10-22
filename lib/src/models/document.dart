/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document.dart">
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

/// Represents Words document DTO.
class Document implements ModelBase {
  /// Gets or sets returns document properties.
  DocumentProperties documentProperties;

  /// Gets or sets the name of the file.
  String fileName;

  /// Gets or sets a value indicating whether returns true if the document is encrypted and requires a password to open.
  bool isEncrypted;

  /// Gets or sets a value indicating whether returns true if the document contains a digital signature. This property merely informs that a
  /// digital signature is present on a document, but it does not specify whether the signature is valid or not.
  bool isSigned;

  /// Gets or sets a list of links that originate from this document.
  List<Link> links;

  /// Gets or sets the original format of the document.
  Document_SourceFormatEnum sourceFormat;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('DocumentProperties')) {
      this.documentProperties = new DocumentProperties();
      this.documentProperties.deserialize(json['DocumentProperties']);
    } else {
      this.documentProperties = null;
    }

    if (json.containsKey('FileName')) {
      this.fileName = json['FileName'];
    } else {
      this.fileName = null;
    }

    if (json.containsKey('IsEncrypted')) {
      this.isEncrypted = json['IsEncrypted'];
    } else {
      this.isEncrypted = null;
    }

    if (json.containsKey('IsSigned')) {
      this.isSigned = json['IsSigned'];
    } else {
      this.isSigned = null;
    }

    if (json.containsKey('Links')) {
      // Array processing
      this.links = new List<Link>();
      for(final _element in json['Links']) {
        var _elementValue = new Link();
        _elementValue.deserialize(_element);
        this.links.add(_elementValue);
      }
    } else {
      this.links = null;
    }

    if (json.containsKey('SourceFormat')) {
      switch (json['SourceFormat']) {
        case 'Unknown': this.sourceFormat = Document_SourceFormatEnum.unknown; break;
        case 'Doc': this.sourceFormat = Document_SourceFormatEnum.doc; break;
        case 'Dot': this.sourceFormat = Document_SourceFormatEnum.dot; break;
        case 'DocPreWord60': this.sourceFormat = Document_SourceFormatEnum.docPreWord60; break;
        case 'Docx': this.sourceFormat = Document_SourceFormatEnum.docx; break;
        case 'Docm': this.sourceFormat = Document_SourceFormatEnum.docm; break;
        case 'Dotx': this.sourceFormat = Document_SourceFormatEnum.dotx; break;
        case 'Dotm': this.sourceFormat = Document_SourceFormatEnum.dotm; break;
        case 'FlatOpc': this.sourceFormat = Document_SourceFormatEnum.flatOpc; break;
        case 'Rtf': this.sourceFormat = Document_SourceFormatEnum.rtf; break;
        case 'WordML': this.sourceFormat = Document_SourceFormatEnum.wordML; break;
        case 'Html': this.sourceFormat = Document_SourceFormatEnum.html; break;
        case 'Mhtml': this.sourceFormat = Document_SourceFormatEnum.mhtml; break;
        case 'Epub': this.sourceFormat = Document_SourceFormatEnum.epub; break;
        case 'Text': this.sourceFormat = Document_SourceFormatEnum.text; break;
        case 'Odt': this.sourceFormat = Document_SourceFormatEnum.odt; break;
        case 'Ott': this.sourceFormat = Document_SourceFormatEnum.ott; break;
        case 'Pdf': this.sourceFormat = Document_SourceFormatEnum.pdf; break;
        case 'Xps': this.sourceFormat = Document_SourceFormatEnum.xps; break;
        case 'Tiff': this.sourceFormat = Document_SourceFormatEnum.tiff; break;
        case 'Svg': this.sourceFormat = Document_SourceFormatEnum.svg; break;
        default: this.sourceFormat = null; break;
      }
    } else {
      this.sourceFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.documentProperties != null) {
      _result['DocumentProperties'] = this.documentProperties.serialize();
    }

    if (this.fileName != null) {
      _result['FileName'] = this.fileName;
    }

    if (this.isEncrypted != null) {
      _result['IsEncrypted'] = this.isEncrypted;
    }

    if (this.isSigned != null) {
      _result['IsSigned'] = this.isSigned;
    }

    if (this.links != null) {
      _result['Links'] = this.links.map((_element) => _element.serialize()).toList();
    }

    if (this.sourceFormat != null) {
      switch (this.sourceFormat) {
        case Document_SourceFormatEnum.unknown: _result['SourceFormat'] = 'Unknown'; break;
        case Document_SourceFormatEnum.doc: _result['SourceFormat'] = 'Doc'; break;
        case Document_SourceFormatEnum.dot: _result['SourceFormat'] = 'Dot'; break;
        case Document_SourceFormatEnum.docPreWord60: _result['SourceFormat'] = 'DocPreWord60'; break;
        case Document_SourceFormatEnum.docx: _result['SourceFormat'] = 'Docx'; break;
        case Document_SourceFormatEnum.docm: _result['SourceFormat'] = 'Docm'; break;
        case Document_SourceFormatEnum.dotx: _result['SourceFormat'] = 'Dotx'; break;
        case Document_SourceFormatEnum.dotm: _result['SourceFormat'] = 'Dotm'; break;
        case Document_SourceFormatEnum.flatOpc: _result['SourceFormat'] = 'FlatOpc'; break;
        case Document_SourceFormatEnum.rtf: _result['SourceFormat'] = 'Rtf'; break;
        case Document_SourceFormatEnum.wordML: _result['SourceFormat'] = 'WordML'; break;
        case Document_SourceFormatEnum.html: _result['SourceFormat'] = 'Html'; break;
        case Document_SourceFormatEnum.mhtml: _result['SourceFormat'] = 'Mhtml'; break;
        case Document_SourceFormatEnum.epub: _result['SourceFormat'] = 'Epub'; break;
        case Document_SourceFormatEnum.text: _result['SourceFormat'] = 'Text'; break;
        case Document_SourceFormatEnum.odt: _result['SourceFormat'] = 'Odt'; break;
        case Document_SourceFormatEnum.ott: _result['SourceFormat'] = 'Ott'; break;
        case Document_SourceFormatEnum.pdf: _result['SourceFormat'] = 'Pdf'; break;
        case Document_SourceFormatEnum.xps: _result['SourceFormat'] = 'Xps'; break;
        case Document_SourceFormatEnum.tiff: _result['SourceFormat'] = 'Tiff'; break;
        case Document_SourceFormatEnum.svg: _result['SourceFormat'] = 'Svg'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the original format of the document.
enum Document_SourceFormatEnum
{ 
  unknown,
  doc,
  dot,
  docPreWord60,
  docx,
  docm,
  dotx,
  dotm,
  flatOpc,
  rtf,
  wordML,
  html,
  mhtml,
  epub,
  text,
  odt,
  ott,
  pdf,
  xps,
  tiff,
  svg
}

