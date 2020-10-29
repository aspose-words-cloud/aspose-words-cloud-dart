/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="upload_file_request.dart">
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

/// Request model for UploadFile operation.
class UploadFileRequest implements RequestBase {
  /// File to upload.
  final ByteData fileContent;

  /// Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
  /// If the content is multipart and path does not contains the file name it tries to get them from filename parameter
  /// from Content-Disposition header.
  final String path;

  /// Storage name.
  final String storageName;

  UploadFileRequest(final this.fileContent, final this.path, {final this.storageName});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/storage/file/{path}';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (path == null) {
      throw ApiException(400, 'Parameter path is required.');
    }
    path = path.replaceAll('{path}', apiClient.serializeToString(path));
    if (storageName != null) {
      queryParams['storageName'] = apiClient.serializeToString(storageName);
    }

    if (fileContent != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(fileContent), 'application/octet-stream', name: 'FileContent'));
    }
    else {
      throw ApiException(400, 'Parameter fileContent is required.');
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = FilesUploadResult();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}