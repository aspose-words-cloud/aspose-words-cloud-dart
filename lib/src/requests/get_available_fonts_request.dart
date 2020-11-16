/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="get_available_fonts_request.dart">
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

/// Request model for GetAvailableFonts operation.
class GetAvailableFontsRequest implements RequestBase {
  /// The folder in cloud storage with custom fonts.
  final String fontsLocation;

  GetAvailableFontsRequest({final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var _path = '/words/fonts/available';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    if (fontsLocation != null) {
      _queryParams['fontsLocation'] = apiClient.serializeToString(fontsLocation);
    }

    var _url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('GET', _url, _headers, _body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = AvailableFontsResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json as Map<String, dynamic>);
    return _result;
  }
}