/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="move_folder_request.dart">
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

/// Request model for MoveFolder operation.
class MoveFolderRequest implements RequestBase {
  /// Destination folder path to move to e.g '/dst'.
  final String destPath;

  /// Source folder path e.g. /Folder1.
  final String srcPath;

  /// Source storage name.
  final String srcStorageName;

  /// Destination storage name.
  final String destStorageName;

  MoveFolderRequest(final String this.destPath, final String this.srcPath, {final String this.srcStorageName = null, final String this.destStorageName = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String path = '/words/storage/folder/move/{srcPath}';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.srcPath == null) {
      throw new ApiException(400, 'Parameter srcPath is required.');
    }
    path = path.replaceAll('{srcPath}', apiClient.serializeToString(this.srcPath));
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

    String url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return null;
  }
}