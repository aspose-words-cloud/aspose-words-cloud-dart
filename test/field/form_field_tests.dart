/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_tests.dart">
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

/// Example of how to work with form field.
class FormFieldTests
{
  final TestContext context;
  String remoteDataFolder;
  String fieldFolder;

  FormFieldTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/FormFields';
    fieldFolder = 'DocumentElements/FormFields';
  }

  /// Test for posting form field.
  Future<void> testUpdateFormField() async
  {
    final remoteFileName = 'TestUpdateFormField.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = 'No name';

    final request = UpdateFormFieldRequest(
      remoteFileName,
      0,
      formField,
      nodePath: 'sections/0',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().updateFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
    expect(result.formField.statusText, '');
  }

  /// Test for posting form field online.
  Future<void> testUpdateFormFieldOnline() async
  {
    final documentData = await context.loadBinaryFile(fieldFolder + '/FormFilled.docx');
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = 'No name';

    final request = UpdateFormFieldOnlineRequest(
      documentData,
      formField,
      0,
      nodePath: 'sections/0'
    );

    await context.getApi().updateFormFieldOnline(request);
  }

  /// Test for posting form field without node path.
  Future<void> testUpdateFormFieldWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateFormFieldWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = 'No name';

    final request = UpdateFormFieldRequest(
      remoteFileName,
      0,
      formField,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().updateFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
    expect(result.formField.statusText, '');
  }

  /// Test for getting form field.
  Future<void> testGetFormField() async
  {
    final remoteFileName = 'TestGetFormField.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetFormFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
  }

  /// Test for getting form field online.
  Future<void> testGetFormFieldOnline() async
  {
    final documentData = await context.loadBinaryFile(fieldFolder + '/FormFilled.docx');

    final request = GetFormFieldOnlineRequest(
      documentData,
      0,
      nodePath: 'sections/0'
    );

    await context.getApi().getFormFieldOnline(request);
  }

  /// Test for getting form field without node path.
  Future<void> testGetFormFieldWithoutNodePath() async
  {
    final remoteFileName = 'TestGetFormFieldWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetFormFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
  }

  /// Test for getting form fields.
  Future<void> testGetFormFields() async
  {
    final remoteFileName = 'TestGetFormFields.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetFormFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFormFields(request);
    expect(result.formFields, isNotNull);
    expect(result.formFields.list, isNotNull);
    expect(result.formFields.list.length, 5);
    expect(result.formFields.list[0].name, 'FullName');
  }

  /// Test for getting form fields online.
  Future<void> testGetFormFieldsOnline() async
  {
    final documentData = await context.loadBinaryFile(fieldFolder + '/FormFilled.docx');

    final request = GetFormFieldsOnlineRequest(
      documentData,
      nodePath: 'sections/0'
    );

    await context.getApi().getFormFieldsOnline(request);
  }

  /// Test for getting form fields without node path.
  Future<void> testGetFormFieldsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetFormFieldsWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetFormFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFormFields(request);
    expect(result.formFields, isNotNull);
    expect(result.formFields.list, isNotNull);
    expect(result.formFields.list.length, 5);
    expect(result.formFields.list[0].name, 'FullName');
  }

  /// Test for insert form field without node path.
  Future<void> testInsertFormField() async
  {
    final remoteFileName = 'TestInsertFormField.docx';
    await context.uploadFile('Common/test_multi_pages.docx', remoteDataFolder + '/' + remoteFileName);
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = '123';
    formField.textInputFormat = 'UPPERCASE';

    final request = InsertFormFieldRequest(
      remoteFileName,
      formField,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
    expect(result.formField.statusText, '');
  }

  /// Test for insert form field without node path online.
  Future<void> testInsertFormFieldOnline() async
  {
    final documentData = await context.loadBinaryFile(fieldFolder + '/FormFilled.docx');
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = '123';
    formField.textInputFormat = 'UPPERCASE';

    final request = InsertFormFieldOnlineRequest(
      documentData,
      formField,
      nodePath: 'sections/0/paragraphs/0'
    );

    await context.getApi().insertFormFieldOnline(request);
  }

  /// Test for insert form field without node path.
  Future<void> testInsertFormFieldWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertFormFieldWithoutNodePath.docx';
    await context.uploadFile('Common/test_multi_pages.docx', remoteDataFolder + '/' + remoteFileName);
    final formField = FormFieldTextInput();
    formField.name = 'FullName';
    formField.enabled = true;
    formField.calculateOnExit = true;
    formField.statusText = '';
    formField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    formField.textInputDefault = '123';
    formField.textInputFormat = 'UPPERCASE';

    final request = InsertFormFieldRequest(
      remoteFileName,
      formField,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertFormField(request);
    expect(result.formField, isNotNull);
    expect(result.formField.name, 'FullName');
    expect(result.formField.statusText, '');
  }

  /// Test for deleting form field.
  Future<void> testDeleteFormField() async
  {
    final remoteFileName = 'TestDeleteFormField.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFormFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteFormField(request);
  }

  /// Test for deleting form field online.
  Future<void> testDeleteFormFieldOnline() async
  {
    final documentData = await context.loadBinaryFile(fieldFolder + '/FormFilled.docx');

    final request = DeleteFormFieldOnlineRequest(
      documentData,
      0,
      nodePath: 'sections/0'
    );

    await context.getApi().deleteFormFieldOnline(request);
  }

  /// Test for deleting form field without node path.
  Future<void> testDeleteFormFieldWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteFormFieldWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFormFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteFormField(request);
  }
}
