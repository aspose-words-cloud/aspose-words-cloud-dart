/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="watermark_data_image.dart">
 *   Copyright (c) 2026 Aspose.Words for Cloud
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

import '../../aspose_words_cloud.dart';

/// Class for insert watermark image request building.
class WatermarkDataImage extends WatermarkDataBase {
  /// Gets or sets the watermark image.
  FileReference? _image;

  FileReference? get image => _image;
  set image(FileReference? val) => _image = val;


  /// Gets or sets a boolean value which is responsible for washout effect of the watermark. The default value is true.
  bool? _isWashout;

  bool? get isWashout => _isWashout;
  set isWashout(bool? val) => _isWashout = val;


  /// Gets or sets the scale factor expressed as a fraction of the image. The default value is 0 - auto.
  /// Valid values range from 0 to 65.5 inclusive. Auto scale means that the watermark will be scaled to its max width and max height relative to the page margins.
  double? _scale;

  double? get scale => _scale;
  set scale(double? val) => _scale = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize WatermarkDataImage data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Image')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      image = null;
    }

    if (json.containsKey('IsWashout')) {
      isWashout = json['IsWashout'] as bool;
    } else {
      isWashout = null;
    }

    if (json.containsKey('Scale')) {
      scale = json['Scale'] as double;
    } else {
      scale = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (image != null) {
      _result['Image'] = image!.serialize();
    }

    if (isWashout != null) {
      _result['IsWashout'] = isWashout!;
    }

    if (scale != null) {
      _result['Scale'] = scale!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
    if (image != null)
    {
        image!.getFilesContent(resultFilesContent);
    }



  }

  @override
  void validate() {
    super.validate();
    if (image == null)
    {
        throw new ApiException(400, 'Property Image in WatermarkDataImage is required.');
    }

    image?.validate();



  }
}


