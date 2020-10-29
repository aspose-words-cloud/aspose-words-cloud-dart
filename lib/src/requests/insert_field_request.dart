/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="insert_field_request.dart">
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

/// Request model for InsertField operation.
class InsertFieldRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Field data.
  final FieldInsert field;

  /// Path to the node, which contains collection of fields.
  final String nodePath;

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

  /// Field will be inserted before node with id="nodeId".
  final String insertBeforeNode;

  InsertFieldRequest(final this.name, final this.field, {final this.nodePath, final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName, final this.revisionAuthor, final this.revisionDateTime, final this.insertBeforeNode});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/{name}/{nodePath}/fields';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    _path = _path.replaceAll('{name}', apiClient.serializeToString(name));
    _path = _path.replaceAll('{nodePath}', apiClient.serializeToString(nodePath) ?? '');
    if (folder != null) {
      _queryParams['folder'] = apiClient.serializeToString(folder);
    }

    if (storage != null) {
      _queryParams['storage'] = apiClient.serializeToString(storage);
    }

    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['password'] = apiClient.serializeToString(password);
    }

    if (destFileName != null) {
      _queryParams['destFileName'] = apiClient.serializeToString(destFileName);
    }

    if (revisionAuthor != null) {
      _queryParams['revisionAuthor'] = apiClient.serializeToString(revisionAuthor);
    }

    if (revisionDateTime != null) {
      _queryParams['revisionDateTime'] = apiClient.serializeToString(revisionDateTime);
    }

    if (insertBeforeNode != null) {
      _queryParams['insertBeforeNode'] = apiClient.serializeToString(insertBeforeNode);
    }

    if (field != null) {
      _bodyParts.add(ApiRequestPart(apiClient.serializeBody(field), 'application/json'));
    }
    else {
      throw ApiException(400, 'Parameter field is required.');
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('POST', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = FieldResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}