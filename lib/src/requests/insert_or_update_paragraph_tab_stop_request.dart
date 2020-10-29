/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="insert_or_update_paragraph_tab_stop_request.dart">
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

/// Request model for InsertOrUpdateParagraphTabStop operation.
class InsertOrUpdateParagraphTabStopRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Paragraph tab stop.
  final TabStopInsert dto;

  /// Object index.
  final int index;

  /// Path to the node which contains paragraph.
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

  InsertOrUpdateParagraphTabStopRequest(final this.name, final this.dto, final this.index, {final this.nodePath, final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/{name}/{nodePath}/paragraphs/{index}/tabstops';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    path = path.replaceAll('{name}', apiClient.serializeToString(name));

    if (index == null) {
      throw ApiException(400, 'Parameter index is required.');
    }
    path = path.replaceAll('{index}', apiClient.serializeToString(index));
    path = path.replaceAll('{nodePath}', apiClient.serializeToString(nodePath) ?? '');
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

    if (dto != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(dto), 'application/json'));
    }
    else {
      throw ApiException(400, 'Parameter dto is required.');
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('POST', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = TabStopsResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}