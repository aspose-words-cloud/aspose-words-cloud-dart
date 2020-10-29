/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="modification_operation_result.dart">
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

/// result of the operation which modifies the original document and saves the result.
class ModificationOperationResult implements ModelBase {
  /// Gets or sets link to the dest document (result of the modification operation).
  FileLink dest;

  /// Gets or sets link to the source document (source for the modification operation).
  FileLink source;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Dest')) {
      dest = FileLink();
      dest.deserialize(json['Dest']);
    } else {
      dest = null;
    }

    if (json.containsKey('Source')) {
      source = FileLink();
      source.deserialize(json['Source']);
    } else {
      source = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (dest != null) {
      _result['Dest'] = dest.serialize();
    }

    if (source != null) {
      _result['Source'] = source.serialize();
    }
    return _result;
  }
}


