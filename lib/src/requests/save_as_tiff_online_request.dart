/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_as_tiff_online_request.dart">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

/// Request model for SaveAsTiffOnline operation.
class SaveAsTiffOnlineRequest implements RequestBase {
  /// The document.
  final ByteData? document;

  /// Tiff save options.
  final TiffSaveOptionsData? saveOptions;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String? loadEncoding;

  /// Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
  final String? password;

  /// Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
  final String? encryptedPassword;

  /// The value indicates whether OpenType support is on.
  final bool? openTypeSupport;

  /// The flag indicating whether to use antialiasing.
  final bool? useAntiAliasing;

  /// The flag indicating whether to use high quality.
  final bool? useHighQualityRendering;

  /// The level of brightness for the generated images.
  final double? imageBrightness;

  /// The color mode for the generated images.
  final String? imageColorMode;

  /// The contrast for the generated images.
  final double? imageContrast;

  /// The images numeral format.
  final String? numeralFormat;

  /// The number of pages to render.
  final int? pageCount;

  /// The index of the page to start rendering.
  final int? pageIndex;

  /// The background image color.
  final String? paperColor;

  /// The pixel format of the generated images.
  final String? pixelFormat;

  /// The resolution of the generated images.
  final double? resolution;

  /// The zoom factor for the generated images.
  final double? scale;

  /// The compression tipe.
  final String? tiffCompression;

  /// The optional dml rendering mode. The default value is Fallback.
  final String? dmlRenderingMode;

  /// The optional dml effects rendering mode. The default value is Simplified.
  final String? dmlEffectsRenderingMode;

  /// The optional TIFF binarization method. Possible values are: FloydSteinbergDithering, Threshold.
  final String? tiffBinarizationMethod;

  /// The flag indicating whether to ZIP the output.
  final bool? zipOutput;

  /// Folder in filestorage with custom fonts.
  final String? fontsLocation;

  /// Request send data progress callback
  final SendDataProgressCallback? sendDataProgressCallback;

  /// Response receive data progress callback
  final ReceiveDataProgressCallback? receiveDataProgressCallback;

  SaveAsTiffOnlineRequest(this.document, this.saveOptions, {this.loadEncoding, this.password, this.encryptedPassword, this.openTypeSupport, this.useAntiAliasing, this.useHighQualityRendering, this.imageBrightness, this.imageColorMode, this.imageContrast, this.numeralFormat, this.pageCount, this.pageIndex, this.paperColor, this.pixelFormat, this.resolution, this.scale, this.tiffCompression, this.dmlRenderingMode, this.dmlEffectsRenderingMode, this.tiffBinarizationMethod, this.zipOutput, this.fontsLocation, this.sendDataProgressCallback, this.receiveDataProgressCallback});

  @override
  Future<ApiRequestData> createRequestData(final ApiClient _apiClient) async {
    var _path = '/words/online/put/saveAs/tiff';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    var _fileContentParts = <FileReference>[];
    if (loadEncoding != null) {
      _queryParams['loadEncoding'] = _apiClient.serializeToString(loadEncoding) ?? "";
    }

    if (password != null) {
      _queryParams['encryptedPassword'] = await _apiClient.encryptPassword(password!);
    }

    if (encryptedPassword != null) {
      _queryParams['encryptedPassword'] = _apiClient.serializeToString(encryptedPassword) ?? "";
    }

    if (openTypeSupport != null) {
      _queryParams['openTypeSupport'] = _apiClient.serializeToString(openTypeSupport) ?? "";
    }

    if (useAntiAliasing != null) {
      _queryParams['useAntiAliasing'] = _apiClient.serializeToString(useAntiAliasing) ?? "";
    }

    if (useHighQualityRendering != null) {
      _queryParams['useHighQualityRendering'] = _apiClient.serializeToString(useHighQualityRendering) ?? "";
    }

    if (imageBrightness != null) {
      _queryParams['imageBrightness'] = _apiClient.serializeToString(imageBrightness) ?? "";
    }

    if (imageColorMode != null) {
      _queryParams['imageColorMode'] = _apiClient.serializeToString(imageColorMode) ?? "";
    }

    if (imageContrast != null) {
      _queryParams['imageContrast'] = _apiClient.serializeToString(imageContrast) ?? "";
    }

    if (numeralFormat != null) {
      _queryParams['numeralFormat'] = _apiClient.serializeToString(numeralFormat) ?? "";
    }

    if (pageCount != null) {
      _queryParams['pageCount'] = _apiClient.serializeToString(pageCount) ?? "";
    }

    if (pageIndex != null) {
      _queryParams['pageIndex'] = _apiClient.serializeToString(pageIndex) ?? "";
    }

    if (paperColor != null) {
      _queryParams['paperColor'] = _apiClient.serializeToString(paperColor) ?? "";
    }

    if (pixelFormat != null) {
      _queryParams['pixelFormat'] = _apiClient.serializeToString(pixelFormat) ?? "";
    }

    if (resolution != null) {
      _queryParams['resolution'] = _apiClient.serializeToString(resolution) ?? "";
    }

    if (scale != null) {
      _queryParams['scale'] = _apiClient.serializeToString(scale) ?? "";
    }

    if (tiffCompression != null) {
      _queryParams['tiffCompression'] = _apiClient.serializeToString(tiffCompression) ?? "";
    }

    if (dmlRenderingMode != null) {
      _queryParams['dmlRenderingMode'] = _apiClient.serializeToString(dmlRenderingMode) ?? "";
    }

    if (dmlEffectsRenderingMode != null) {
      _queryParams['dmlEffectsRenderingMode'] = _apiClient.serializeToString(dmlEffectsRenderingMode) ?? "";
    }

    if (tiffBinarizationMethod != null) {
      _queryParams['tiffBinarizationMethod'] = _apiClient.serializeToString(tiffBinarizationMethod) ?? "";
    }

    if (zipOutput != null) {
      _queryParams['zipOutput'] = _apiClient.serializeToString(zipOutput) ?? "";
    }

    if (fontsLocation != null) {
      _queryParams['fontsLocation'] = _apiClient.serializeToString(fontsLocation) ?? "";
    }

    if (document != null) {

      var _formBody = _apiClient.serializeBody(document, 'Document');
      if (_formBody != null) {
        _bodyParts.add(_formBody);
      }
    }
    else {
      throw ApiException(400, 'Parameter document is required.');
    }

    if (saveOptions != null) {
      saveOptions!.validate();

      var _formBody = _apiClient.serializeBody(saveOptions, 'SaveOptions');
      if (_formBody != null) {
        _bodyParts.add(_formBody);
      }
    }
    else {
      throw ApiException(400, 'Parameter saveOptions is required.');
    }

    for (final _fileContentPart in _fileContentParts) {
        _fileContentPart.encryptPassword(_apiClient);
        if (_fileContentPart.source == 'Request') {
            _bodyParts.add(ApiRequestPart(_fileContentPart.content!, 'application/octet-stream', name: _fileContentPart.reference));
        }
    }
    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body, this.sendDataProgressCallback, this.receiveDataProgressCallback);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final Map<String, String> _headers, final ByteData? _body) {
    if (_body == null) {
        return ApiException(400, "Nullable response body is not allowed for this operation type.");
    }

    var _result = SaveAsTiffOnlineResponse();
    _result.deserialize(_apiClient, _apiClient.deserializeMultipartMap(_body));
    return _result;
  }
}