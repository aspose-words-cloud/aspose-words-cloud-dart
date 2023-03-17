/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="batch_request.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

import 'package:uuid/uuid.dart';

import './request_base.dart';
import '../api_client.dart';
import '../api_request_data.dart';

class BatchRequest {
  late String requestId;
  late String dependsOn;
  final RequestBase request;

  BatchRequest(this.request) {
    requestId = Uuid().v4();
    dependsOn = '';
  }

  String getRequestId() {
    return requestId;
  }

  void setDependsOn(BatchRequest request) {
    dependsOn = request.requestId;
  }

  ByteData resultOf() {
    return ByteData.view(utf8.encoder.convert('resultOf(' + requestId + ')').buffer);
  }

  RequestBase getRequest() {
    return request;
  }

  Future<ApiRequestData> createRequestData(final ApiClient _apiClient) async {
    var requestData = await request.createRequestData(_apiClient);
    requestData.headers['RequestId'] = requestId;
    if (dependsOn.isNotEmpty) {
      requestData.headers['DependsOn'] = dependsOn;
    }
    return requestData;
  }
}