/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table.dart">
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

/// DTO container with a table element.
class Table extends NodeLink {
  /// Gets or sets the collection of table's rows.
  List<TableRow?>? _tableRowList;

  List<TableRow?>? get tableRowList => _tableRowList;
  set tableRowList(List<TableRow?>? val) => _tableRowList = val;


  /// Gets or sets table properties.
  TableProperties? _tableProperties;

  TableProperties? get tableProperties => _tableProperties;
  set tableProperties(TableProperties? val) => _tableProperties = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Table data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('TableRowList')) {
      // Array processing
      tableRowList = <TableRow>[];
      for(final _element in json['TableRowList']) {
        tableRowList!.add(ModelBase.createInstance< TableRow >(_element as Map<String, dynamic>));
      }
    } else {
      tableRowList = null;
    }

    if (json.containsKey('TableProperties')) {
      tableProperties = ModelBase.createInstance< TableProperties >(json['TableProperties'] as Map<String, dynamic>);
    } else {
      tableProperties = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (tableRowList != null) {
      _result['TableRowList'] = tableRowList!.map((_element) => _element?.serialize()).toList();
    }

    if (tableProperties != null) {
      _result['TableProperties'] = tableProperties!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementTableRowList in tableRowList ?? [])
    {
        elementTableRowList?.validate();
    }



    tableProperties?.validate();

  }
}


