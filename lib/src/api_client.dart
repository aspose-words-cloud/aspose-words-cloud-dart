/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="api_client.dart">
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
import '../aspose_words_cloud.dart';
import './api_request_data.dart';
import './api_request_part.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

class ApiClient {
  String _authToken = null;

  final Configuration configuration;

  ApiClient(final Configuration this.configuration);

  void _handleResponse(final http.Response response) {
    if (response.statusCode != 200) {
      throw ApiException(response.statusCode, response.body ?? response.reasonPhrase);
    }
  }

  void _handleStreamedResponse(final http.StreamedResponse response) async {
    if (response.statusCode != 200) {
      throw ApiException(response.statusCode, await response.stream.bytesToString() ?? response.reasonPhrase);
    }
  }

  Future<String> _getAuthToken() async {
    if (_authToken == null) {
      _updateAuthToken();
    }

    return _authToken;
  }

  void _updateAuthToken() async {
    final String url = this.configuration.baseUrl + '/connect/token';
    final String data = 'grant_type=client_credentials&client_id=${this.configuration.appSid}&client_secret=${this.configuration.appKey}';
    final Map<String, String> headers = {'Content-Type' : 'application/x-www-form-urlencoded'};
    final http.Response response = await http.post(url, headers: headers, body: data);
    _handleResponse(response);

    final Map<String, dynamic> json = jsonDecode(response.body);
    _authToken = '${json['token_type']} ${json['access_token']}';
  }

  String applyQueryParams(String url, Map<String, String> queryParams) {
    if (queryParams.isEmpty) {
      return url;
    }

    bool firstAppend = true;
    queryParams.forEach((key, value) {
      url = '${url}${firstAppend ? '?' : '&'}${key}=${Uri.encodeQueryComponent(value)}';
      firstAppend = false;
    });

    return url;
  }

  String serializeToString(final dynamic value) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      return jsonEncode(value.serialize());
    }
    else if (value is String) {
      return value;
    }
    else if (value is int) {
      return value.toString();
    }
    else if (value is bool) {
      return value ? 'true' : 'false';
    }
    else if (value is double) {
      return value.toString().replaceFirst(',', '.');
    }
    else {
      throw new ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ByteData serializeBody(final dynamic value) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      var json = jsonEncode(value.serialize());
      return ByteData.view(utf8.encoder.convert(json).buffer);
    }
    else if (value is ByteData) {
      return value;
    }
    else if (value is String) {
      return ByteData.view(utf8.encoder.convert('"' + value + '"').buffer);
    }
    else if (value is int) {
      return ByteData.view(utf8.encoder.convert(value.toString()).buffer);
    }
    else if (value is bool) {
      return ByteData.view(utf8.encoder.convert(value ? 'true' : 'false').buffer);
    }
    else if (value is double) {
      return ByteData.view(utf8.encoder.convert(value.toString().replaceFirst(',', '.')).buffer);
    }
    else {
      throw new ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ByteData serializeBodyParts(final List<ApiRequestPart> bodyParts, Map<String, String> headers) {
    ByteData body = null;
    if (bodyParts.length == 1) {
      body = bodyParts.first.data;
      headers['Content-Type'] = bodyParts.first.mimeType;
    } else if (bodyParts.length > 1) {
      String boundary = Uuid().v4();
      body = this.serializeMultipart(bodyParts, boundary);
      headers['Content-Type'] = 'multipart/form-data; boundary="${boundary}"';
    }

    return body;
  }

  ByteData serializeMultipart(final List<ApiRequestPart> bodyParts, String boundary) {
    var needsClrf = false;
    var formBody = new List<Uint8List>();
    for (final formParam in bodyParts) {
      if (needsClrf) {
        formBody.add(utf8.encoder.convert('\r\n'));
      }
      needsClrf = true;

      formBody.add(utf8.encoder.convert('--${boundary}\r\n'));
      formBody.add(utf8.encoder.convert('Content-Type: ${formParam.mimeType}\r\n'));
      formBody.add(utf8.encoder.convert('Content-Disposition: form-data'));

      if (formParam.name != null) {
        formBody.add(utf8.encoder.convert('; name="${formParam.name}"'));
      }

      formBody.add(utf8.encoder.convert('\r\n\r\n'));
      formBody.add(formParam.data.buffer.asUint8List(formParam.data.offsetInBytes, formParam.data.lengthInBytes));
    }
    formBody.add(utf8.encoder.convert('\r\n--${boundary}--\r\n'));
    return this.toByteData(formBody);
  }

  ByteData toByteData(final List<Uint8List> bufferStream) {
    var wholeSize = 0;
    var fillIndex = 0;
    bufferStream.forEach((element) => wholeSize += element.buffer.lengthInBytes);
    var fullBuffer = new Uint8List(wholeSize);
    bufferStream.forEach((element) {
      fullBuffer.setAll(fillIndex, element);
      fillIndex += element.lengthInBytes;
    });

    return ByteData.view(fullBuffer.buffer);
  }

  Future<dynamic> call(final RequestBase request) async {
    var requestData = request.createRequestData(this);
    http.StreamedResponse response = null;
    try {
        response = await this._callInternal(requestData);
    }
    on ApiException catch(ex) {
      if (ex.status_code == 401) {
        await this._updateAuthToken();
        response = await this._callInternal(requestData);
      } else {
        rethrow;
      }
    }

    if (response == null) {
      return null;
    }

    var responseBytes = await response.stream.toBytes();
    return request.deserializeResponse(ByteData.view(responseBytes.buffer));
  }

  Future<http.StreamedResponse> _callInternal(final ApiRequestData requestData) async {
    var httpRequest = new http.Request(requestData.method, Uri.parse(requestData.url));
    httpRequest.headers['x-aspose-client'] = 'dart sdk';
    httpRequest.headers['x-aspose-client-version'] = '20.9';
    httpRequest.headers['Authorization'] = await this._getAuthToken();
    if (requestData.headers != null) {
      httpRequest.headers.addAll(requestData.headers);
    }

    if (requestData.body != null) {
      httpRequest.bodyBytes = requestData.body.buffer.asUint8List(requestData.body.offsetInBytes, requestData.body.lengthInBytes);
    }

    var response = await httpRequest.send();
    await _handleStreamedResponse(response);
    return response;
  }
}