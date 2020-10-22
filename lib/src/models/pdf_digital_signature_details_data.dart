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

/// container class for details of digital signature.
class PdfDigitalSignatureDetailsData implements ModelBase {
  /// Gets or sets certificate's filename using for signing.
  String certificateFilename;

  /// Gets or sets hash algorithm.
  String hashAlgorithm;

  /// Gets or sets location of the signing.
  String location;

  /// Gets or sets reason for the signing.
  String reason;

  /// Gets or sets date of the signing.
  DateTime signatureDate;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('CertificateFilename')) {
      this.certificateFilename = json['CertificateFilename'];
    } else {
      this.certificateFilename = null;
    }

    if (json.containsKey('HashAlgorithm')) {
      this.hashAlgorithm = json['HashAlgorithm'];
    } else {
      this.hashAlgorithm = null;
    }

    if (json.containsKey('Location')) {
      this.location = json['Location'];
    } else {
      this.location = null;
    }

    if (json.containsKey('Reason')) {
      this.reason = json['Reason'];
    } else {
      this.reason = null;
    }

    if (json.containsKey('SignatureDate')) {
      this.signatureDate = DateTime.parse(json['SignatureDate']);
    } else {
      this.signatureDate = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.certificateFilename != null) {
      _result['CertificateFilename'] = this.certificateFilename;
    }

    if (this.hashAlgorithm != null) {
      _result['HashAlgorithm'] = this.hashAlgorithm;
    }

    if (this.location != null) {
      _result['Location'] = this.location;
    }

    if (this.reason != null) {
      _result['Reason'] = this.reason;
    }

    if (this.signatureDate != null) {
      _result['SignatureDate'] = this.signatureDate.toIso8601String();
    }
    return _result;
  }
}


