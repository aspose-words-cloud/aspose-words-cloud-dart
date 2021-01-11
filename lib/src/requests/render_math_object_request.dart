/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="render_math_object_request.dart">
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

/// Request model for RenderMathObject operation.
class RenderMathObjectRequest implements RequestBase {
  /// The filename of the input document.
  final String name;

  /// The destination format.
  final String format;

  /// Object index.
  final int index;

  /// The path to the node in the document tree.
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

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  RenderMathObjectRequest(final this.name, final this.format, final this.index, {final this.nodePath, final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.destFileName, final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}/render';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    _path = _path.replaceAll('{name}', apiClient.serializeToString(name));

    if (index == null) {
      throw ApiException(400, 'Parameter index is required.');
    }
    _path = _path.replaceAll('{index}', apiClient.serializeToString(index));
    _path = _path.replaceAll('{nodePath}', apiClient.serializeToString(nodePath) ?? '');
    if (format != null) {
      _queryParams['format'] = apiClient.serializeToString(format);
    }
    else {
      throw ApiException(400, 'Parameter format is required.');
    }

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

    if (fontsLocation != null) {
      _queryParams['fontsLocation'] = apiClient.serializeToString(fontsLocation);
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('POST', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}