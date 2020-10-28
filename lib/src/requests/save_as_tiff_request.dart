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

  SaveAsTiffRequest(final String this.name, final TiffSaveOptionsData this.saveOptions, {final String this.folder = null, final String this.storage = null, final String this.loadEncoding = null, final String this.password = null, final bool this.useAntiAliasing = null, final bool this.useHighQualityRendering = null, final double this.imageBrightness = null, final String this.imageColorMode = null, final double this.imageContrast = null, final String this.numeralFormat = null, final int this.pageCount = null, final int this.pageIndex = null, final String this.paperColor = null, final String this.pixelFormat = null, final double this.resolution = null, final double this.scale = null, final String this.tiffCompression = null, final String this.dmlRenderingMode = null, final String this.dmlEffectsRenderingMode = null, final String this.tiffBinarizationMethod = null, final bool this.zipOutput = null, final String this.fontsLocation = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String path = '/words/{name}/saveAs/tiff';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.name == null) {
      throw new ApiException(400, 'Parameter name is required.');
    }
    path = path.replaceAll('{name}', apiClient.serializeToString(this.name));
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

    if (this.useAntiAliasing != null) {
      queryParams['useAntiAliasing'] = apiClient.serializeToString(this.useAntiAliasing);
    }

    if (this.useHighQualityRendering != null) {
      queryParams['useHighQualityRendering'] = apiClient.serializeToString(this.useHighQualityRendering);
    }

    if (this.imageBrightness != null) {
      queryParams['imageBrightness'] = apiClient.serializeToString(this.imageBrightness);
    }

    if (this.imageColorMode != null) {
      queryParams['imageColorMode'] = apiClient.serializeToString(this.imageColorMode);
    }

    if (this.imageContrast != null) {
      queryParams['imageContrast'] = apiClient.serializeToString(this.imageContrast);
    }

    if (this.numeralFormat != null) {
      queryParams['numeralFormat'] = apiClient.serializeToString(this.numeralFormat);
    }

    if (this.pageCount != null) {
      queryParams['pageCount'] = apiClient.serializeToString(this.pageCount);
    }

    if (this.pageIndex != null) {
      queryParams['pageIndex'] = apiClient.serializeToString(this.pageIndex);
    }

    if (this.paperColor != null) {
      queryParams['paperColor'] = apiClient.serializeToString(this.paperColor);
    }

    if (this.pixelFormat != null) {
      queryParams['pixelFormat'] = apiClient.serializeToString(this.pixelFormat);
    }

    if (this.resolution != null) {
      queryParams['resolution'] = apiClient.serializeToString(this.resolution);
    }

    if (this.scale != null) {
      queryParams['scale'] = apiClient.serializeToString(this.scale);
    }

    if (this.tiffCompression != null) {
      queryParams['tiffCompression'] = apiClient.serializeToString(this.tiffCompression);
    }

    if (this.dmlRenderingMode != null) {
      queryParams['dmlRenderingMode'] = apiClient.serializeToString(this.dmlRenderingMode);
    }

    if (this.dmlEffectsRenderingMode != null) {
      queryParams['dmlEffectsRenderingMode'] = apiClient.serializeToString(this.dmlEffectsRenderingMode);
    }

    if (this.tiffBinarizationMethod != null) {
      queryParams['tiffBinarizationMethod'] = apiClient.serializeToString(this.tiffBinarizationMethod);
    }

    if (this.zipOutput != null) {
      queryParams['zipOutput'] = apiClient.serializeToString(this.zipOutput);
    }

    if (this.fontsLocation != null) {
      queryParams['fontsLocation'] = apiClient.serializeToString(this.fontsLocation);
    }

    if (this.saveOptions != null) {
      bodyParts.add(new ApiRequestPart(apiClient.serializeBody(this.saveOptions), 'application/json'));
    }
    else {
      throw new ApiException(400, 'Parameter saveOptions is required.');
    }

    String url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = new SaveResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}