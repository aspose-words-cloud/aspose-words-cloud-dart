/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_tests.dart">
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

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import '../test_context.dart';

/// Example of how to work wtih table.
class TableTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  TableTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Tables';
    localFile = 'DocumentElements/Tables/TablesGet.docx';
  }

  /// Test for getting tables.
  Future<void> testGetTables() async
  {
    final String remoteFileName = 'TestGetTables.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTablesRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().getTables(request);
  }

  /// Test for getting tables without node path.
  Future<void> testGetTablesWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetTablesWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTablesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTables(request);
  }

  /// Test for getting table.
  Future<void> testGetTable() async
  {
    final String remoteFileName = 'TestGetTable.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().getTable(request);
  }

  /// Test for getting table without node path.
  Future<void> testGetTableWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetTableWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTable(request);
  }

  /// Test for deleting table.
  Future<void> testDeleteTable() async
  {
    final String remoteFileName = 'TestDeleteTable.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteTableRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteTable(request);
  }

  /// Test for deleting table without node path.
  Future<void> testDeleteTableWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteTableWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteTableRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteTable(request);
  }

  /// Test for adding table.
  Future<void> testInsertTable() async
  {
    final String remoteFileName = 'TestInsertTable.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestTable = new TableInsert();
    requestTable.columnsCount = 5;
    requestTable.rowsCount = 4;

    final request = new InsertTableRequest(
      remoteFileName,
      requestTable,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().insertTable(request);
  }

  /// Test for adding table without node path.
  Future<void> testInsertTableWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertTableWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestTable = new TableInsert();
    requestTable.columnsCount = 5;
    requestTable.rowsCount = 4;

    final request = new InsertTableRequest(
      remoteFileName,
      requestTable,
      folder: remoteDataFolder
    );

    await this.context.getApi().insertTable(request);
  }

  /// Test for getting document properties.
  Future<void> testGetTableProperties() async
  {
    final String remoteFileName = 'TestGetTableProperties.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTablePropertiesRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableProperties(request);
  }

  /// Test for getting document properties without node path.
  Future<void> testGetTablePropertiesWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetTablePropertiesWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTablePropertiesRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableProperties(request);
  }

  /// Test for updating table properties.
  Future<void> testUpdateTableProperties() async
  {
    final String remoteFileName = 'TestUpdateTableProperties.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperties = new TableProperties();
    requestProperties.alignment = TableProperties_AlignmentEnum.right;
    requestProperties.allowAutoFit = false;
    requestProperties.bidi = true;
    requestProperties.bottomPadding = 1;
    requestProperties.cellSpacing = 2;
    requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;

    final request = new UpdateTablePropertiesRequest(
      remoteFileName,
      requestProperties,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().updateTableProperties(request);
  }

  /// Test for updating table properties without node path.
  Future<void> testUpdateTablePropertiesWithoutNodePath() async
  {
    final String remoteFileName = 'TestUpdateTablePropertiesWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperties = new TableProperties();
    requestProperties.alignment = TableProperties_AlignmentEnum.right;
    requestProperties.allowAutoFit = false;
    requestProperties.bidi = true;
    requestProperties.bottomPadding = 1;
    requestProperties.cellSpacing = 2;
    requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;

    final request = new UpdateTablePropertiesRequest(
      remoteFileName,
      requestProperties,
      1,
      folder: remoteDataFolder
    );

    await this.context.getApi().updateTableProperties(request);
  }

  /// Test for getting table row.
  Future<void> testGetTableRow() async
  {
    final String remoteFileName = 'TestGetTableRow.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableRowRequest(
      remoteFileName,
      'tables/1',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableRow(request);
  }

  /// Test for deleting table row.
  Future<void> testDeleteTableRow() async
  {
    final String remoteFileName = 'TestDeleteTableRow.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteTableRowRequest(
      remoteFileName,
      'tables/1',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteTableRow(request);
  }

  /// Test for adding row.
  Future<void> testInsertTableRow() async
  {
    final String remoteFileName = 'TestInsertTableRow.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRow = new TableRowInsert();
    requestRow.columnsCount = 5;

    final request = new InsertTableRowRequest(
      remoteFileName,
      requestRow,
      'sections/0/tables/2',
      folder: remoteDataFolder
    );

    await this.context.getApi().insertTableRow(request);
  }

  /// Test for getting row format.
  Future<void> testGetTableRowFormat() async
  {
    final String remoteFileName = 'TestGetTableRowFormat.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableRowFormatRequest(
      remoteFileName,
      'sections/0/tables/2',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableRowFormat(request);
  }

  /// Test updating row format.
  Future<void> testUpdateTableRowFormat() async
  {
    final String remoteFileName = 'TestUpdateTableRowFormat.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFormat = new TableRowFormat();
    requestFormat.allowBreakAcrossPages = true;
    requestFormat.headingFormat = true;
    requestFormat.height = 10;
    requestFormat.heightRule = TableRowFormat_HeightRuleEnum.auto;

    final request = new UpdateTableRowFormatRequest(
      remoteFileName,
      requestFormat,
      'sections/0/tables/2',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().updateTableRowFormat(request);
  }

  /// Test for getting table cell.
  Future<void> testGetTableCell() async
  {
    final String remoteFileName = 'TestGetTableCell.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableCellRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableCell(request);
  }

  /// Test for deleting cell.
  Future<void> testDeleteTableCell() async
  {
    final String remoteFileName = 'TestDeleteTableCell.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteTableCellRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteTableCell(request);
  }

  /// Test for adding cell.
  Future<void> testInsertTableCell() async
  {
    final String remoteFileName = 'TestInsertTableCell.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCell = new TableCellInsert();


    final request = new InsertTableCellRequest(
      remoteFileName,
      requestCell,
      'sections/0/tables/2/rows/0',
      folder: remoteDataFolder
    );

    await this.context.getApi().insertTableCell(request);
  }

  /// Test for getting cell format.
  Future<void> testGetTableCellFormat() async
  {
    final String remoteFileName = 'TestGetTableCellFormat.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetTableCellFormatRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().getTableCellFormat(request);
  }

  /// Test for updating cell format.
  Future<void> testUpdateTableCellFormat() async
  {
    final String remoteFileName = 'TestUpdateTableCellFormat.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFormat = new TableCellFormat();
    requestFormat.bottomPadding = 5;
    requestFormat.fitText = true;
    requestFormat.horizontalMerge = TableCellFormat_HorizontalMergeEnum.first;
    requestFormat.wrapText = true;

    final request = new UpdateTableCellFormatRequest(
      remoteFileName,
      requestFormat,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().updateTableCellFormat(request);
  }

  /// Test for table rendering.
  Future<void> testRenderTable() async
  {
    final String remoteFileName = 'TestRenderTable.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderTableRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().renderTable(request);
  }

  /// Test for table rendering without node path.
  Future<void> testRenderTableWithoutNodePath() async
  {
    final String remoteFileName = 'TestRenderTableWithoutNodePath.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new RenderTableRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().renderTable(request);
  }
}
