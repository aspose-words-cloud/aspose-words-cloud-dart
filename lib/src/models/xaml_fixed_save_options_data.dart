/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="xaml_fixed_save_options_data.dart">
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

import '../../aspose_words_cloud.dart';

/// container class for xaml fixed save options.
class XamlFixedSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets specifies the physical folder where resources (images and fonts) are saved when exporting a document to fixed page Xaml format.
  /// Default is null.
  String resourcesFolder;

  /// Gets or sets specifies the name of the folder used to construct image URIs written into an fixed page Xaml document.
  /// Default is null.
  String resourcesFolderAlias;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ResourcesFolder')) {
      this.resourcesFolder = json['ResourcesFolder'];
    } else {
      this.resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      this.resourcesFolderAlias = json['ResourcesFolderAlias'];
    } else {
      this.resourcesFolderAlias = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.resourcesFolder != null) {
      _result['ResourcesFolder'] = this.resourcesFolder;
    }

    if (this.resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = this.resourcesFolderAlias;
    }
    return _result;
  }
}


