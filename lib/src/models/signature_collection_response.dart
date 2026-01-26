/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="signature_collection_response.dart">
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

/// The REST response with a document signature collection.
/// This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
class SignatureCollectionResponse extends WordsResponse {
  /// Gets or sets a value indicating whether all signatures are valid. Returns true if there is no signatures.
  bool? _isValid;

  bool? get isValid => _isValid;
  set isValid(bool? val) => _isValid = val;


  /// Gets or sets signatures.
  List<Signature?>? _signatures;

  List<Signature?>? get signatures => _signatures;
  set signatures(List<Signature?>? val) => _signatures = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SignatureCollectionResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('IsValid')) {
      isValid = json['IsValid'] as bool;
    } else {
      isValid = null;
    }

    if (json.containsKey('Signatures')) {
      // Array processing
      signatures = <Signature>[];
      for(final _element in json['Signatures']) {
        signatures!.add(ModelBase.createInstance< Signature >(_element as Map<String, dynamic>));
      }
    } else {
      signatures = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isValid != null) {
      _result['IsValid'] = isValid!;
    }

    if (signatures != null) {
      _result['Signatures'] = signatures!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (isValid == null)
    {
        throw new ApiException(400, 'Property IsValid in SignatureCollectionResponse is required.');
    }

    for (final elementSignatures in signatures ?? [])
    {
        elementSignatures?.validate();
    }

  }
}


