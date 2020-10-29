/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="protection_request.dart">
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

/// Request on changing of protection.
class ProtectionRequest implements ModelBase {
  /// Gets or sets new password.
  String newPassword;

  /// Gets or sets current password.
  String password;

  /// Gets or sets new type of protection.
  String protectionType;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('NewPassword')) {
      newPassword = json['NewPassword'];
    } else {
      newPassword = null;
    }

    if (json.containsKey('Password')) {
      password = json['Password'];
    } else {
      password = null;
    }

    if (json.containsKey('ProtectionType')) {
      protectionType = json['ProtectionType'];
    } else {
      protectionType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (newPassword != null) {
      _result['NewPassword'] = newPassword;
    }

    if (password != null) {
      _result['Password'] = password;
    }

    if (protectionType != null) {
      _result['ProtectionType'] = protectionType;
    }
    return _result;
  }
}


