/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="render_page_online_request.dart">
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

/// Request model for RenderPageOnline operation.
class RenderPageOnlineRequest implements RequestBase {
  /// The document.
  final ByteData document;

  /// The index of the page.
  final int pageIndex;

  /// The destination format.
  final String format;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  RenderPageOnlineRequest(final this.document, final this.pageIndex, final this.format, {final this.loadEncoding, final this.password, final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/online/get/pages/{pageIndex}/render';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (pageIndex == null) {
      throw ApiException(400, 'Parameter pageIndex is required.');
    }
    _path = _path.replaceAll('{pageIndex}', apiClient.serializeToString(pageIndex));
    if (format != null) {
      _queryParams['format'] = apiClient.serializeToString(format);
    }
    else {
      throw ApiException(400, 'Parameter format is required.');
    }

    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['password'] = apiClient.serializeToString(password);
    }

    if (fontsLocation != null) {
      _queryParams['fontsLocation'] = apiClient.serializeToString(fontsLocation);
    }

    if (document != null) {
      _bodyParts.add(ApiRequestPart(apiClient.serializeBody(document), 'application/octet-stream', name: 'Document'));
    }
    else {
      throw ApiException(400, 'Parameter document is required.');
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}