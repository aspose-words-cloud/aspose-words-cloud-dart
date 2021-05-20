/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="execute_mail_merge_online_request.dart">
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

/// Request model for ExecuteMailMergeOnline operation.
class ExecuteMailMergeOnlineRequest implements RequestBase {
  /// File with template.
  final ByteData template;

  /// File with mailmerge data.
  final ByteData data;

  /// The flag indicating whether to execute Mail Merge operation with regions.
  final bool withRegions;

  /// The cleanup options.
  final String cleanup;

  /// The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "template" will be used instead.
  final String documentFileName;

  ExecuteMailMergeOnlineRequest(final this.template, final this.data, {final this.withRegions, final this.cleanup, final this.documentFileName});

  @override
  ApiRequestData createRequestData(final ApiClient _apiClient) {
    var _path = '/words/MailMerge';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (withRegions != null) {
      _queryParams['withRegions'] = _apiClient.serializeToString(withRegions);
    }

    if (cleanup != null) {
      _queryParams['cleanup'] = _apiClient.serializeToString(cleanup);
    }

    if (documentFileName != null) {
      _queryParams['documentFileName'] = _apiClient.serializeToString(documentFileName);
    }

    if (template != null) {
      _bodyParts.add(ApiRequestPart(_apiClient.serializeBody(template), 'application/octet-stream', name: 'Template'));
    }
    else {
      throw ApiException(400, 'Parameter template is required.');
    }

    if (data != null) {
      _bodyParts.add(ApiRequestPart(_apiClient.serializeBody(data), 'application/octet-stream', name: 'Data'));
    }
    else {
      throw ApiException(400, 'Parameter data is required.');
    }

    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final ByteData _body) {
    return _body;
  }
}