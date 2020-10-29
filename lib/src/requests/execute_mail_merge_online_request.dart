/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="execute_mail_merge_online_request.dart">
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

  /// With regions flag.
  final bool withRegions;

  /// Clean up options.
  final String cleanup;

  /// This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "template" will be used instead.
  final String documentFileName;

  ExecuteMailMergeOnlineRequest(final this.template, final this.data, {final this.withRegions, final this.cleanup, final this.documentFileName});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/MailMerge';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (withRegions != null) {
      queryParams['withRegions'] = apiClient.serializeToString(withRegions);
    }

    if (cleanup != null) {
      queryParams['cleanup'] = apiClient.serializeToString(cleanup);
    }

    if (documentFileName != null) {
      queryParams['documentFileName'] = apiClient.serializeToString(documentFileName);
    }

    if (template != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(template), 'application/octet-stream', name: 'Template'));
    }
    else {
      throw ApiException(400, 'Parameter template is required.');
    }

    if (data != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(data), 'application/octet-stream', name: 'Data'));
    }
    else {
      throw ApiException(400, 'Parameter data is required.');
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}