/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="delete_table_cell_request.dart">
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

/// Request model for DeleteTableCell operation.
class DeleteTableCellRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Path to table row.
  final String tableRowPath;

  /// Object index.
  final int index;

  /// Original document folder.
  final String folder;

  /// Original document storage.
  final String storage;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  /// Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
  final String destFileName;

  /// Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
  final String revisionAuthor;

  /// The date and time to use for revisions.
  final String revisionDateTime;

  DeleteTableCellRequest(final String this.name, final String this.tableRowPath, final int this.index, {final String this.folder = null, final String this.storage = null, final String this.loadEncoding = null, final String this.password = null, final String this.destFileName = null, final String this.revisionAuthor = null, final String this.revisionDateTime = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String url = apiClient.configuration.getApiRootUrl() + '/words/{name}/{tableRowPath}/cells/{index}';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.name == null) {
      throw new ApiException(400, 'Parameter name is required.');
    }
    url = url.replaceAll('{name}', apiClient.serializeToString(this.name));

    if (this.tableRowPath == null) {
      throw new ApiException(400, 'Parameter tableRowPath is required.');
    }
    url = url.replaceAll('{tableRowPath}', apiClient.serializeToString(this.tableRowPath));

    if (this.index == null) {
      throw new ApiException(400, 'Parameter index is required.');
    }
    url = url.replaceAll('{index}', apiClient.serializeToString(this.index));
    if (this.folder != null) {
      queryParams['folder'] = apiClient.serializeToString(this.folder);
    }

    if (this.storage != null) {
      queryParams['storage'] = apiClient.serializeToString(this.storage);
    }

    if (this.loadEncoding != null) {
      queryParams['loadEncoding'] = apiClient.serializeToString(this.loadEncoding);
    }

    if (this.password != null) {
      queryParams['password'] = apiClient.serializeToString(this.password);
    }

    if (this.destFileName != null) {
      queryParams['destFileName'] = apiClient.serializeToString(this.destFileName);
    }

    if (this.revisionAuthor != null) {
      queryParams['revisionAuthor'] = apiClient.serializeToString(this.revisionAuthor);
    }

    if (this.revisionDateTime != null) {
      queryParams['revisionDateTime'] = apiClient.serializeToString(this.revisionDateTime);
    }

    url = apiClient.applyQueryParams(url, queryParams);
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('DELETE', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return null;
  }
}