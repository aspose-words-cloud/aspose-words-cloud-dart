/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_info.dart">
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

/// Represents a single document list.
class ListInfo extends LinkElement {
  /// Gets or sets a value indicating whether returns true if this list is a definition of a list style.
  bool isListStyleDefinition;

  /// Gets or sets a value indicating whether returns true if this list is a reference to a list style.
  bool isListStyleReference;

  /// Gets or sets a value indicating whether returns true when the list contains 9 levels; false when 1 level.
  bool isMultiLevel;

  /// Gets or sets a value indicating whether specifies whether list should be restarted at each section. Default value is false.
  bool isRestartAtEachSection;

  /// Gets or sets the unique identifier of the list.
  int listId;

  /// Gets or sets the collection of list levels for this list.
  ListLevels listLevels;

  /// Gets or sets the list style that this list references or defines.
  Style style;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('IsListStyleDefinition')) {
      this.isListStyleDefinition = json['IsListStyleDefinition'];
    } else {
      this.isListStyleDefinition = null;
    }

    if (json.containsKey('IsListStyleReference')) {
      this.isListStyleReference = json['IsListStyleReference'];
    } else {
      this.isListStyleReference = null;
    }

    if (json.containsKey('IsMultiLevel')) {
      this.isMultiLevel = json['IsMultiLevel'];
    } else {
      this.isMultiLevel = null;
    }

    if (json.containsKey('IsRestartAtEachSection')) {
      this.isRestartAtEachSection = json['IsRestartAtEachSection'];
    } else {
      this.isRestartAtEachSection = null;
    }

    if (json.containsKey('ListId')) {
      this.listId = json['ListId'];
    } else {
      this.listId = null;
    }

    if (json.containsKey('ListLevels')) {
      this.listLevels = new ListLevels();
      this.listLevels.deserialize(json['ListLevels']);
    } else {
      this.listLevels = null;
    }

    if (json.containsKey('Style')) {
      this.style = new Style();
      this.style.deserialize(json['Style']);
    } else {
      this.style = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.isListStyleDefinition != null) {
      _result['IsListStyleDefinition'] = this.isListStyleDefinition;
    }

    if (this.isListStyleReference != null) {
      _result['IsListStyleReference'] = this.isListStyleReference;
    }

    if (this.isMultiLevel != null) {
      _result['IsMultiLevel'] = this.isMultiLevel;
    }

    if (this.isRestartAtEachSection != null) {
      _result['IsRestartAtEachSection'] = this.isRestartAtEachSection;
    }

    if (this.listId != null) {
      _result['ListId'] = this.listId;
    }

    if (this.listLevels != null) {
      _result['ListLevels'] = this.listLevels.serialize();
    }

    if (this.style != null) {
      _result['Style'] = this.style.serialize();
    }
    return _result;
  }
}


