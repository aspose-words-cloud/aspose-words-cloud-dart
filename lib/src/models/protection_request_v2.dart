/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="protection_request_v2.dart">
 *   Copyright (c) 2026 Aspose.Words for Cloud
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

/// Request on changing of protection.
class ProtectionRequestV2 extends ProtectionRequestBase {
  /// Gets or sets the new password for the document protection.
  /// This property is required, but empty value is allowed.
  String? _protectionPassword;

  String? get protectionPassword => _protectionPassword;
  set protectionPassword(String? val) => _protectionPassword = val;


  /// Gets or sets the new type of the document protection.
  ProtectionRequestV2_ProtectionTypeEnum? _protectionType;

  ProtectionRequestV2_ProtectionTypeEnum? get protectionType => _protectionType;
  set protectionType(ProtectionRequestV2_ProtectionTypeEnum? val) => _protectionType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ProtectionRequestV2 data model.');
    }

    super.deserialize(json);
    if (json.containsKey('ProtectionPassword')) {
      protectionPassword = json['ProtectionPassword'] as String;
    } else {
      protectionPassword = null;
    }

    if (json.containsKey('ProtectionType')) {
      switch (json['ProtectionType'] as String) {
        case 'AllowOnlyRevisions': protectionType = ProtectionRequestV2_ProtectionTypeEnum.allowOnlyRevisions; break;
        case 'AllowOnlyComments': protectionType = ProtectionRequestV2_ProtectionTypeEnum.allowOnlyComments; break;
        case 'AllowOnlyFormFields': protectionType = ProtectionRequestV2_ProtectionTypeEnum.allowOnlyFormFields; break;
        case 'ReadOnly': protectionType = ProtectionRequestV2_ProtectionTypeEnum.readOnly; break;
        case 'NoProtection': protectionType = ProtectionRequestV2_ProtectionTypeEnum.noProtection; break;
        default: protectionType = null; break;
      }
    } else {
      protectionType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (protectionPassword != null) {
      _result['ProtectionPassword'] = protectionPassword!;
    }

    if (protectionType != null) {
      switch (protectionType!) {
        case ProtectionRequestV2_ProtectionTypeEnum.allowOnlyRevisions: _result['ProtectionType'] = 'AllowOnlyRevisions'; break;
        case ProtectionRequestV2_ProtectionTypeEnum.allowOnlyComments: _result['ProtectionType'] = 'AllowOnlyComments'; break;
        case ProtectionRequestV2_ProtectionTypeEnum.allowOnlyFormFields: _result['ProtectionType'] = 'AllowOnlyFormFields'; break;
        case ProtectionRequestV2_ProtectionTypeEnum.readOnly: _result['ProtectionType'] = 'ReadOnly'; break;
        case ProtectionRequestV2_ProtectionTypeEnum.noProtection: _result['ProtectionType'] = 'NoProtection'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (protectionPassword == null)
    {
        throw new ApiException(400, 'Property ProtectionPassword in ProtectionRequestV2 is required.');
    }
    if (protectionType == null)
    {
        throw new ApiException(400, 'Property ProtectionType in ProtectionRequestV2 is required.');
    }
  }
}

/// Gets or sets the new type of the document protection.
enum ProtectionRequestV2_ProtectionTypeEnum
{ 
  allowOnlyRevisions,
  allowOnlyComments,
  allowOnlyFormFields,
  readOnly,
  noProtection
}

