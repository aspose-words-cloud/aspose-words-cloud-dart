/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="sign_options.dart">
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

/// Container class for digital signature options.
class SignOptions implements ModelBase {
  /// Gets or sets comments on the digital signature. Default value is empty string.
  String? _comments;

  String? get comments => _comments;
  set comments(String? val) => _comments = val;


  /// Gets or sets the password to decrypt source document. Default value is empty string.
  String? _decryptionPassword;

  String? get decryptionPassword => _decryptionPassword;
  set decryptionPassword(String? val) => _decryptionPassword = val;


  /// Gets or sets the class Guid of the signature cryptography provider. Default value is Empty (all zeroes) Guid.
  String? _providerId;

  String? get providerId => _providerId;
  set providerId(String? val) => _providerId = val;


  /// Gets or sets user defined signature line Guid. Default value is Empty (all zeroes) Guid.
  String? _signatureLineId;

  String? get signatureLineId => _signatureLineId;
  set signatureLineId(String? val) => _signatureLineId = val;


  /// Gets or sets the image that will be shown in associated SignatureLine. Default value is empty string.
  String? _signatureLineImageFilename;

  String? get signatureLineImageFilename => _signatureLineImageFilename;
  set signatureLineImageFilename(String? val) => _signatureLineImageFilename = val;


  /// Gets or sets the date of signing. Default value is current time (Now).
  DateTime? _signTime;

  DateTime? get signTime => _signTime;
  set signTime(DateTime? val) => _signTime = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SignOptions data model.');
    }

    if (json.containsKey('Comments')) {
      comments = json['Comments'] as String;
    } else {
      comments = null;
    }

    if (json.containsKey('DecryptionPassword')) {
      decryptionPassword = json['DecryptionPassword'] as String;
    } else {
      decryptionPassword = null;
    }

    if (json.containsKey('ProviderId')) {
      providerId = json['ProviderId'] as String;
    } else {
      providerId = null;
    }

    if (json.containsKey('SignatureLineId')) {
      signatureLineId = json['SignatureLineId'] as String;
    } else {
      signatureLineId = null;
    }

    if (json.containsKey('SignatureLineImageFilename')) {
      signatureLineImageFilename = json['SignatureLineImageFilename'] as String;
    } else {
      signatureLineImageFilename = null;
    }

    if (json.containsKey('SignTime')) {
      signTime = DateTime.parse(json['SignTime'] as String);
    } else {
      signTime = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (comments != null) {
      _result['Comments'] = comments!;
    }

    if (decryptionPassword != null) {
      _result['DecryptionPassword'] = decryptionPassword!;
    }

    if (providerId != null) {
      _result['ProviderId'] = providerId!;
    }

    if (signatureLineId != null) {
      _result['SignatureLineId'] = signatureLineId!;
    }

    if (signatureLineImageFilename != null) {
      _result['SignatureLineImageFilename'] = signatureLineImageFilename!;
    }

    if (signTime != null) {
      _result['SignTime'] = signTime!.toIso8601String();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
  }
}


