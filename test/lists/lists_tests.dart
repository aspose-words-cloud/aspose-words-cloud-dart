/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="lists_tests.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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
import 'package:test/test.dart';

import '../test_context.dart';

/// Example of how to work with lists.
class ListsTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  ListsTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Lists';
    localFile = 'DocumentElements/Lists/ListsGet.doc';
  }

  /// Test for getting lists from document.
  Future<void> testGetLists() async
  {
    final remoteFileName = 'TestGetLists.doc';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetListsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getLists(request);
    expect(result.lists, isNotNull);
    expect(result.lists.listInfo, isNotNull);
    expect(result.lists.listInfo.length, 2);
    expect(result.lists.listInfo[0].listId, 1);
  }

  /// Test for getting lists from document online.
  Future<void> testGetListsOnline() async
  {

    final request = GetListsOnlineRequest(
      await context.loadBinaryFile(localFile)
    );

    await context.getApi().getListsOnline(request);
  }

  /// Test for getting list from document.
  Future<void> testGetList() async
  {
    final remoteFileName = 'TestGetList.doc';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetListRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getList(request);
    expect(result.list, isNotNull);
    expect(result.list.listId, 1);
  }

  /// Test for getting list from document online.
  Future<void> testGetListOnline() async
  {

    final request = GetListOnlineRequest(
      await context.loadBinaryFile(localFile),
      1
    );

    await context.getApi().getListOnline(request);
  }

  /// Test for updating list from document.
  Future<void> testUpdateList() async
  {
    final remoteFileName = 'TestUpdateList.doc';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListUpdate = ListUpdate();
    requestListUpdate.isRestartAtEachSection = true;

    final request = UpdateListRequest(
      remoteFileName,
      1,
      requestListUpdate,
      folder: remoteDataFolder
    );

    await context.getApi().updateList(request);
  }

  /// Test for updating list from document online.
  Future<void> testUpdateListOnline() async
  {
    var requestListUpdate = ListUpdate();
    requestListUpdate.isRestartAtEachSection = true;

    final request = UpdateListOnlineRequest(
      await context.loadBinaryFile(localFile),
      1,
      requestListUpdate
    );

    var result = await context.getApi().updateListOnline(request);
    expect(result.model.list, isNotNull);
    expect(result.model.list.listId, 1);
    expect(result.model.list.isRestartAtEachSection, isTrue);
  }

  /// Test for updating list level from document.
  Future<void> testUpdateListLevel() async
  {
    final remoteFileName = 'TestUpdateListLevel.doc';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListUpdate = ListLevelUpdate();
    requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;

    final request = UpdateListLevelRequest(
      remoteFileName,
      1,
      1,
      requestListUpdate,
      folder: remoteDataFolder
    );

    await context.getApi().updateListLevel(request);
  }

  /// Test for updating list level from document online.
  Future<void> testUpdateListLevelOnline() async
  {
    var requestListUpdate = ListLevelUpdate();
    requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;

    final request = UpdateListLevelOnlineRequest(
      await context.loadBinaryFile(localFile),
      1,
      requestListUpdate,
      1
    );

    var result = await context.getApi().updateListLevelOnline(request);
    expect(result.model.list, isNotNull);
    expect(result.model.list.listLevels, isNotNull);
    expect(result.model.list.listLevels.listLevel, isNotNull);
    expect(result.model.list.listLevels.listLevel.length, 9);

  }

  /// Test for inserting list from document.
  Future<void> testInsertList() async
  {
    final remoteFileName = 'TestInsertList.doc';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListInsert = ListInsert();
    requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;

    final request = InsertListRequest(
      remoteFileName,
      requestListInsert,
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertList(request);
    expect(result.list, isNotNull);
    expect(result.list.listId, 3);
  }

  /// Test for inserting list from document online.
  Future<void> testInsertListOnline() async
  {
    var requestListInsert = ListInsert();
    requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;

    final request = InsertListOnlineRequest(
      await context.loadBinaryFile(localFile),
      requestListInsert
    );

    await context.getApi().insertListOnline(request);
  }
}
