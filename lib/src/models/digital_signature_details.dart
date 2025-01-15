/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="digital_signature_details.dart">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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
class DigitalSignatureDetails implements ModelBase {
  /// Gets or sets the certificate's filename using for signing.
  String? _certificateFilename;

  String? get certificateFilename => _certificateFilename;
  set certificateFilename(String? val) => _certificateFilename = val;


  /// Gets or sets signing options.
  SignOptions? _signOptions;

  SignOptions? get signOptions => _signOptions;
  set signOptions(SignOptions? val) => _signOptions = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DigitalSignatureDetails data model.');
    }

    if (json.containsKey('CertificateFilename')) {
      certificateFilename = json['CertificateFilename'] as String;
    } else {
      certificateFilename = null;
    }

    if (json.containsKey('SignOptions')) {
      signOptions = ModelBase.createInstance< SignOptions >(json['SignOptions'] as Map<String, dynamic>);
    } else {
      signOptions = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (certificateFilename != null) {
      _result['CertificateFilename'] = certificateFilename!;
    }

    if (signOptions != null) {
      _result['SignOptions'] = signOptions!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    signOptions?.validate();

  }
}


