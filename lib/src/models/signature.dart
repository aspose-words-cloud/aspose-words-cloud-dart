/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="signature.dart">
 *   Copyright (c) 2024 Aspose.Words for Cloud
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

/// The REST response with a document signature collection.
/// This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
class Signature implements ModelBase {
  /// Gets or sets the signing purpose comment.
  String? _comments;

  String? get comments => _comments;
  set comments(String? val) => _comments = val;


  /// Gets or sets the subject distinguished name of the certificate isuuer.
  String? _issuerName;

  String? get issuerName => _issuerName;
  set issuerName(String? val) => _issuerName = val;


  /// Gets or sets a value indicating whether this digital signature is valid.
  bool? _isValid;

  bool? get isValid => _isValid;
  set isValid(bool? val) => _isValid = val;


  /// Gets or sets the type of the digital signature.
  Signature_SignatureTypeEnum? _signatureType;

  Signature_SignatureTypeEnum? get signatureType => _signatureType;
  set signatureType(Signature_SignatureTypeEnum? val) => _signatureType = val;


  /// Gets or sets an array of bytes representing a signature value as base64 string.
  String? _signatureValue;

  String? get signatureValue => _signatureValue;
  set signatureValue(String? val) => _signatureValue = val;


  /// Gets or sets the time the document was signed.
  DateTime? _signTime;

  DateTime? get signTime => _signTime;
  set signTime(DateTime? val) => _signTime = val;


  /// Gets or sets the subject distinguished name of the certificate that was used to sign the document.
  String? _subjectName;

  String? get subjectName => _subjectName;
  set subjectName(String? val) => _subjectName = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Signature data model.');
    }

    if (json.containsKey('Comments')) {
      comments = json['Comments'] as String;
    } else {
      comments = null;
    }

    if (json.containsKey('IssuerName')) {
      issuerName = json['IssuerName'] as String;
    } else {
      issuerName = null;
    }

    if (json.containsKey('IsValid')) {
      isValid = json['IsValid'] as bool;
    } else {
      isValid = null;
    }

    if (json.containsKey('SignatureType')) {
      switch (json['SignatureType'] as String) {
        case 'Unknown': signatureType = Signature_SignatureTypeEnum.unknown; break;
        case 'CryptoApi': signatureType = Signature_SignatureTypeEnum.cryptoApi; break;
        case 'XmlDsig': signatureType = Signature_SignatureTypeEnum.xmlDsig; break;
        default: signatureType = null; break;
      }
    } else {
      signatureType = null;
    }

    if (json.containsKey('SignatureValue')) {
      signatureValue = json['SignatureValue'] as String;
    } else {
      signatureValue = null;
    }

    if (json.containsKey('SignTime')) {
      signTime = DateTime.parse(json['SignTime'] as String);
    } else {
      signTime = null;
    }

    if (json.containsKey('SubjectName')) {
      subjectName = json['SubjectName'] as String;
    } else {
      subjectName = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (comments != null) {
      _result['Comments'] = comments!;
    }

    if (issuerName != null) {
      _result['IssuerName'] = issuerName!;
    }

    if (isValid != null) {
      _result['IsValid'] = isValid!;
    }

    if (signatureType != null) {
      switch (signatureType!) {
        case Signature_SignatureTypeEnum.unknown: _result['SignatureType'] = 'Unknown'; break;
        case Signature_SignatureTypeEnum.cryptoApi: _result['SignatureType'] = 'CryptoApi'; break;
        case Signature_SignatureTypeEnum.xmlDsig: _result['SignatureType'] = 'XmlDsig'; break;
        default: break;
      }
    }

    if (signatureValue != null) {
      _result['SignatureValue'] = signatureValue!;
    }

    if (signTime != null) {
      _result['SignTime'] = signTime!.toIso8601String();
    }

    if (subjectName != null) {
      _result['SubjectName'] = subjectName!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (isValid == null)
    {
        throw new ApiException(400, 'Property IsValid in Signature is required.');
    }
    if (signatureType == null)
    {
        throw new ApiException(400, 'Property SignatureType in Signature is required.');
    }
    if (signTime == null)
    {
        throw new ApiException(400, 'Property SignTime in Signature is required.');
    }
  }
}

/// Gets or sets the type of the digital signature.
enum Signature_SignatureTypeEnum
{ 
  unknown,
  cryptoApi,
  xmlDsig
}

