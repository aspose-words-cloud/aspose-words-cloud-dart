/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_as_range_online_request.dart">
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

import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for SaveAsRangeOnline operation.
class SaveAsRangeOnlineRequest implements RequestBase {
  /// The document.
  final ByteData document;

  /// The range start identifier.
  final String rangeStartIdentifier;

  /// Parameters of a new document.
  final RangeDocument documentParameters;

  /// The range end identifier.
  final String rangeEndIdentifier;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  SaveAsRangeOnlineRequest(final this.document, final this.rangeStartIdentifier, final this.documentParameters, {final this.rangeEndIdentifier, final this.loadEncoding, final this.password});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/online/post/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (rangeStartIdentifier == null) {
      throw ApiException(400, 'Parameter rangeStartIdentifier is required.');
    }
    _path = _path.replaceAll('{rangeStartIdentifier}', apiClient.serializeToString(rangeStartIdentifier));
    _path = _path.replaceAll('{rangeEndIdentifier}', apiClient.serializeToString(rangeEndIdentifier) ?? '');
    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['password'] = apiClient.serializeToString(password);
    }

    if (document != null) {
      _bodyParts.add(ApiRequestPart(apiClient.serializeBody(document), 'application/octet-stream', name: 'Document'));
    }
    else {
      throw ApiException(400, 'Parameter document is required.');
    }

    if (documentParameters != null) {
      _bodyParts.add(ApiRequestPart(apiClient.serializeBody(documentParameters), 'application/json', name: 'DocumentParameters'));
    }
    else {
      throw ApiException(400, 'Parameter documentParameters is required.');
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = SaveAsRangeOnlineResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json as Map<String, dynamic>);
    return _result;
  }
}