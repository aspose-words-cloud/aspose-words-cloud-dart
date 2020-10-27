/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_tests.dart">
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

/// Example of how to work with form field.
class FormFieldTests
{
  final TestContext context;
  String remoteDataFolder;
  String fieldFolder;

  FormFieldTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/FormFields';
    fieldFolder = 'DocumentElements/FormFields';
  }

  /// Test for posting form field.
  void testUpdateFormField() async
  {
    final String remoteFileName = 'TestUpdateFormField.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);
    var requestFormField = new FormFieldTextInput();
    requestFormField.name = 'FullName';
    requestFormField.enabled = true;
    requestFormField.calculateOnExit = true;
    requestFormField.statusText = '';
    requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    requestFormField.textInputDefault = 'No name';

    final request = new UpdateFormFieldRequest(
      remoteFileName,
      requestFormField,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().updateFormField(request);
  }

  /// Test for posting form field without node path.
  void testUpdateFormFieldWithoutNodePath() async
  {
    final String remoteFileName = 'TestUpdateFormFieldWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);
    var requestFormField = new FormFieldTextInput();
    requestFormField.name = 'FullName';
    requestFormField.enabled = true;
    requestFormField.calculateOnExit = true;
    requestFormField.statusText = '';
    requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    requestFormField.textInputDefault = 'No name';

    final request = new UpdateFormFieldRequest(
      remoteFileName,
      requestFormField,
      0,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().updateFormField(request);
  }

  /// Test for getting form field.
  void testGetFormField() async
  {
    final String remoteFileName = 'TestGetFormField.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFormFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFormField(request);
  }

  /// Test for getting form field without node path.
  void testGetFormFieldWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetFormFieldWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFormFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFormField(request);
  }

  /// Test for getting form fields.
  void testGetFormFields() async
  {
    final String remoteFileName = 'TestGetFormFields.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFormFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFormFields(request);
  }

  /// Test for getting form fields without node path.
  void testGetFormFieldsWithoutNodePath() async
  {
    final String remoteFileName = 'TestGetFormFieldsWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetFormFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFormFields(request);
  }

  /// Test for insert form field without node path.
  void testInsertFormField() async
  {
    final String remoteFileName = 'TestInsertFormField.docx';
    await this.context.uploadFile('Common/test_multi_pages.docx', remoteDataFolder + '/' + remoteFileName);
    var requestFormField = new FormFieldTextInput();
    requestFormField.name = 'FullName';
    requestFormField.enabled = true;
    requestFormField.calculateOnExit = true;
    requestFormField.statusText = '';
    requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    requestFormField.textInputDefault = '123';
    requestFormField.textInputFormat = 'UPPERCASE';

    final request = new InsertFormFieldRequest(
      remoteFileName,
      requestFormField,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().insertFormField(request);
  }

  /// Test for insert form field without node path.
  void testInsertFormFieldWithoutNodePath() async
  {
    final String remoteFileName = 'TestInsertFormFieldWithoutNodePath.docx';
    await this.context.uploadFile('Common/test_multi_pages.docx', remoteDataFolder + '/' + remoteFileName);
    var requestFormField = new FormFieldTextInput();
    requestFormField.name = 'FullName';
    requestFormField.enabled = true;
    requestFormField.calculateOnExit = true;
    requestFormField.statusText = '';
    requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
    requestFormField.textInputDefault = '123';
    requestFormField.textInputFormat = 'UPPERCASE';

    final request = new InsertFormFieldRequest(
      remoteFileName,
      requestFormField,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().insertFormField(request);
  }

  /// Test for deleting form field.
  void testDeleteFormField() async
  {
    final String remoteFileName = 'TestDeleteFormField.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFormFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().deleteFormField(request);
  }

  /// Test for deleting form field without node path.
  void testDeleteFormFieldWithoutNodePath() async
  {
    final String remoteFileName = 'TestDeleteFormFieldWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/FormFilled.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFormFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    await this.context.getApi().deleteFormField(request);
  }
}
