/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="lists_tests.dart">
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
import 'package:test/test.dart';

/// Example of how to work with lists.
class ListsTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  ListsTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Lists';
    localFile = 'DocumentElements/Lists/ListsGet.doc';
  }

  void runAll() async {
    await test('Lists.GetLists', () async => await this.testGetLists());
    await test('Lists.GetList', () async => await this.testGetList());
    await test('Lists.UpdateList', () async => await this.testUpdateList());
    await test('Lists.UpdateListLevel', () async => await this.testUpdateListLevel());
    await test('Lists.InsertList', () async => await this.testInsertList());
  }

  /// Test for getting lists from document.
  void testGetLists() async
  {
    final String remoteFileName = 'TestGetLists.doc';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetListsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getLists(request);
  }

  /// Test for getting list from document.
  void testGetList() async
  {
    final String remoteFileName = 'TestGetList.doc';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new GetListRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getList(request);
  }

  /// Test for updating list from document.
  void testUpdateList() async
  {
    final String remoteFileName = 'TestUpdateList.doc';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListUpdate = new ListUpdate();
    requestListUpdate.isRestartAtEachSection = true;

    final request = new UpdateListRequest(
      remoteFileName,
      requestListUpdate,
      1,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateList(request);
  }

  /// Test for updating list level from document.
  void testUpdateListLevel() async
  {
    final String remoteFileName = 'TestUpdateListLevel.doc';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListUpdate = new ListLevelUpdate();
    requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;

    final request = new UpdateListLevelRequest(
      remoteFileName,
      requestListUpdate,
      1,
      1,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateListLevel(request);
  }

  /// Test for inserting list from document.
  void testInsertList() async
  {
    final String remoteFileName = 'TestInsertList.doc';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestListInsert = new ListInsert();
    requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;

    final request = new InsertListRequest(
      remoteFileName,
      requestListInsert,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertList(request);
  }
}
