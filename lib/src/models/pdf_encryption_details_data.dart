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
  PdfEncryptionDetailsData_EncryptionAlgorithmEnum _encryptionAlgorithm;

  PdfEncryptionDetailsData_EncryptionAlgorithmEnum get encryptionAlgorithm => _encryptionAlgorithm;
  set encryptionAlgorithm(PdfEncryptionDetailsData_EncryptionAlgorithmEnum val) => _encryptionAlgorithm = val;


  /// Gets or sets the owner password for the encrypted PDF document.
  String _ownerPassword;

  String get ownerPassword => _ownerPassword;
  set ownerPassword(String val) => _ownerPassword = val;


  /// Gets or sets the operations that are allowed to a user on the encrypted PDF document.
  List<PdfPermissionsEnum> _permissions;

  List<PdfPermissionsEnum> get permissions => _permissions;
  set permissions(List<PdfPermissionsEnum> val) => _permissions = val;


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
      switch (json['EncryptionAlgorithm'] as String) {
        case 'RC4_40': encryptionAlgorithm = PdfEncryptionDetailsData_EncryptionAlgorithmEnum.rC4_40; break;
        case 'RC4_128': encryptionAlgorithm = PdfEncryptionDetailsData_EncryptionAlgorithmEnum.rC4_128; break;
        default: encryptionAlgorithm = null; break;
      }
    } else {
      encryptionAlgorithm = null;
    }

    if (json.containsKey('OwnerPassword')) {
      ownerPassword = json['OwnerPassword'] as String;
    } else {
      ownerPassword = null;
    }

    if (json.containsKey('Permissions')) {
      // Array processing
      permissions = <PdfPermissionsEnum>[];
      for(final _element in json['Permissions']) {
        switch (_element as String) {
          case 'DisallowAll': permissions.add(PdfPermissionsEnum.disallowAll); break;
          case 'Printing': permissions.add(PdfPermissionsEnum.printing); break;
          case 'ModifyContents': permissions.add(PdfPermissionsEnum.modifyContents); break;
          case 'ContentCopy': permissions.add(PdfPermissionsEnum.contentCopy); break;
          case 'ModifyAnnotations': permissions.add(PdfPermissionsEnum.modifyAnnotations); break;
          case 'FillIn': permissions.add(PdfPermissionsEnum.fillIn); break;
          case 'ContentCopyForAccessibility': permissions.add(PdfPermissionsEnum.contentCopyForAccessibility); break;
          case 'DocumentAssembly': permissions.add(PdfPermissionsEnum.documentAssembly); break;
          case 'HighResolutionPrinting': permissions.add(PdfPermissionsEnum.highResolutionPrinting); break;
          case 'AllowAll': permissions.add(PdfPermissionsEnum.allowAll); break;
          default: break;
        }
      }
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
      switch (encryptionAlgorithm) {
        case PdfEncryptionDetailsData_EncryptionAlgorithmEnum.rC4_40: _result['EncryptionAlgorithm'] = 'RC4_40'; break;
        case PdfEncryptionDetailsData_EncryptionAlgorithmEnum.rC4_128: _result['EncryptionAlgorithm'] = 'RC4_128'; break;
        default: break;
      }
    }

    if (ownerPassword != null) {
      _result['OwnerPassword'] = ownerPassword;
    }

    if (permissions != null) {
      _result['Permissions'] = permissions.map((_element) {
        switch (_element) {
            case PdfPermissionsEnum.disallowAll: return 'DisallowAll';
            case PdfPermissionsEnum.printing: return 'Printing';
            case PdfPermissionsEnum.modifyContents: return 'ModifyContents';
            case PdfPermissionsEnum.contentCopy: return 'ContentCopy';
            case PdfPermissionsEnum.modifyAnnotations: return 'ModifyAnnotations';
            case PdfPermissionsEnum.fillIn: return 'FillIn';
            case PdfPermissionsEnum.contentCopyForAccessibility: return 'ContentCopyForAccessibility';
            case PdfPermissionsEnum.documentAssembly: return 'DocumentAssembly';
            case PdfPermissionsEnum.highResolutionPrinting: return 'HighResolutionPrinting';
            case PdfPermissionsEnum.allowAll: return 'AllowAll';
            default: return null;
        }
      }).toList();
    }

    if (userPassword != null) {
      _result['UserPassword'] = userPassword;
    }
    return _result;
  }
}

/// Gets or sets the encryption algorithm to use.
enum PdfEncryptionDetailsData_EncryptionAlgorithmEnum
{ 
  rC4_40,
  rC4_128
}

