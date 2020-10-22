/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="move_file_request.dart">
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

/// Request model for MoveFile operation.
class MoveFileRequest implements RequestBase {
  /// Destination file path e.g. '/dest.ext'.
  final String destPath;

  /// Source file's path e.g. '/Folder 1/file.ext' or '/Bucket/Folder 1/file.ext'.
  final String srcPath;

  /// Source storage name.
  final String srcStorageName;

  /// Destination storage name.
  final String destStorageName;

  /// File version ID to move.
  final String versionId;

  MoveFileRequest(final String this.destPath, final String this.srcPath, {final String this.srcStorageName = null, final String this.destStorageName = null, final String this.versionId = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String url = apiClient.configuration.getApiRootUrl() + '/words/storage/file/move/{srcPath}';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.srcPath == null) {
      throw new ApiException(400, 'Parameter srcPath is required.');
    }
    url = url.replaceAll('{srcPath}', apiClient.serializeToString(this.srcPath));
    if (this.destPath != null) {
      queryParams['destPath'] = apiClient.serializeToString(this.destPath);
    }
    else {
      throw new ApiException(400, 'Parameter destPath is required.');
    }

    if (this.srcStorageName != null) {
      queryParams['srcStorageName'] = apiClient.serializeToString(this.srcStorageName);
    }

    if (this.destStorageName != null) {
      queryParams['destStorageName'] = apiClient.serializeToString(this.destStorageName);
    }

    if (this.versionId != null) {
      queryParams['versionId'] = apiClient.serializeToString(this.versionId);
    }

    url = apiClient.applyQueryParams(url, queryParams);
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return null;
  }
}