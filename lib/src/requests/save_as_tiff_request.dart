/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_as_tiff_request.dart">
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

/// Request model for SaveAsTiff operation.
class SaveAsTiffRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Tiff save options.
  final TiffSaveOptionsData saveOptions;

  /// Original document folder.
  final String folder;

  /// Original document storage.
  final String storage;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  /// Use antialiasing flag.
  final bool useAntiAliasing;

  /// Use high quality flag.
  final bool useHighQualityRendering;

  /// Brightness for the generated images.
  final double imageBrightness;

  /// Color mode for the generated images.
  final String imageColorMode;

  /// The contrast for the generated images.
  final double imageContrast;

  /// The images numeral format.
  final String numeralFormat;

  /// Number of pages to render.
  final int pageCount;

  /// Page index to start rendering.
  final int pageIndex;

  /// Background image color.
  final String paperColor;

  /// The pixel format of generated images.
  final String pixelFormat;

  /// The resolution of generated images.
  final double resolution;

  /// Zoom factor for generated images.
  final double scale;

  /// The compression tipe.
  final String tiffCompression;

  /// Optional, default is Fallback.
  final String dmlRenderingMode;

  /// Optional, default is Simplified.
  final String dmlEffectsRenderingMode;

  /// Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
  final String tiffBinarizationMethod;

  /// Optional. A value determining zip output or not.
  final bool zipOutput;

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  SaveAsTiffRequest(final this.name, final this.saveOptions, {final this.folder, final this.storage, final this.loadEncoding, final this.password, final this.useAntiAliasing, final this.useHighQualityRendering, final this.imageBrightness, final this.imageColorMode, final this.imageContrast, final this.numeralFormat, final this.pageCount, final this.pageIndex, final this.paperColor, final this.pixelFormat, final this.resolution, final this.scale, final this.tiffCompression, final this.dmlRenderingMode, final this.dmlEffectsRenderingMode, final this.tiffBinarizationMethod, final this.zipOutput, final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/{name}/saveAs/tiff';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (name == null) {
      throw ApiException(400, 'Parameter name is required.');
    }
    path = path.replaceAll('{name}', apiClient.serializeToString(name));
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

    if (useAntiAliasing != null) {
      queryParams['useAntiAliasing'] = apiClient.serializeToString(useAntiAliasing);
    }

    if (useHighQualityRendering != null) {
      queryParams['useHighQualityRendering'] = apiClient.serializeToString(useHighQualityRendering);
    }

    if (imageBrightness != null) {
      queryParams['imageBrightness'] = apiClient.serializeToString(imageBrightness);
    }

    if (imageColorMode != null) {
      queryParams['imageColorMode'] = apiClient.serializeToString(imageColorMode);
    }

    if (imageContrast != null) {
      queryParams['imageContrast'] = apiClient.serializeToString(imageContrast);
    }

    if (numeralFormat != null) {
      queryParams['numeralFormat'] = apiClient.serializeToString(numeralFormat);
    }

    if (pageCount != null) {
      queryParams['pageCount'] = apiClient.serializeToString(pageCount);
    }

    if (pageIndex != null) {
      queryParams['pageIndex'] = apiClient.serializeToString(pageIndex);
    }

    if (paperColor != null) {
      queryParams['paperColor'] = apiClient.serializeToString(paperColor);
    }

    if (pixelFormat != null) {
      queryParams['pixelFormat'] = apiClient.serializeToString(pixelFormat);
    }

    if (resolution != null) {
      queryParams['resolution'] = apiClient.serializeToString(resolution);
    }

    if (scale != null) {
      queryParams['scale'] = apiClient.serializeToString(scale);
    }

    if (tiffCompression != null) {
      queryParams['tiffCompression'] = apiClient.serializeToString(tiffCompression);
    }

    if (dmlRenderingMode != null) {
      queryParams['dmlRenderingMode'] = apiClient.serializeToString(dmlRenderingMode);
    }

    if (dmlEffectsRenderingMode != null) {
      queryParams['dmlEffectsRenderingMode'] = apiClient.serializeToString(dmlEffectsRenderingMode);
    }

    if (tiffBinarizationMethod != null) {
      queryParams['tiffBinarizationMethod'] = apiClient.serializeToString(tiffBinarizationMethod);
    }

    if (zipOutput != null) {
      queryParams['zipOutput'] = apiClient.serializeToString(zipOutput);
    }

    if (fontsLocation != null) {
      queryParams['fontsLocation'] = apiClient.serializeToString(fontsLocation);
    }

    if (saveOptions != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(saveOptions), 'application/json'));
    }
    else {
      throw ApiException(400, 'Parameter saveOptions is required.');
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = SaveResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}