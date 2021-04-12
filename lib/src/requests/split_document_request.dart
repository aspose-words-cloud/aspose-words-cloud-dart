/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="split_document_request.dart">
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

import 'dart:convert';
import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for SplitDocument operation.
class SplitDocumentRequest implements RequestBase {
  /// The filename of the input document.
  final String name;

  /// The format to split.
  final String format;

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

  /// The start page.
  final int from;

  /// The end page.
  final int to;

  /// The flag indicating whether to ZIP the output.
  final bool zipOutput;

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  SplitDocumentRequest(final this.name, final this.format, {final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName, final this.from, final this.to, final this.zipOutput, final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient _apiClient) {
    var _path = '/words/{name}/split';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    _path = _path.replaceAll('{name}', _apiClient.serializeToString(name));
    if (format != null) {
      _queryParams['format'] = _apiClient.serializeToString(format);
    }
    else {
      throw ApiException(400, 'Parameter format is required.');
    }

    if (folder != null) {
      _queryParams['folder'] = _apiClient.serializeToString(folder);
    }

    if (storage != null) {
      _queryParams['storage'] = _apiClient.serializeToString(storage);
    }

    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = _apiClient.serializeToString(loadEncoding);
    }

    if (password != null) {
      _queryParams['password'] = _apiClient.serializeToString(password);
    }

    if (destFileName != null) {
      _queryParams['destFileName'] = _apiClient.serializeToString(destFileName);
    }

    if (from != null) {
      _queryParams['from'] = _apiClient.serializeToString(from);
    }

    if (to != null) {
      _queryParams['to'] = _apiClient.serializeToString(to);
    }

    if (zipOutput != null) {
      _queryParams['zipOutput'] = _apiClient.serializeToString(zipOutput);
    }

    if (fontsLocation != null) {
      _queryParams['fontsLocation'] = _apiClient.serializeToString(fontsLocation);
    }

    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final ByteData _body) {
    var _result = SplitDocumentResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json as Map<String, dynamic>);
    return _result;
  }
}