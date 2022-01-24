/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_encryption_details_data.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// Container class for details of encryption.
class PdfEncryptionDetailsData implements ModelBase {
  /// Gets or sets the encryption algorithm to use.
  String _encryptionAlgorithm;

  String get encryptionAlgorithm => _encryptionAlgorithm;
  set encryptionAlgorithm(String val) => _encryptionAlgorithm = val;


  /// Gets or sets the owner password for the encrypted PDF document.
  String _ownerPassword;

  String get ownerPassword => _ownerPassword;
  set ownerPassword(String val) => _ownerPassword = val;


  /// Gets or sets the operations that are allowed to a user on the encrypted PDF document.
  String _permissions;

  String get permissions => _permissions;
  set permissions(String val) => _permissions = val;


  /// Gets or sets the user password required for opening the encrypted PDF document.
  String _userPassword;

  String get userPassword => _userPassword;
  set userPassword(String val) => _userPassword = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PdfEncryptionDetailsData data model.');
    }

    if (json.containsKey('EncryptionAlgorithm')) {
      encryptionAlgorithm = json['EncryptionAlgorithm'] as String;
    } else {
      encryptionAlgorithm = null;
    }

    if (json.containsKey('OwnerPassword')) {
      ownerPassword = json['OwnerPassword'] as String;
    } else {
      ownerPassword = null;
    }

    if (json.containsKey('Permissions')) {
      permissions = json['Permissions'] as String;
    } else {
      permissions = null;
    }

    if (json.containsKey('UserPassword')) {
      userPassword = json['UserPassword'] as String;
    } else {
      userPassword = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (encryptionAlgorithm != null) {
      _result['EncryptionAlgorithm'] = encryptionAlgorithm;
    }

    if (ownerPassword != null) {
      _result['OwnerPassword'] = ownerPassword;
    }

    if (permissions != null) {
      _result['Permissions'] = permissions;
    }

    if (userPassword != null) {
      _result['UserPassword'] = userPassword;
    }
    return _result;
  }
}


