/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_digital_signature_details_data.dart">
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

/// Container class for details of digital signature.
class PdfDigitalSignatureDetailsData implements ModelBase {
  /// Gets or sets the certificate's filename using for signing.
  String certificateFilename;

  /// Gets or sets the hash algorithm.
  String hashAlgorithm;

  /// Gets or sets the location of the signing.
  String location;

  /// Gets or sets the reason for the signing.
  String reason;

  /// Gets or sets the date of the signing.
  DateTime signatureDate;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PdfDigitalSignatureDetailsData data model.');
    }

    if (json.containsKey('CertificateFilename')) {
      certificateFilename = json['CertificateFilename'] as String;
    } else {
      certificateFilename = null;
    }

    if (json.containsKey('HashAlgorithm')) {
      hashAlgorithm = json['HashAlgorithm'] as String;
    } else {
      hashAlgorithm = null;
    }

    if (json.containsKey('Location')) {
      location = json['Location'] as String;
    } else {
      location = null;
    }

    if (json.containsKey('Reason')) {
      reason = json['Reason'] as String;
    } else {
      reason = null;
    }

    if (json.containsKey('SignatureDate')) {
      signatureDate = DateTime.parse(json['SignatureDate'] as String);
    } else {
      signatureDate = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (certificateFilename != null) {
      _result['CertificateFilename'] = certificateFilename;
    }

    if (hashAlgorithm != null) {
      _result['HashAlgorithm'] = hashAlgorithm;
    }

    if (location != null) {
      _result['Location'] = location;
    }

    if (reason != null) {
      _result['Reason'] = reason;
    }

    if (signatureDate != null) {
      _result['SignatureDate'] = signatureDate.toIso8601String();
    }
    return _result;
  }
}


