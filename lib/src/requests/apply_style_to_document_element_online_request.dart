/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="apply_style_to_document_element_online_request.dart">
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

/// Request model for ApplyStyleToDocumentElementOnline operation.
class ApplyStyleToDocumentElementOnlineRequest implements RequestBase {
  /// The document.
  final ByteData document;

  /// The path to the node in the document tree, that supports styles: ParagraphFormat, List, ListLevel, Table.
  final String styledNodePath;

  /// Style to apply.
  final StyleApply styleApply;

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

  ApplyStyleToDocumentElementOnlineRequest(final this.document, final this.styledNodePath, final this.styleApply, {final this.loadEncoding, final this.password, final this.destFileName, final this.revisionAuthor, final this.revisionDateTime});

  @override
  Future<ApiRequestData> createRequestData(final ApiClient _apiClient) async {
    var _path = '/words/online/put/{styledNodePath}/style';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (styledNodePath == null) {
      throw ApiException(400, 'Parameter styledNodePath is required.');
    }
    _path = _path.replaceAll('{styledNodePath}', _apiClient.serializeToString(styledNodePath));
    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = _apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['encryptedPassword'] = await _apiClient.encryptPassword(password);
    }

    if (destFileName != null) {
      _queryParams['destFileName'] = _apiClient.serializeToString(destFileName);
    }

    if (revisionAuthor != null) {
      _queryParams['revisionAuthor'] = _apiClient.serializeToString(revisionAuthor);
    }

    if (revisionDateTime != null) {
      _queryParams['revisionDateTime'] = _apiClient.serializeToString(revisionDateTime);
    }

    if (document != null) {
      _bodyParts.add(ApiRequestPart(_apiClient.serializeBody(document), 'application/octet-stream', name: 'Document'));
    }
    else {
      throw ApiException(400, 'Parameter document is required.');
    }

    if (styleApply != null) {
      _bodyParts.add(ApiRequestPart(_apiClient.serializeBody(styleApply), 'application/json', name: 'StyleApply'));
    }
    else {
      throw ApiException(400, 'Parameter styleApply is required.');
    }

    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final ByteData _body) {
    var _result = ApplyStyleToDocumentElementOnlineResponse();
    _result.deserialize(_apiClient.deserializeMultipartMap(_body));
    return _result;
  }
}