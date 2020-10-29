/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="build_report_online_request.dart">
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

import 'dart:convert';
import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for BuildReportOnline operation.
class BuildReportOnlineRequest implements RequestBase {
  /// File with template.
  final ByteData template;

  /// A string providing a data to populate the specified template. The string must be of one of the following types: xml, json, csv.
  final String data;

  /// An object providing a settings of report engine.
  final ReportEngineSettings reportEngineSettings;

  /// This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "template" will be used instead.
  final String documentFileName;

  BuildReportOnlineRequest(final ByteData this.template, final String this.data, final ReportEngineSettings this.reportEngineSettings, {final String this.documentFileName = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String path = '/words/buildReport';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.documentFileName != null) {
      queryParams['documentFileName'] = apiClient.serializeToString(this.documentFileName);
    }

    if (this.template != null) {
      bodyParts.add(new ApiRequestPart(apiClient.serializeBody(this.template), 'application/octet-stream', name: 'Template'));
    }
    else {
      throw new ApiException(400, 'Parameter template is required.');
    }

    if (this.data != null) {
      bodyParts.add(new ApiRequestPart(apiClient.serializeBody(this.data), 'application/json', name: 'Data'));
    }
    else {
      throw new ApiException(400, 'Parameter data is required.');
    }

    if (this.reportEngineSettings != null) {
      bodyParts.add(new ApiRequestPart(apiClient.serializeBody(this.reportEngineSettings), 'application/json', name: 'ReportEngineSettings'));
    }
    else {
      throw new ApiException(400, 'Parameter reportEngineSettings is required.');
    }

    String url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}