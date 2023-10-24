/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="image_entry_list.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

/// Represents a list of images which will be appended to the original resource document or image.
class ImageEntryList extends BaseEntryList {
  /// Gets or sets a value indicating whether each image should be added to a new page in the document.
  /// This value only has an effect when adding images to a document that supports pagination.
  bool? _appendEachImageOnNewPage;

  bool? get appendEachImageOnNewPage => _appendEachImageOnNewPage;
  set appendEachImageOnNewPage(bool? val) => _appendEachImageOnNewPage = val;


  /// Gets or sets the list of images.
  List<ImageEntry?>? _imageEntries;

  List<ImageEntry?>? get imageEntries => _imageEntries;
  set imageEntries(List<ImageEntry?>? val) => _imageEntries = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ImageEntryList data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AppendEachImageOnNewPage')) {
      appendEachImageOnNewPage = json['AppendEachImageOnNewPage'] as bool;
    } else {
      appendEachImageOnNewPage = null;
    }

    if (json.containsKey('ImageEntries')) {
      // Array processing
      imageEntries = <ImageEntry>[];
      for(final _element in json['ImageEntries']) {
        imageEntries!.add(ModelBase.createInstance< ImageEntry >(_element as Map<String, dynamic>));
      }
    } else {
      imageEntries = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (appendEachImageOnNewPage != null) {
      _result['AppendEachImageOnNewPage'] = appendEachImageOnNewPage!;
    }

    if (imageEntries != null) {
      _result['ImageEntries'] = imageEntries!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
    if (imageEntries != null)
    {
        for (final element in imageEntries!)
        {
            element!.getFilesContent(resultFilesContent);
        }
    }

  }

  @override
  void validate() {
    super.validate();

    for (final elementImageEntries in imageEntries ?? [])
    {
        elementImageEntries?.validate();
    }

  }
}


