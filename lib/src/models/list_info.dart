/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_info.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// DTO container with a single document list.
class ListInfo extends LinkElement {
  /// Gets or sets a value indicating whether this list is a definition of a list style.
  bool _isListStyleDefinition;

  bool get isListStyleDefinition => _isListStyleDefinition;
  set isListStyleDefinition(bool val) => _isListStyleDefinition = val;


  /// Gets or sets a value indicating whether this list is a reference to a list style.
  bool _isListStyleReference;

  bool get isListStyleReference => _isListStyleReference;
  set isListStyleReference(bool val) => _isListStyleReference = val;


  /// Gets or sets a value indicating whether the list contains 9 levels; false when 1 level.
  bool _isMultiLevel;

  bool get isMultiLevel => _isMultiLevel;
  set isMultiLevel(bool val) => _isMultiLevel = val;


  /// Gets or sets a value indicating whether list should be restarted at each section. The default value is false.
  bool _isRestartAtEachSection;

  bool get isRestartAtEachSection => _isRestartAtEachSection;
  set isRestartAtEachSection(bool val) => _isRestartAtEachSection = val;


  /// Gets or sets the unique identifier of the list.
  int _listId;

  int get listId => _listId;
  set listId(int val) => _listId = val;


  /// Gets or sets the collection of list levels for this list.
  ListLevels _listLevels;

  ListLevels get listLevels => _listLevels;
  set listLevels(ListLevels val) => _listLevels = val;


  /// Gets or sets the list style that this list references or defines.
  Style _style;

  Style get style => _style;
  set style(Style val) => _style = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ListInfo data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = WordsApiLink();
      link.deserialize(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('IsListStyleDefinition')) {
      isListStyleDefinition = json['IsListStyleDefinition'] as bool;
    } else {
      isListStyleDefinition = null;
    }

    if (json.containsKey('IsListStyleReference')) {
      isListStyleReference = json['IsListStyleReference'] as bool;
    } else {
      isListStyleReference = null;
    }

    if (json.containsKey('IsMultiLevel')) {
      isMultiLevel = json['IsMultiLevel'] as bool;
    } else {
      isMultiLevel = null;
    }

    if (json.containsKey('IsRestartAtEachSection')) {
      isRestartAtEachSection = json['IsRestartAtEachSection'] as bool;
    } else {
      isRestartAtEachSection = null;
    }

    if (json.containsKey('ListId')) {
      listId = json['ListId'] as int;
    } else {
      listId = null;
    }

    if (json.containsKey('ListLevels')) {
      listLevels = ListLevels();
      listLevels.deserialize(json['ListLevels'] as Map<String, dynamic>);
    } else {
      listLevels = null;
    }

    if (json.containsKey('Style')) {
      style = Style();
      style.deserialize(json['Style'] as Map<String, dynamic>);
    } else {
      style = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isListStyleDefinition != null) {
      _result['IsListStyleDefinition'] = isListStyleDefinition;
    }

    if (isListStyleReference != null) {
      _result['IsListStyleReference'] = isListStyleReference;
    }

    if (isMultiLevel != null) {
      _result['IsMultiLevel'] = isMultiLevel;
    }

    if (isRestartAtEachSection != null) {
      _result['IsRestartAtEachSection'] = isRestartAtEachSection;
    }

    if (listId != null) {
      _result['ListId'] = listId;
    }

    if (listLevels != null) {
      _result['ListLevels'] = listLevels.serialize();
    }

    if (style != null) {
      _result['Style'] = style.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }
}


