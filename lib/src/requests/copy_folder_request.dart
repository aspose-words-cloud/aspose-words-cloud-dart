/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="copy_folder_request.dart">
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

/// Request model for CopyFolder operation.
class CopyFolderRequest implements RequestBase {
  /// Destination folder path e.g. '/dst'.
  final String destPath;

  /// Source folder path e.g. /Folder1.
  final String srcPath;

  /// Source storage name.
  final String srcStorageName;

  /// Destination storage name.
  final String destStorageName;

  CopyFolderRequest(final this.destPath, final this.srcPath, {final this.srcStorageName, final this.destStorageName});

  @override
  ApiRequestData createRequestData(final ApiClient _apiClient) {
    var _path = '/words/storage/folder/copy/{srcPath}';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (srcPath == null) {
      throw ApiException(400, 'Parameter srcPath is required.');
    }
    _path = _path.replaceAll('{srcPath}', _apiClient.serializeToString(srcPath));
    if (destPath != null) {
      _queryParams['destPath'] = _apiClient.serializeToString(destPath);
    }
    else {
      throw ApiException(400, 'Parameter destPath is required.');
    }

    if (srcStorageName != null) {
      _queryParams['srcStorageName'] = _apiClient.serializeToString(srcStorageName);
    }

    if (destStorageName != null) {
      _queryParams['destStorageName'] = _apiClient.serializeToString(destStorageName);
    }

    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final ByteData _body) {
    return null;
  }
}