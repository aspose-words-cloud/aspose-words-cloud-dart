/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="delete_headers_footers_request.dart">
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

/// Request model for DeleteHeadersFooters operation.
class DeleteHeadersFootersRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Path to parent section.
  final String sectionPath;

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

  /// List of types of headers and footers.
  final String headersFootersTypes;

  DeleteHeadersFootersRequest(final this.name, final this.sectionPath, {final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName, final this.revisionAuthor, final this.revisionDateTime, final this.headersFootersTypes});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/{name}/{sectionPath}/headersfooters';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    path = path.replaceAll('{name}', apiClient.serializeToString(name));

    if (sectionPath == null) {
      throw ApiException(400, 'Parameter sectionPath is required.');
    }
    path = path.replaceAll('{sectionPath}', apiClient.serializeToString(sectionPath));
    if (folder != null) {
      queryParams['folder'] = apiClient.serializeToString(folder);
    }

    if (storage != null) {
      queryParams['storage'] = apiClient.serializeToString(storage);
    }

    if (loadEncoding != null) {
      queryParams['loadEncoding'] = apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      queryParams['password'] = apiClient.serializeToString(password);
    }

    if (destFileName != null) {
      queryParams['destFileName'] = apiClient.serializeToString(destFileName);
    }

    if (revisionAuthor != null) {
      queryParams['revisionAuthor'] = apiClient.serializeToString(revisionAuthor);
    }

    if (revisionDateTime != null) {
      queryParams['revisionDateTime'] = apiClient.serializeToString(revisionDateTime);
    }

    if (headersFootersTypes != null) {
      queryParams['headersFootersTypes'] = apiClient.serializeToString(headersFootersTypes);
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('DELETE', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return null;
  }
}