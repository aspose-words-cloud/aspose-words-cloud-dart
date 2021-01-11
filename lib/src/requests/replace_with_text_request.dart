/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="replace_with_text_request.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

import 'dart:convert';
import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for ReplaceWithText operation.
class ReplaceWithTextRequest implements RequestBase {
  /// The filename of the input document.
  final String name;

  /// The range start identifier.
  final String rangeStartIdentifier;

  /// Model with text for replacement.
  final ReplaceRange rangeText;

  /// The range end identifier.
  final String rangeEndIdentifier;

  /// Original document folder.
  final String folder;

  /// Original document storage.
  final String storage;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  /// Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
  final String destFileName;

  ReplaceWithTextRequest(final this.name, final this.rangeStartIdentifier, final this.rangeText, {final this.rangeEndIdentifier, final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    _path = _path.replaceAll('{name}', apiClient.serializeToString(name));

    if (rangeStartIdentifier == null) {
      throw ApiException(400, 'Parameter rangeStartIdentifier is required.');
    }
    _path = _path.replaceAll('{rangeStartIdentifier}', apiClient.serializeToString(rangeStartIdentifier));
    _path = _path.replaceAll('{rangeEndIdentifier}', apiClient.serializeToString(rangeEndIdentifier) ?? '');
    if (folder != null) {
      _queryParams['folder'] = apiClient.serializeToString(folder);
    }

    if (storage != null) {
      _queryParams['storage'] = apiClient.serializeToString(storage);
    }

    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['password'] = apiClient.serializeToString(password);
    }

    if (destFileName != null) {
      _queryParams['destFileName'] = apiClient.serializeToString(destFileName);
    }

    if (rangeText != null) {
      _bodyParts.add(ApiRequestPart(apiClient.serializeBody(rangeText), 'application/json'));
    }
    else {
      throw ApiException(400, 'Parameter rangeText is required.');
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('POST', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = DocumentResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json as Map<String, dynamic>);
    return _result;
  }
}