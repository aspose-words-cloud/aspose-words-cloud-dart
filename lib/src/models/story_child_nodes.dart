/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="story_child_nodes.dart">
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

/// Child nodes of Story or InlineStory.
class StoryChildNodes implements ModelBase {
  /// Gets or sets child nodes.
  List<NodeLink> childNodes;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('ChildNodes')) {
      // Array processing
      this.childNodes = new List<NodeLink>();
      for(final _element in json['ChildNodes']) {
        var _elementValue = new NodeLink();
        _elementValue.deserialize(_element);
        this.childNodes.add(_elementValue);
      }
    } else {
      this.childNodes = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.childNodes != null) {
      _result['ChildNodes'] = this.childNodes.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


