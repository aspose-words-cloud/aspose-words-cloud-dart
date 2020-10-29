/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="delete_folder_request.dart">
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

/// Request model for DeleteFolder operation.
class DeleteFolderRequest implements RequestBase {
  /// Folder path e.g. /Folder1s.
  final String path;

  /// Storage name.
  final String storageName;

  /// Enable to delete folders, subfolders and files.
  final bool recursive;

  DeleteFolderRequest(final String this.path, {final String this.storageName = null, final bool this.recursive = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String path = '/words/storage/folder/{path}';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.path == null) {
      throw new ApiException(400, 'Parameter path is required.');
    }
    path = path.replaceAll('{path}', apiClient.serializeToString(this.path));
    if (this.storageName != null) {
      queryParams['storageName'] = apiClient.serializeToString(this.storageName);
    }

    if (this.recursive != null) {
      queryParams['recursive'] = apiClient.serializeToString(this.recursive);
    }

    String url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('DELETE', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return null;
  }
}