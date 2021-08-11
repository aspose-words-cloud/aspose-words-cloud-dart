/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="aspose_words_cloud_tests.dart">
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

@Timeout(Duration(minutes: 5))
import 'dart:convert';
import 'dart:io';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:test/test.dart';

import './batch_tests.dart';
import './bookmark/bookmark_tests.dart';
import './compatibility/compatibility_tests.dart';
import './document/append_document_tests.dart';
import './document/classification_tests.dart';
import './document/comment_tests.dart';
import './document/compare_document_tests.dart';
import './document/convert_document_tests.dart';
import './document/custom_xml_parts_tests.dart';
import './document/document_statistics_tests.dart';
import './document/document_tests.dart';
import './document/document_with_format_tests.dart';
import './document/load_web_document_tests.dart';
import './document/password_encryption_tests.dart';
import './document/revisions_tests.dart';
import './document/split_document_to_format_tests.dart';
import './document_properties/document_properties_tests.dart';
import './document_protection/document_protection_tests.dart';
import './drawing/drawing_objects_tests.dart';
import './encoding_tests.dart';
import './examples_tests.dart';
import './field/field_tests.dart';
import './field/form_field_tests.dart';
import './font/font_tests.dart';
import './footnote/footnote_tests.dart';
import './header_footer/header_footer_tests.dart';
import './hyperlink/hyperlink_tests.dart';
import './lists/lists_tests.dart';
import './macros/macros_tests.dart';
import './mail_merge/execute_mail_merge_tests.dart';
import './mail_merge/execute_template_tests.dart';
import './mail_merge/mail_merge_fileds_tests.dart';
import './math_object/math_object_tests.dart';
import './page_setup/page_setup_tests.dart';
import './paragraph/paragraph_tests.dart';
import './range/range_tests.dart';
import './readme_tests.dart';
import './report/build_report_tests.dart';
import './run/run_tests.dart';
import './sections/section_tests.dart';
import './storage/file_tests.dart';
import './storage/folder_tests.dart';
import './styles/styles_tests.dart';
import './table/table_border_tests.dart';
import './table/table_tests.dart';
import './test_context.dart';
import './text/text_tests.dart';
import './watermark/watermark_tests.dart';

TestContext testContext;

void main() {
  setUpAll(() async {
    final file = File('${Directory.current.path}/settings/servercreds.json');
    if (await file.exists() == false) {
      throw Exception('Please put ClientSecret and ClientId credentials to "SDK_ROOT/settings/servercreds.json".');
    }

    final jsonString = await file.readAsString();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final config = Configuration.fromJson(json);
    testContext = TestContext(config);
  });

  group('Readme', () {
    test('TestReadme1', () async => await ReadmeTests(testContext).testReadme1());
  });

  group('Encoding', () {
    test('TestEncoding1', () async => await EncodingTests(testContext).testEncoding1());
  });

  group('Batch', () {
    test('TestBatch1', () async => await BatchTests(testContext).testBatch1());
  });

  group('Bookmark', () {
    test('GetBookmarks', () async => await BookmarkTests(testContext).testGetBookmarks());
    test('GetBookmarksOnline', () async => await BookmarkTests(testContext).testGetBookmarksOnline());
    test('GetBookmarkByName', () async => await BookmarkTests(testContext).testGetBookmarkByName());
    test('GetBookmarkByNameOnline', () async => await BookmarkTests(testContext).testGetBookmarkByNameOnline());
    test('UpdateBookmark', () async => await BookmarkTests(testContext).testUpdateBookmark());
    test('UpdateBookmarkOnline', () async => await BookmarkTests(testContext).testUpdateBookmarkOnline());
  });

  group('Compatibility', () {
    test('OptimizeDocument', () async => await CompatibilityTests(testContext).testOptimizeDocument());
    test('OptimizeDocumentOnline', () async => await CompatibilityTests(testContext).testOptimizeDocumentOnline());
  });

  group('AppendDocument', () {
    test('AppendDocument', () async => await AppendDocumentTests(testContext).testAppendDocument());
    test('AppendDocumentOnline', () async => await AppendDocumentTests(testContext).testAppendDocumentOnline());
  });

  group('Classification', () {
    test('Classify', () async => await ClassificationTests(testContext).testClassify());
    test('ClassifyDocument', () async => await ClassificationTests(testContext).testClassifyDocument());
    test('ClassifyDocumentOnline', () async => await ClassificationTests(testContext).testClassifyDocumentOnline());
  });

  group('Comment', () {
    test('GetComment', () async => await CommentTests(testContext).testGetComment());
    test('GetCommentOnline', () async => await CommentTests(testContext).testGetCommentOnline());
    test('GetComments', () async => await CommentTests(testContext).testGetComments());
    test('GetCommentsOnline', () async => await CommentTests(testContext).testGetCommentsOnline());
    test('InsertComment', () async => await CommentTests(testContext).testInsertComment());
    test('InsertCommentOnline', () async => await CommentTests(testContext).testInsertCommentOnline());
    test('UpdateComment', () async => await CommentTests(testContext).testUpdateComment());
    test('UpdateCommentOnline', () async => await CommentTests(testContext).testUpdateCommentOnline());
    test('DeleteComment', () async => await CommentTests(testContext).testDeleteComment());
    test('DeleteCommentOnline', () async => await CommentTests(testContext).testDeleteCommentOnline());
    test('DeleteComments', () async => await CommentTests(testContext).testDeleteComments());
    test('DeleteCommentsOnline', () async => await CommentTests(testContext).testDeleteCommentsOnline());
  });

  group('CompareDocument', () {
    test('CompareDocument', () async => await CompareDocumentTests(testContext).testCompareDocument());
    test('CompareDocumentOnline', () async => await CompareDocumentTests(testContext).testCompareDocumentOnline());
    test('CompareTwoDocumentOnline', () async => await CompareDocumentTests(testContext).testCompareTwoDocumentOnline());
  });

  group('ConvertDocument', () {
    test('SaveAs', () async => await ConvertDocumentTests(testContext).testSaveAs());
    test('SaveAsOnline', () async => await ConvertDocumentTests(testContext).testSaveAsOnline());
    test('SaveAsDocx', () async => await ConvertDocumentTests(testContext).testSaveAsDocx());
    test('SaveAsTiff', () async => await ConvertDocumentTests(testContext).testSaveAsTiff());
    test('SaveAsTiffOnline', () async => await ConvertDocumentTests(testContext).testSaveAsTiffOnline());
    test('ConvertDocument', () async => await ConvertDocumentTests(testContext).testConvertDocument());
  });

  group('CustomXmlParts', () {
    test('GetCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPart());
    test('GetCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPartOnline());
    test('GetCustomXmlParts', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlParts());
    test('GetCustomXmlPartsOnline', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPartsOnline());
    test('InsertCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testInsertCustomXmlPart());
    test('InsertCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testInsertCustomXmlPartOnline());
    test('UpdateCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testUpdateCustomXmlPart());
    test('UpdateCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testUpdateCustomXmlPartOnline());
    test('DeleteCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPart());
    test('DeleteCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPartOnline());
    test('DeleteCustomXmlParts', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlParts());
    test('DeleteCustomXmlPartsOnline', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPartsOnline());
  });

  group('Document', () {
    test('GetDocument', () async => await DocumentTests(testContext).testGetDocument());
    test('CreateDocument', () async => await DocumentTests(testContext).testCreateDocument());
  });

  group('DocumentStatistics', () {
    test('GetDocumentStatistics', () async => await DocumentStatisticsTests(testContext).testGetDocumentStatistics());
    test('GetDocumentStatisticsOnline', () async => await DocumentStatisticsTests(testContext).testGetDocumentStatisticsOnline());
  });

  group('DocumentWithFormat', () {
    test('GetDocumentWithFormat', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormat());
    test('GetDocumentWithFormatAndOutPath', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormatAndOutPath());
  });

  group('LoadWebDocument', () {
    test('LoadWebDocument', () async => await LoadWebDocumentTests(testContext).testLoadWebDocument());
  });

  group('PasswordEncryption', () {
    test('GetPublicKey', () async => await PasswordEncryptionTests(testContext).testGetPublicKey());
  });

  group('Revisions', () {
    test('AcceptAllRevisions', () async => await RevisionsTests(testContext).testAcceptAllRevisions());
    test('AcceptAllRevisionsOnline', () async => await RevisionsTests(testContext).testAcceptAllRevisionsOnline());
    test('RejectAllRevisions', () async => await RevisionsTests(testContext).testRejectAllRevisions());
    test('RejectAllRevisionsOnline', () async => await RevisionsTests(testContext).testRejectAllRevisionsOnline());
  });

  group('SplitDocumentToFormat', () {
    test('SplitDocument', () async => await SplitDocumentToFormatTests(testContext).testSplitDocument());
    test('SplitDocumentOnline', () async => await SplitDocumentToFormatTests(testContext).testSplitDocumentOnline());
  });

  group('DocumentProperties', () {
    test('GetDocumentProperties', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperties());
    test('GetDocumentPropertiesOnline', () async => await DocumentPropertiesTests(testContext).testGetDocumentPropertiesOnline());
    test('GetDocumentProperty', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperty());
    test('GetDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testGetDocumentPropertyOnline());
    test('DeleteDocumentProperty', () async => await DocumentPropertiesTests(testContext).testDeleteDocumentProperty());
    test('DeleteDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testDeleteDocumentPropertyOnline());
    test('UpdateDocumentProperty', () async => await DocumentPropertiesTests(testContext).testUpdateDocumentProperty());
    test('UpdateDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testUpdateDocumentPropertyOnline());
  });

  group('DocumentProtection', () {
    test('ProtectDocument', () async => await DocumentProtectionTests(testContext).testProtectDocument());
    test('ProtectDocumentOnline', () async => await DocumentProtectionTests(testContext).testProtectDocumentOnline());
    test('GetDocumentProtection', () async => await DocumentProtectionTests(testContext).testGetDocumentProtection());
    test('GetDocumentProtectionOnline', () async => await DocumentProtectionTests(testContext).testGetDocumentProtectionOnline());
    test('DeleteUnprotectDocument', () async => await DocumentProtectionTests(testContext).testDeleteUnprotectDocument());
    test('DeleteUnprotectDocumentOnline', () async => await DocumentProtectionTests(testContext).testDeleteUnprotectDocumentOnline());
  });

  group('DrawingObjects', () {
    test('GetDocumentDrawingObjects', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectsOnline());
    test('GetDocumentDrawingObjectsWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectsWithoutNodePath());
    test('GetDocumentDrawingObjectByIndex', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndexOnline());
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndexWithoutNodePath());
    test('RenderDrawingObject', () async => await DrawingObjectsTests(testContext).testRenderDrawingObject());
    test('RenderDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testRenderDrawingObjectOnline());
    test('RenderDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testRenderDrawingObjectWithoutNodePath());
    test('GetDocumentDrawingObjectImageData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageDataOnline());
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageDataWithoutNodePath());
    test('GetDocumentDrawingObjectOleData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleDataOnline());
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleDataWithoutNodePath());
    test('InsertDrawingObject', () async => await DrawingObjectsTests(testContext).testInsertDrawingObject());
    test('InsertDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testInsertDrawingObjectOnline());
    test('InsertDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testInsertDrawingObjectWithoutNodePath());
    test('DeleteDrawingObject', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObject());
    test('DeleteDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObjectOnline());
    test('DeleteDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObjectWithoutNodePath());
    test('UpdateDrawingObject', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObject());
    test('UpdateDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObjectOnline());
    test('UpdateDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObjectWithoutNodePath());
  });

  group('Field', () {
    test('GetFields', () async => await FieldTests(testContext).testGetFields());
    test('GetFieldsOnline', () async => await FieldTests(testContext).testGetFieldsOnline());
    test('GetFieldsWithoutNodePath', () async => await FieldTests(testContext).testGetFieldsWithoutNodePath());
    test('GetField', () async => await FieldTests(testContext).testGetField());
    test('GetFieldOnline', () async => await FieldTests(testContext).testGetFieldOnline());
    test('GetFieldWithoutNodePath', () async => await FieldTests(testContext).testGetFieldWithoutNodePath());
    test('InsertField', () async => await FieldTests(testContext).testInsertField());
    test('InsertFieldOnline', () async => await FieldTests(testContext).testInsertFieldOnline());
    test('InsertFieldWithoutNodePath', () async => await FieldTests(testContext).testInsertFieldWithoutNodePath());
    test('UpdateField', () async => await FieldTests(testContext).testUpdateField());
    test('UpdateFieldOnline', () async => await FieldTests(testContext).testUpdateFieldOnline());
    test('InsertPageNumbers', () async => await FieldTests(testContext).testInsertPageNumbers());
    test('InsertPageNumbersOnline', () async => await FieldTests(testContext).testInsertPageNumbersOnline());
    test('DeleteField', () async => await FieldTests(testContext).testDeleteField());
    test('DeleteFieldOnline', () async => await FieldTests(testContext).testDeleteFieldOnline());
    test('DeleteFieldWithoutNodePath', () async => await FieldTests(testContext).testDeleteFieldWithoutNodePath());
    test('DeleteParagraphFields', () async => await FieldTests(testContext).testDeleteParagraphFields());
    test('DeleteParagraphFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteParagraphFieldsWithoutNodePath());
    test('DeleteSectionFields', () async => await FieldTests(testContext).testDeleteSectionFields());
    test('DeleteSectionFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteSectionFieldsWithoutNodePath());
    test('DeleteSectionParagraphFields', () async => await FieldTests(testContext).testDeleteSectionParagraphFields());
    test('DeleteDocumentFields', () async => await FieldTests(testContext).testDeleteDocumentFields());
    test('DeleteDocumentFieldsOnline', () async => await FieldTests(testContext).testDeleteDocumentFieldsOnline());
    test('UpdateDocumentFields', () async => await FieldTests(testContext).testUpdateDocumentFields());
    test('UpdateDocumentFieldsOnline', () async => await FieldTests(testContext).testUpdateDocumentFieldsOnline());
  });

  group('FormField', () {
    test('UpdateFormField', () async => await FormFieldTests(testContext).testUpdateFormField());
    test('UpdateFormFieldOnline', () async => await FormFieldTests(testContext).testUpdateFormFieldOnline());
    test('UpdateFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testUpdateFormFieldWithoutNodePath());
    test('GetFormField', () async => await FormFieldTests(testContext).testGetFormField());
    test('GetFormFieldOnline', () async => await FormFieldTests(testContext).testGetFormFieldOnline());
    test('GetFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldWithoutNodePath());
    test('GetFormFields', () async => await FormFieldTests(testContext).testGetFormFields());
    test('GetFormFieldsOnline', () async => await FormFieldTests(testContext).testGetFormFieldsOnline());
    test('GetFormFieldsWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldsWithoutNodePath());
    test('InsertFormField', () async => await FormFieldTests(testContext).testInsertFormField());
    test('InsertFormFieldOnline', () async => await FormFieldTests(testContext).testInsertFormFieldOnline());
    test('InsertFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testInsertFormFieldWithoutNodePath());
    test('DeleteFormField', () async => await FormFieldTests(testContext).testDeleteFormField());
    test('DeleteFormFieldOnline', () async => await FormFieldTests(testContext).testDeleteFormFieldOnline());
    test('DeleteFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testDeleteFormFieldWithoutNodePath());
  });

  group('Font', () {
    test('ResetCache', () async => await FontTests(testContext).testResetCache());
    test('GetAvailableFonts', () async => await FontTests(testContext).testGetAvailableFonts());
  });

  group('Footnote', () {
    test('InsertFootnote', () async => await FootnoteTests(testContext).testInsertFootnote());
    test('InsertFootnoteOnline', () async => await FootnoteTests(testContext).testInsertFootnoteOnline());
    test('InsertFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testInsertFootnoteWithoutNodePath());
    test('DeleteFootnote', () async => await FootnoteTests(testContext).testDeleteFootnote());
    test('DeleteFootnoteOnline', () async => await FootnoteTests(testContext).testDeleteFootnoteOnline());
    test('DeleteFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testDeleteFootnoteWithoutNodePath());
    test('GetFootnotes', () async => await FootnoteTests(testContext).testGetFootnotes());
    test('GetFootnotesOnline', () async => await FootnoteTests(testContext).testGetFootnotesOnline());
    test('GetFootnotesWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnotesWithoutNodePath());
    test('GetFootnote', () async => await FootnoteTests(testContext).testGetFootnote());
    test('GetFootnoteOnline', () async => await FootnoteTests(testContext).testGetFootnoteOnline());
    test('GetFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnoteWithoutNodePath());
    test('UpdateFootnote', () async => await FootnoteTests(testContext).testUpdateFootnote());
    test('UpdateFootnoteOnline', () async => await FootnoteTests(testContext).testUpdateFootnoteOnline());
    test('UpdateFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testUpdateFootnoteWithoutNodePath());
  });

  group('HeaderFooter', () {
    test('GetHeaderFooters', () async => await HeaderFooterTests(testContext).testGetHeaderFooters());
    test('GetHeaderFootersOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFootersOnline());
    test('GetHeaderFooter', () async => await HeaderFooterTests(testContext).testGetHeaderFooter());
    test('GetHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOnline());
    test('GetHeaderFooterOfSection', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOfSection());
    test('GetHeaderFooterOfSectionOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOfSectionOnline());
    test('DeleteHeaderFooter', () async => await HeaderFooterTests(testContext).testDeleteHeaderFooter());
    test('DeleteHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testDeleteHeaderFooterOnline());
    test('DeleteHeadersFooters', () async => await HeaderFooterTests(testContext).testDeleteHeadersFooters());
    test('DeleteHeadersFootersOnline', () async => await HeaderFooterTests(testContext).testDeleteHeadersFootersOnline());
    test('InsertHeaderFooter', () async => await HeaderFooterTests(testContext).testInsertHeaderFooter());
    test('InsertHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testInsertHeaderFooterOnline());
  });

  group('Hyperlink', () {
    test('GetDocumentHyperlinkByIndex', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinkByIndexOnline', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinkByIndexOnline());
    test('GetDocumentHyperlinks', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinks());
    test('GetDocumentHyperlinksOnline', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinksOnline());
  });

  group('Lists', () {
    test('GetLists', () async => await ListsTests(testContext).testGetLists());
    test('GetListsOnline', () async => await ListsTests(testContext).testGetListsOnline());
    test('GetList', () async => await ListsTests(testContext).testGetList());
    test('GetListOnline', () async => await ListsTests(testContext).testGetListOnline());
    test('UpdateList', () async => await ListsTests(testContext).testUpdateList());
    test('UpdateListOnline', () async => await ListsTests(testContext).testUpdateListOnline());
    test('UpdateListLevel', () async => await ListsTests(testContext).testUpdateListLevel());
    test('UpdateListLevelOnline', () async => await ListsTests(testContext).testUpdateListLevelOnline());
    test('InsertList', () async => await ListsTests(testContext).testInsertList());
    test('InsertListOnline', () async => await ListsTests(testContext).testInsertListOnline());
  });

  group('Macros', () {
    test('DeleteMacros', () async => await MacrosTests(testContext).testDeleteMacros());
    test('DeleteMacrosOnline', () async => await MacrosTests(testContext).testDeleteMacrosOnline());
  });

  group('ExecuteMailMerge', () {
    test('ExecuteMailMergeOnline', () async => await ExecuteMailMergeTests(testContext).testExecuteMailMergeOnline());
    test('ExecuteMailMerge', () async => await ExecuteMailMergeTests(testContext).testExecuteMailMerge());
  });

  group('ExecuteTemplate', () {
    test('ExecuteTemplate', () async => await ExecuteTemplateTests(testContext).testExecuteTemplate());
    test('ExecuteTemplateOnline', () async => await ExecuteTemplateTests(testContext).testExecuteTemplateOnline());
  });

  group('MailMergeFileds', () {
    test('GetDocumentFieldNamesOnline', () async => await MailMergeFiledsTests(testContext).testGetDocumentFieldNamesOnline());
    test('GetDocumentFieldNames', () async => await MailMergeFiledsTests(testContext).testGetDocumentFieldNames());
  });

  group('MathObject', () {
    test('GetOfficeMathObjects', () async => await MathObjectTests(testContext).testGetOfficeMathObjects());
    test('GetOfficeMathObjectsOnline', () async => await MathObjectTests(testContext).testGetOfficeMathObjectsOnline());
    test('GetOfficeMathObjectsWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectsWithoutNodePath());
    test('GetOfficeMathObject', () async => await MathObjectTests(testContext).testGetOfficeMathObject());
    test('GetOfficeMathObjectOnline', () async => await MathObjectTests(testContext).testGetOfficeMathObjectOnline());
    test('GetOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectWithoutNodePath());
    test('RenderMathObject', () async => await MathObjectTests(testContext).testRenderMathObject());
    test('RenderMathObjectOnline', () async => await MathObjectTests(testContext).testRenderMathObjectOnline());
    test('RenderMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testRenderMathObjectWithoutNodePath());
    test('DeleteOfficeMathObject', () async => await MathObjectTests(testContext).testDeleteOfficeMathObject());
    test('DeleteOfficeMathObjectOnline', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectOnline());
    test('DeleteOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectWithoutNodePath());
  });

  group('PageSetup', () {
    test('GetSectionPageSetup', () async => await PageSetupTests(testContext).testGetSectionPageSetup());
    test('GetSectionPageSetupOnline', () async => await PageSetupTests(testContext).testGetSectionPageSetupOnline());
    test('UpdateSectionPageSetup', () async => await PageSetupTests(testContext).testUpdateSectionPageSetup());
    test('UpdateSectionPageSetupOnline', () async => await PageSetupTests(testContext).testUpdateSectionPageSetupOnline());
    test('GetRenderPage', () async => await PageSetupTests(testContext).testGetRenderPage());
    test('GetRenderPageOnline', () async => await PageSetupTests(testContext).testGetRenderPageOnline());
  });

  group('Paragraph', () {
    test('GetDocumentParagraphByIndex', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndex());
    test('GetDocumentParagraphOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphOnline());
    test('GetDocumentParagraphByIndexWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndexWithoutNodePath());
    test('GetDocumentParagraphs', () async => await ParagraphTests(testContext).testGetDocumentParagraphs());
    test('GetDocumentParagraphsOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphsOnline());
    test('GetDocumentParagraphsWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphsWithoutNodePath());
    test('GetDocumentParagraphRun', () async => await ParagraphTests(testContext).testGetDocumentParagraphRun());
    test('GetDocumentParagraphRunOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunOnline());
    test('GetDocumentParagraphRunFont', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunFont());
    test('GetDocumentParagraphRunFontOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunFontOnline());
    test('GetParagraphRuns', () async => await ParagraphTests(testContext).testGetParagraphRuns());
    test('GetParagraphRunsOnline', () async => await ParagraphTests(testContext).testGetParagraphRunsOnline());
    test('UpdateRunFont', () async => await ParagraphTests(testContext).testUpdateRunFont());
    test('UpdateRunFontOnline', () async => await ParagraphTests(testContext).testUpdateRunFontOnline());
    test('InsertParagraph', () async => await ParagraphTests(testContext).testInsertParagraph());
    test('InsertParagraphOnline', () async => await ParagraphTests(testContext).testInsertParagraphOnline());
    test('InsertParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphWithoutNodePath());
    test('RenderParagraph', () async => await ParagraphTests(testContext).testRenderParagraph());
    test('RenderParagraphOnline', () async => await ParagraphTests(testContext).testRenderParagraphOnline());
    test('RenderParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testRenderParagraphWithoutNodePath());
    test('GetParagraphFormat', () async => await ParagraphTests(testContext).testGetParagraphFormat());
    test('GetParagraphFormatOnline', () async => await ParagraphTests(testContext).testGetParagraphFormatOnline());
    test('GetParagraphFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphFormatWithoutNodePath());
    test('UpdateParagraphFormat', () async => await ParagraphTests(testContext).testUpdateParagraphFormat());
    test('UpdateParagraphFormatOnline', () async => await ParagraphTests(testContext).testUpdateParagraphFormatOnline());
    test('DeleteParagraph', () async => await ParagraphTests(testContext).testDeleteParagraph());
    test('DeleteParagraphOnline', () async => await ParagraphTests(testContext).testDeleteParagraphOnline());
    test('DeleteParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphWithoutNodePath());
    test('GetParagraphListFormat', () async => await ParagraphTests(testContext).testGetParagraphListFormat());
    test('GetParagraphListFormatOnline', () async => await ParagraphTests(testContext).testGetParagraphListFormatOnline());
    test('GetParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphListFormatWithoutNodePath());
    test('UpdateParagraphListFormat', () async => await ParagraphTests(testContext).testUpdateParagraphListFormat());
    test('UpdateParagraphListFormatOnline', () async => await ParagraphTests(testContext).testUpdateParagraphListFormatOnline());
    test('UpdateParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testUpdateParagraphListFormatWithoutNodePath());
    test('DeleteParagraphListFormat', () async => await ParagraphTests(testContext).testDeleteParagraphListFormat());
    test('DeleteParagraphListFormatOnline', () async => await ParagraphTests(testContext).testDeleteParagraphListFormatOnline());
    test('DeleteParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphListFormatWithoutNodePath());
    test('GetParagraphTabStops', () async => await ParagraphTests(testContext).testGetParagraphTabStops());
    test('GetParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testGetParagraphTabStopsOnline());
    test('GetParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphTabStopsWithoutNodePath());
    test('InsertParagraphTabStops', () async => await ParagraphTests(testContext).testInsertParagraphTabStops());
    test('InsertParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testInsertParagraphTabStopsOnline());
    test('InsertParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphTabStopsWithoutNodePath());
    test('DeleteAllParagraphTabStops', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStopsOnline());
    test('DeleteAllParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStopsWithoutNodePath());
    test('DeleteParagraphTabStop', () async => await ParagraphTests(testContext).testDeleteParagraphTabStop());
    test('DeleteParagraphTabStopOnline', () async => await ParagraphTests(testContext).testDeleteParagraphTabStopOnline());
    test('DeleteParagraphTabStopWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphTabStopWithoutNodePath());
  });

  group('Range', () {
    test('GetRangeText', () async => await RangeTests(testContext).testGetRangeText());
    test('GetRangeTextOnline', () async => await RangeTests(testContext).testGetRangeTextOnline());
    test('RemoveRange', () async => await RangeTests(testContext).testRemoveRange());
    test('RemoveRangeOnline', () async => await RangeTests(testContext).testRemoveRangeOnline());
    test('SaveAsRange', () async => await RangeTests(testContext).testSaveAsRange());
    test('SaveAsRangeOnline', () async => await RangeTests(testContext).testSaveAsRangeOnline());
    test('ReplaceWithText', () async => await RangeTests(testContext).testReplaceWithText());
    test('ReplaceWithTextOnline', () async => await RangeTests(testContext).testReplaceWithTextOnline());
  });

  group('BuildReport', () {
    test('BuildReportOnline', () async => await BuildReportTests(testContext).testBuildReportOnline());
    test('BuildReport', () async => await BuildReportTests(testContext).testBuildReport());
  });

  group('Run', () {
    test('UpdateRun', () async => await RunTests(testContext).testUpdateRun());
    test('UpdateRunOnline', () async => await RunTests(testContext).testUpdateRunOnline());
    test('InsertRun', () async => await RunTests(testContext).testInsertRun());
    test('InsertRunOnline', () async => await RunTests(testContext).testInsertRunOnline());
    test('DeleteRun', () async => await RunTests(testContext).testDeleteRun());
    test('DeleteRunOnline', () async => await RunTests(testContext).testDeleteRunOnline());
  });

  group('Section', () {
    test('GetSection', () async => await SectionTests(testContext).testGetSection());
    test('GetSectionOnline', () async => await SectionTests(testContext).testGetSectionOnline());
    test('GetSections', () async => await SectionTests(testContext).testGetSections());
    test('GetSectionsOnline', () async => await SectionTests(testContext).testGetSectionsOnline());
    test('DeleteSection', () async => await SectionTests(testContext).testDeleteSection());
    test('DeleteSectionOnline', () async => await SectionTests(testContext).testDeleteSectionOnline());
  });

  group('File', () {
    test('UploadFile', () async => await FileTests(testContext).testUploadFile());
    test('CopyFile', () async => await FileTests(testContext).testCopyFile());
    test('MoveFile', () async => await FileTests(testContext).testMoveFile());
    test('DeleteFile', () async => await FileTests(testContext).testDeleteFile());
    test('DownloadFile', () async => await FileTests(testContext).testDownloadFile());
  });

  group('Folder', () {
    test('CreateFolder', () async => await FolderTests(testContext).testCreateFolder());
    test('DeleteFolder', () async => await FolderTests(testContext).testDeleteFolder());
    test('GetFilesList', () async => await FolderTests(testContext).testGetFilesList());
    test('CopyFolder', () async => await FolderTests(testContext).testCopyFolder());
    test('MoveFolder', () async => await FolderTests(testContext).testMoveFolder());
  });

  group('Styles', () {
    test('GetStyles', () async => await StylesTests(testContext).testGetStyles());
    test('GetStylesOnline', () async => await StylesTests(testContext).testGetStylesOnline());
    test('GetStyle', () async => await StylesTests(testContext).testGetStyle());
    test('GetStyleOnline', () async => await StylesTests(testContext).testGetStyleOnline());
    test('UpdateStyle', () async => await StylesTests(testContext).testUpdateStyle());
    test('UpdateStyleOnline', () async => await StylesTests(testContext).testUpdateStyleOnline());
    test('InsertStyle', () async => await StylesTests(testContext).testInsertStyle());
    test('InsertStyleOnline', () async => await StylesTests(testContext).testInsertStyleOnline());
    test('CopyStyle', () async => await StylesTests(testContext).testCopyStyle());
    test('CopyStyleOnline', () async => await StylesTests(testContext).testCopyStyleOnline());
    test('GetStyleFromDocumentElement', () async => await StylesTests(testContext).testGetStyleFromDocumentElement());
    test('GetStyleFromDocumentElementOnline', () async => await StylesTests(testContext).testGetStyleFromDocumentElementOnline());
    test('ApplyStyleToDocumentElement', () async => await StylesTests(testContext).testApplyStyleToDocumentElement());
    test('ApplyStyleToDocumentElementOnline', () async => await StylesTests(testContext).testApplyStyleToDocumentElementOnline());
  });

  group('Table', () {
    test('GetTables', () async => await TableTests(testContext).testGetTables());
    test('GetTablesOnline', () async => await TableTests(testContext).testGetTablesOnline());
    test('GetTablesWithoutNodePath', () async => await TableTests(testContext).testGetTablesWithoutNodePath());
    test('GetTable', () async => await TableTests(testContext).testGetTable());
    test('GetTableOnline', () async => await TableTests(testContext).testGetTableOnline());
    test('GetTableWithoutNodePath', () async => await TableTests(testContext).testGetTableWithoutNodePath());
    test('DeleteTable', () async => await TableTests(testContext).testDeleteTable());
    test('DeleteTableOnline', () async => await TableTests(testContext).testDeleteTableOnline());
    test('DeleteTableWithoutNodePath', () async => await TableTests(testContext).testDeleteTableWithoutNodePath());
    test('InsertTable', () async => await TableTests(testContext).testInsertTable());
    test('InsertTableOnline', () async => await TableTests(testContext).testInsertTableOnline());
    test('InsertTableWithoutNodePath', () async => await TableTests(testContext).testInsertTableWithoutNodePath());
    test('GetTableProperties', () async => await TableTests(testContext).testGetTableProperties());
    test('GetTablePropertiesOnline', () async => await TableTests(testContext).testGetTablePropertiesOnline());
    test('GetTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testGetTablePropertiesWithoutNodePath());
    test('UpdateTableProperties', () async => await TableTests(testContext).testUpdateTableProperties());
    test('UpdateTablePropertiesOnline', () async => await TableTests(testContext).testUpdateTablePropertiesOnline());
    test('UpdateTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testUpdateTablePropertiesWithoutNodePath());
    test('GetTableRow', () async => await TableTests(testContext).testGetTableRow());
    test('GetTableRowOnline', () async => await TableTests(testContext).testGetTableRowOnline());
    test('DeleteTableRow', () async => await TableTests(testContext).testDeleteTableRow());
    test('DeleteTableRowOnline', () async => await TableTests(testContext).testDeleteTableRowOnline());
    test('InsertTableRow', () async => await TableTests(testContext).testInsertTableRow());
    test('InsertTableRowOnline', () async => await TableTests(testContext).testInsertTableRowOnline());
    test('GetTableRowFormat', () async => await TableTests(testContext).testGetTableRowFormat());
    test('GetTableRowFormatOnline', () async => await TableTests(testContext).testGetTableRowFormatOnline());
    test('UpdateTableRowFormat', () async => await TableTests(testContext).testUpdateTableRowFormat());
    test('UpdateTableRowFormatOnline', () async => await TableTests(testContext).testUpdateTableRowFormatOnline());
    test('GetTableCell', () async => await TableTests(testContext).testGetTableCell());
    test('GetTableCellOnline', () async => await TableTests(testContext).testGetTableCellOnline());
    test('DeleteTableCell', () async => await TableTests(testContext).testDeleteTableCell());
    test('DeleteTableCellOnline', () async => await TableTests(testContext).testDeleteTableCellOnline());
    test('InsertTableCell', () async => await TableTests(testContext).testInsertTableCell());
    test('InsertTableCellOnline', () async => await TableTests(testContext).testInsertTableCellOnline());
    test('GetTableCellFormat', () async => await TableTests(testContext).testGetTableCellFormat());
    test('GetTableCellFormatOnline', () async => await TableTests(testContext).testGetTableCellFormatOnline());
    test('UpdateTableCellFormat', () async => await TableTests(testContext).testUpdateTableCellFormat());
    test('UpdateTableCellFormatOnline', () async => await TableTests(testContext).testUpdateTableCellFormatOnline());
    test('RenderTable', () async => await TableTests(testContext).testRenderTable());
    test('RenderTableOnline', () async => await TableTests(testContext).testRenderTableOnline());
    test('RenderTableWithoutNodePath', () async => await TableTests(testContext).testRenderTableWithoutNodePath());
  });

  group('TableBorder', () {
    test('GetBorders', () async => await TableBorderTests(testContext).testGetBorders());
    test('GetBordersOnline', () async => await TableBorderTests(testContext).testGetBordersOnline());
    test('GetBorder', () async => await TableBorderTests(testContext).testGetBorder());
    test('GetBorderOnline', () async => await TableBorderTests(testContext).testGetBorderOnline());
    test('DeleteBorders', () async => await TableBorderTests(testContext).testDeleteBorders());
    test('DeleteBordersOnline', () async => await TableBorderTests(testContext).testDeleteBordersOnline());
    test('DeleteBorder', () async => await TableBorderTests(testContext).testDeleteBorder());
    test('DeleteBorderOnline', () async => await TableBorderTests(testContext).testDeleteBorderOnline());
    test('UpdateBorder', () async => await TableBorderTests(testContext).testUpdateBorder());
    test('UpdateBorderOnline', () async => await TableBorderTests(testContext).testUpdateBorderOnline());
  });

  group('Text', () {
    test('ReplaceText', () async => await TextTests(testContext).testReplaceText());
    test('ReplaceTextOnline', () async => await TextTests(testContext).testReplaceTextOnline());
    test('Search', () async => await TextTests(testContext).testSearch());
    test('SearchOnline', () async => await TextTests(testContext).testSearchOnline());
  });

  group('Watermark', () {
    test('InsertWatermarkImage', () async => await WatermarkTests(testContext).testInsertWatermarkImage());
    test('InsertWatermarkImageOnline', () async => await WatermarkTests(testContext).testInsertWatermarkImageOnline());
    test('InsertWatermarkText', () async => await WatermarkTests(testContext).testInsertWatermarkText());
    test('InsertWatermarkTextOnline', () async => await WatermarkTests(testContext).testInsertWatermarkTextOnline());
    test('DeleteWatermark', () async => await WatermarkTests(testContext).testDeleteWatermark());
    test('DeleteWatermarkOnline', () async => await WatermarkTests(testContext).testDeleteWatermarkOnline());
  });

  group('Examples', () {
    ExamplesTests exampleTests;
    setUpAll(() async {
      exampleTests = ExamplesTests(testContext.configuration);
      await exampleTests.init();
    });
    test('AcceptAllRevisions', () async => await exampleTests.acceptAllRevisions());
    test('AcceptAllRevisionsOnline', () async => await exampleTests.acceptAllRevisionsOnline());
    test('AppendDocument', () async => await exampleTests.appendDocument());
    test('AppendDocumentOnline', () async => await exampleTests.appendDocumentOnline());
    test('ApplyStyleToDocumentElement', () async => await exampleTests.applyStyleToDocumentElement());
    test('ApplyStyleToDocumentElementOnline', () async => await exampleTests.applyStyleToDocumentElementOnline());
    test('BuildReport', () async => await exampleTests.buildReport());
    test('BuildReportOnline', () async => await exampleTests.buildReportOnline());
    test('Classify', () async => await exampleTests.classify());
    test('ClassifyDocument', () async => await exampleTests.classifyDocument());
    test('ClassifyDocumentOnline', () async => await exampleTests.classifyDocumentOnline());
    test('CompareDocument', () async => await exampleTests.compareDocument());
    test('CompareDocumentOnline', () async => await exampleTests.compareDocumentOnline());
    test('ConvertDocument', () async => await exampleTests.convertDocument());
    test('CopyFile', () async => await exampleTests.copyFile());
    test('CopyFolder', () async => await exampleTests.copyFolder());
    test('CopyStyle', () async => await exampleTests.copyStyle());
    test('CopyStyleOnline', () async => await exampleTests.copyStyleOnline());
    test('CreateDocument', () async => await exampleTests.createDocument());
    test('CreateFolder', () async => await exampleTests.createFolder());
    test('CreateOrUpdateDocumentProperty', () async => await exampleTests.createOrUpdateDocumentProperty());
    test('CreateOrUpdateDocumentPropertyOnline', () async => await exampleTests.createOrUpdateDocumentPropertyOnline());
    test('DeleteAllParagraphTabStops', () async => await exampleTests.deleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsOnline', () async => await exampleTests.deleteAllParagraphTabStopsOnline());
    test('DeleteBorder', () async => await exampleTests.deleteBorder());
    test('DeleteBorderOnline', () async => await exampleTests.deleteBorderOnline());
    test('DeleteBorders', () async => await exampleTests.deleteBorders());
    test('DeleteBordersOnline', () async => await exampleTests.deleteBordersOnline());
    test('DeleteComment', () async => await exampleTests.deleteComment());
    test('DeleteCommentOnline', () async => await exampleTests.deleteCommentOnline());
    test('DeleteComments', () async => await exampleTests.deleteComments());
    test('DeleteCommentsOnline', () async => await exampleTests.deleteCommentsOnline());
    test('DeleteCustomXmlPart', () async => await exampleTests.deleteCustomXmlPart());
    test('DeleteCustomXmlPartOnline', () async => await exampleTests.deleteCustomXmlPartOnline());
    test('DeleteCustomXmlParts', () async => await exampleTests.deleteCustomXmlParts());
    test('DeleteCustomXmlPartsOnline', () async => await exampleTests.deleteCustomXmlPartsOnline());
    test('DeleteDocumentProperty', () async => await exampleTests.deleteDocumentProperty());
    test('DeleteDocumentPropertyOnline', () async => await exampleTests.deleteDocumentPropertyOnline());
    test('DeleteDrawingObject', () async => await exampleTests.deleteDrawingObject());
    test('DeleteDrawingObjectOnline', () async => await exampleTests.deleteDrawingObjectOnline());
    test('DeleteField', () async => await exampleTests.deleteField());
    test('DeleteFieldOnline', () async => await exampleTests.deleteFieldOnline());
    test('DeleteFields', () async => await exampleTests.deleteFields());
    test('DeleteFieldsOnline', () async => await exampleTests.deleteFieldsOnline());
    test('DeleteFile', () async => await exampleTests.deleteFile());
    test('DeleteFolder', () async => await exampleTests.deleteFolder());
    test('DeleteFootnote', () async => await exampleTests.deleteFootnote());
    test('DeleteFootnoteOnline', () async => await exampleTests.deleteFootnoteOnline());
    test('DeleteFormField', () async => await exampleTests.deleteFormField());
    test('DeleteFormFieldOnline', () async => await exampleTests.deleteFormFieldOnline());
    test('DeleteHeaderFooter', () async => await exampleTests.deleteHeaderFooter());
    test('DeleteHeaderFooterOnline', () async => await exampleTests.deleteHeaderFooterOnline());
    test('DeleteHeadersFooters', () async => await exampleTests.deleteHeadersFooters());
    test('DeleteHeadersFootersOnline', () async => await exampleTests.deleteHeadersFootersOnline());
    test('DeleteMacros', () async => await exampleTests.deleteMacros());
    test('DeleteMacrosOnline', () async => await exampleTests.deleteMacrosOnline());
    test('DeleteOfficeMathObject', () async => await exampleTests.deleteOfficeMathObject());
    test('DeleteOfficeMathObjectOnline', () async => await exampleTests.deleteOfficeMathObjectOnline());
    test('DeleteParagraph', () async => await exampleTests.deleteParagraph());
    test('DeleteParagraphListFormat', () async => await exampleTests.deleteParagraphListFormat());
    test('DeleteParagraphListFormatOnline', () async => await exampleTests.deleteParagraphListFormatOnline());
    test('DeleteParagraphOnline', () async => await exampleTests.deleteParagraphOnline());
    test('DeleteParagraphTabStop', () async => await exampleTests.deleteParagraphTabStop());
    test('DeleteParagraphTabStopOnline', () async => await exampleTests.deleteParagraphTabStopOnline());
    test('DeleteRun', () async => await exampleTests.deleteRun());
    test('DeleteRunOnline', () async => await exampleTests.deleteRunOnline());
    test('DeleteSection', () async => await exampleTests.deleteSection());
    test('DeleteSectionOnline', () async => await exampleTests.deleteSectionOnline());
    test('DeleteTable', () async => await exampleTests.deleteTable());
    test('DeleteTableCell', () async => await exampleTests.deleteTableCell());
    test('DeleteTableCellOnline', () async => await exampleTests.deleteTableCellOnline());
    test('DeleteTableOnline', () async => await exampleTests.deleteTableOnline());
    test('DeleteTableRow', () async => await exampleTests.deleteTableRow());
    test('DeleteTableRowOnline', () async => await exampleTests.deleteTableRowOnline());
    test('DeleteWatermark', () async => await exampleTests.deleteWatermark());
    test('DeleteWatermarkOnline', () async => await exampleTests.deleteWatermarkOnline());
    test('DownloadFile', () async => await exampleTests.downloadFile());
    test('ExecuteMailMerge', () async => await exampleTests.executeMailMerge());
    test('ExecuteMailMergeOnline', () async => await exampleTests.executeMailMergeOnline());
    test('GetAvailableFonts', () async => await exampleTests.getAvailableFonts());
    test('GetBookmarkByName', () async => await exampleTests.getBookmarkByName());
    test('GetBookmarkByNameOnline', () async => await exampleTests.getBookmarkByNameOnline());
    test('GetBookmarks', () async => await exampleTests.getBookmarks());
    test('GetBookmarksOnline', () async => await exampleTests.getBookmarksOnline());
    test('GetBorder', () async => await exampleTests.getBorder());
    test('GetBorderOnline', () async => await exampleTests.getBorderOnline());
    test('GetBorders', () async => await exampleTests.getBorders());
    test('GetBordersOnline', () async => await exampleTests.getBordersOnline());
    test('GetComment', () async => await exampleTests.getComment());
    test('GetCommentOnline', () async => await exampleTests.getCommentOnline());
    test('GetComments', () async => await exampleTests.getComments());
    test('GetCommentsOnline', () async => await exampleTests.getCommentsOnline());
    test('GetCustomXmlPart', () async => await exampleTests.getCustomXmlPart());
    test('GetCustomXmlPartOnline', () async => await exampleTests.getCustomXmlPartOnline());
    test('GetCustomXmlParts', () async => await exampleTests.getCustomXmlParts());
    test('GetCustomXmlPartsOnline', () async => await exampleTests.getCustomXmlPartsOnline());
    test('GetDocument', () async => await exampleTests.getDocument());
    test('GetDocumentDrawingObjectByIndex', () async => await exampleTests.getDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexOnline', () async => await exampleTests.getDocumentDrawingObjectByIndexOnline());
    test('GetDocumentDrawingObjectImageData', () async => await exampleTests.getDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataOnline', () async => await exampleTests.getDocumentDrawingObjectImageDataOnline());
    test('GetDocumentDrawingObjectOleData', () async => await exampleTests.getDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataOnline', () async => await exampleTests.getDocumentDrawingObjectOleDataOnline());
    test('GetDocumentDrawingObjects', () async => await exampleTests.getDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsOnline', () async => await exampleTests.getDocumentDrawingObjectsOnline());
    test('GetDocumentFieldNames', () async => await exampleTests.getDocumentFieldNames());
    test('GetDocumentFieldNamesOnline', () async => await exampleTests.getDocumentFieldNamesOnline());
    test('GetDocumentHyperlinkByIndex', () async => await exampleTests.getDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinkByIndexOnline', () async => await exampleTests.getDocumentHyperlinkByIndexOnline());
    test('GetDocumentHyperlinks', () async => await exampleTests.getDocumentHyperlinks());
    test('GetDocumentHyperlinksOnline', () async => await exampleTests.getDocumentHyperlinksOnline());
    test('GetDocumentProperties', () async => await exampleTests.getDocumentProperties());
    test('GetDocumentPropertiesOnline', () async => await exampleTests.getDocumentPropertiesOnline());
    test('GetDocumentProperty', () async => await exampleTests.getDocumentProperty());
    test('GetDocumentPropertyOnline', () async => await exampleTests.getDocumentPropertyOnline());
    test('GetDocumentProtection', () async => await exampleTests.getDocumentProtection());
    test('GetDocumentProtectionOnline', () async => await exampleTests.getDocumentProtectionOnline());
    test('GetDocumentStatistics', () async => await exampleTests.getDocumentStatistics());
    test('GetDocumentStatisticsOnline', () async => await exampleTests.getDocumentStatisticsOnline());
    test('GetDocumentWithFormat', () async => await exampleTests.getDocumentWithFormat());
    test('GetField', () async => await exampleTests.getField());
    test('GetFieldOnline', () async => await exampleTests.getFieldOnline());
    test('GetFields', () async => await exampleTests.getFields());
    test('GetFieldsOnline', () async => await exampleTests.getFieldsOnline());
    test('GetFilesList', () async => await exampleTests.getFilesList());
    test('GetFootnote', () async => await exampleTests.getFootnote());
    test('GetFootnoteOnline', () async => await exampleTests.getFootnoteOnline());
    test('GetFootnotes', () async => await exampleTests.getFootnotes());
    test('GetFootnotesOnline', () async => await exampleTests.getFootnotesOnline());
    test('GetFormField', () async => await exampleTests.getFormField());
    test('GetFormFieldOnline', () async => await exampleTests.getFormFieldOnline());
    test('GetFormFields', () async => await exampleTests.getFormFields());
    test('GetFormFieldsOnline', () async => await exampleTests.getFormFieldsOnline());
    test('GetHeaderFooter', () async => await exampleTests.getHeaderFooter());
    test('GetHeaderFooterOfSection', () async => await exampleTests.getHeaderFooterOfSection());
    test('GetHeaderFooterOfSectionOnline', () async => await exampleTests.getHeaderFooterOfSectionOnline());
    test('GetHeaderFooterOnline', () async => await exampleTests.getHeaderFooterOnline());
    test('GetHeaderFooters', () async => await exampleTests.getHeaderFooters());
    test('GetHeaderFootersOnline', () async => await exampleTests.getHeaderFootersOnline());
    test('GetList', () async => await exampleTests.getList());
    test('GetListOnline', () async => await exampleTests.getListOnline());
    test('GetLists', () async => await exampleTests.getLists());
    test('GetListsOnline', () async => await exampleTests.getListsOnline());
    test('GetOfficeMathObject', () async => await exampleTests.getOfficeMathObject());
    test('GetOfficeMathObjectOnline', () async => await exampleTests.getOfficeMathObjectOnline());
    test('GetOfficeMathObjects', () async => await exampleTests.getOfficeMathObjects());
    test('GetOfficeMathObjectsOnline', () async => await exampleTests.getOfficeMathObjectsOnline());
    test('GetParagraph', () async => await exampleTests.getParagraph());
    test('GetParagraphFormat', () async => await exampleTests.getParagraphFormat());
    test('GetParagraphFormatOnline', () async => await exampleTests.getParagraphFormatOnline());
    test('GetParagraphListFormat', () async => await exampleTests.getParagraphListFormat());
    test('GetParagraphListFormatOnline', () async => await exampleTests.getParagraphListFormatOnline());
    test('GetParagraphOnline', () async => await exampleTests.getParagraphOnline());
    test('GetParagraphs', () async => await exampleTests.getParagraphs());
    test('GetParagraphsOnline', () async => await exampleTests.getParagraphsOnline());
    test('GetParagraphTabStops', () async => await exampleTests.getParagraphTabStops());
    test('GetParagraphTabStopsOnline', () async => await exampleTests.getParagraphTabStopsOnline());
    test('GetPublicKey', () async => await exampleTests.getPublicKey());
    test('GetRangeText', () async => await exampleTests.getRangeText());
    test('GetRangeTextOnline', () async => await exampleTests.getRangeTextOnline());
    test('GetRun', () async => await exampleTests.getRun());
    test('GetRunFont', () async => await exampleTests.getRunFont());
    test('GetRunFontOnline', () async => await exampleTests.getRunFontOnline());
    test('GetRunOnline', () async => await exampleTests.getRunOnline());
    test('GetRuns', () async => await exampleTests.getRuns());
    test('GetRunsOnline', () async => await exampleTests.getRunsOnline());
    test('GetSection', () async => await exampleTests.getSection());
    test('GetSectionOnline', () async => await exampleTests.getSectionOnline());
    test('GetSectionPageSetup', () async => await exampleTests.getSectionPageSetup());
    test('GetSectionPageSetupOnline', () async => await exampleTests.getSectionPageSetupOnline());
    test('GetSections', () async => await exampleTests.getSections());
    test('GetSectionsOnline', () async => await exampleTests.getSectionsOnline());
    test('GetStyle', () async => await exampleTests.getStyle());
    test('GetStyleFromDocumentElement', () async => await exampleTests.getStyleFromDocumentElement());
    test('GetStyleFromDocumentElementOnline', () async => await exampleTests.getStyleFromDocumentElementOnline());
    test('GetStyleOnline', () async => await exampleTests.getStyleOnline());
    test('GetStyles', () async => await exampleTests.getStyles());
    test('GetStylesOnline', () async => await exampleTests.getStylesOnline());
    test('GetTable', () async => await exampleTests.getTable());
    test('GetTableCell', () async => await exampleTests.getTableCell());
    test('GetTableCellFormat', () async => await exampleTests.getTableCellFormat());
    test('GetTableCellFormatOnline', () async => await exampleTests.getTableCellFormatOnline());
    test('GetTableCellOnline', () async => await exampleTests.getTableCellOnline());
    test('GetTableOnline', () async => await exampleTests.getTableOnline());
    test('GetTableProperties', () async => await exampleTests.getTableProperties());
    test('GetTablePropertiesOnline', () async => await exampleTests.getTablePropertiesOnline());
    test('GetTableRow', () async => await exampleTests.getTableRow());
    test('GetTableRowFormat', () async => await exampleTests.getTableRowFormat());
    test('GetTableRowFormatOnline', () async => await exampleTests.getTableRowFormatOnline());
    test('GetTableRowOnline', () async => await exampleTests.getTableRowOnline());
    test('GetTables', () async => await exampleTests.getTables());
    test('GetTablesOnline', () async => await exampleTests.getTablesOnline());
    test('InsertComment', () async => await exampleTests.insertComment());
    test('InsertCommentOnline', () async => await exampleTests.insertCommentOnline());
    test('InsertCustomXmlPart', () async => await exampleTests.insertCustomXmlPart());
    test('InsertCustomXmlPartOnline', () async => await exampleTests.insertCustomXmlPartOnline());
    test('InsertDrawingObject', () async => await exampleTests.insertDrawingObject());
    test('InsertDrawingObjectOnline', () async => await exampleTests.insertDrawingObjectOnline());
    test('InsertField', () async => await exampleTests.insertField());
    test('InsertFieldOnline', () async => await exampleTests.insertFieldOnline());
    test('InsertFootnote', () async => await exampleTests.insertFootnote());
    test('InsertFootnoteOnline', () async => await exampleTests.insertFootnoteOnline());
    test('InsertFormField', () async => await exampleTests.insertFormField());
    test('InsertFormFieldOnline', () async => await exampleTests.insertFormFieldOnline());
    test('InsertHeaderFooter', () async => await exampleTests.insertHeaderFooter());
    test('InsertHeaderFooterOnline', () async => await exampleTests.insertHeaderFooterOnline());
    test('InsertList', () async => await exampleTests.insertList());
    test('InsertListOnline', () async => await exampleTests.insertListOnline());
    test('InsertOrUpdateParagraphTabStop', () async => await exampleTests.insertOrUpdateParagraphTabStop());
    test('InsertOrUpdateParagraphTabStopOnline', () async => await exampleTests.insertOrUpdateParagraphTabStopOnline());
    test('InsertPageNumbers', () async => await exampleTests.insertPageNumbers());
    test('InsertPageNumbersOnline', () async => await exampleTests.insertPageNumbersOnline());
    test('InsertParagraph', () async => await exampleTests.insertParagraph());
    test('InsertParagraphOnline', () async => await exampleTests.insertParagraphOnline());
    test('InsertRun', () async => await exampleTests.insertRun());
    test('InsertRunOnline', () async => await exampleTests.insertRunOnline());
    test('InsertStyle', () async => await exampleTests.insertStyle());
    test('InsertStyleOnline', () async => await exampleTests.insertStyleOnline());
    test('InsertTable', () async => await exampleTests.insertTable());
    test('InsertTableCell', () async => await exampleTests.insertTableCell());
    test('InsertTableCellOnline', () async => await exampleTests.insertTableCellOnline());
    test('InsertTableOnline', () async => await exampleTests.insertTableOnline());
    test('InsertTableRow', () async => await exampleTests.insertTableRow());
    test('InsertTableRowOnline', () async => await exampleTests.insertTableRowOnline());
    test('InsertWatermarkImage', () async => await exampleTests.insertWatermarkImage());
    test('InsertWatermarkImageOnline', () async => await exampleTests.insertWatermarkImageOnline());
    test('InsertWatermarkText', () async => await exampleTests.insertWatermarkText());
    test('InsertWatermarkTextOnline', () async => await exampleTests.insertWatermarkTextOnline());
    test('LoadWebDocument', () async => await exampleTests.loadWebDocument());
    test('MoveFile', () async => await exampleTests.moveFile());
    test('MoveFolder', () async => await exampleTests.moveFolder());
    test('OptimizeDocument', () async => await exampleTests.optimizeDocument());
    test('OptimizeDocumentOnline', () async => await exampleTests.optimizeDocumentOnline());
    test('ProtectDocument', () async => await exampleTests.protectDocument());
    test('ProtectDocumentOnline', () async => await exampleTests.protectDocumentOnline());
    test('RejectAllRevisions', () async => await exampleTests.rejectAllRevisions());
    test('RejectAllRevisionsOnline', () async => await exampleTests.rejectAllRevisionsOnline());
    test('RemoveRange', () async => await exampleTests.removeRange());
    test('RemoveRangeOnline', () async => await exampleTests.removeRangeOnline());
    test('RenderDrawingObject', () async => await exampleTests.renderDrawingObject());
    test('RenderDrawingObjectOnline', () async => await exampleTests.renderDrawingObjectOnline());
    test('RenderMathObject', () async => await exampleTests.renderMathObject());
    test('RenderMathObjectOnline', () async => await exampleTests.renderMathObjectOnline());
    test('RenderPage', () async => await exampleTests.renderPage());
    test('RenderPageOnline', () async => await exampleTests.renderPageOnline());
    test('RenderParagraph', () async => await exampleTests.renderParagraph());
    test('RenderParagraphOnline', () async => await exampleTests.renderParagraphOnline());
    test('RenderTable', () async => await exampleTests.renderTable());
    test('RenderTableOnline', () async => await exampleTests.renderTableOnline());
    test('ReplaceText', () async => await exampleTests.replaceText());
    test('ReplaceTextOnline', () async => await exampleTests.replaceTextOnline());
    test('ReplaceWithText', () async => await exampleTests.replaceWithText());
    test('ReplaceWithTextOnline', () async => await exampleTests.replaceWithTextOnline());
    test('ResetCache', () async => await exampleTests.resetCache());
    test('SaveAs', () async => await exampleTests.saveAs());
    test('SaveAsOnline', () async => await exampleTests.saveAsOnline());
    test('SaveAsRange', () async => await exampleTests.saveAsRange());
    test('SaveAsRangeOnline', () async => await exampleTests.saveAsRangeOnline());
    test('SaveAsTiff', () async => await exampleTests.saveAsTiff());
    test('SaveAsTiffOnline', () async => await exampleTests.saveAsTiffOnline());
    test('Search', () async => await exampleTests.search());
    test('SearchOnline', () async => await exampleTests.searchOnline());
    test('SplitDocument', () async => await exampleTests.splitDocument());
    test('SplitDocumentOnline', () async => await exampleTests.splitDocumentOnline());
    test('UnprotectDocument', () async => await exampleTests.unprotectDocument());
    test('UnprotectDocumentOnline', () async => await exampleTests.unprotectDocumentOnline());
    test('UpdateBookmark', () async => await exampleTests.updateBookmark());
    test('UpdateBookmarkOnline', () async => await exampleTests.updateBookmarkOnline());
    test('UpdateBorder', () async => await exampleTests.updateBorder());
    test('UpdateBorderOnline', () async => await exampleTests.updateBorderOnline());
    test('UpdateComment', () async => await exampleTests.updateComment());
    test('UpdateCommentOnline', () async => await exampleTests.updateCommentOnline());
    test('UpdateCustomXmlPart', () async => await exampleTests.updateCustomXmlPart());
    test('UpdateCustomXmlPartOnline', () async => await exampleTests.updateCustomXmlPartOnline());
    test('UpdateDrawingObject', () async => await exampleTests.updateDrawingObject());
    test('UpdateDrawingObjectOnline', () async => await exampleTests.updateDrawingObjectOnline());
    test('UpdateField', () async => await exampleTests.updateField());
    test('UpdateFieldOnline', () async => await exampleTests.updateFieldOnline());
    test('UpdateFields', () async => await exampleTests.updateFields());
    test('UpdateFieldsOnline', () async => await exampleTests.updateFieldsOnline());
    test('UpdateFootnote', () async => await exampleTests.updateFootnote());
    test('UpdateFootnoteOnline', () async => await exampleTests.updateFootnoteOnline());
    test('UpdateFormField', () async => await exampleTests.updateFormField());
    test('UpdateFormFieldOnline', () async => await exampleTests.updateFormFieldOnline());
    test('UpdateList', () async => await exampleTests.updateList());
    test('UpdateListLevel', () async => await exampleTests.updateListLevel());
    test('UpdateListLevelOnline', () async => await exampleTests.updateListLevelOnline());
    test('UpdateListOnline', () async => await exampleTests.updateListOnline());
    test('UpdateParagraphFormat', () async => await exampleTests.updateParagraphFormat());
    test('UpdateParagraphFormatOnline', () async => await exampleTests.updateParagraphFormatOnline());
    test('UpdateParagraphListFormat', () async => await exampleTests.updateParagraphListFormat());
    test('UpdateParagraphListFormatOnline', () async => await exampleTests.updateParagraphListFormatOnline());
    test('UpdateRun', () async => await exampleTests.updateRun());
    test('UpdateRunFont', () async => await exampleTests.updateRunFont());
    test('UpdateRunFontOnline', () async => await exampleTests.updateRunFontOnline());
    test('UpdateRunOnline', () async => await exampleTests.updateRunOnline());
    test('UpdateSectionPageSetup', () async => await exampleTests.updateSectionPageSetup());
    test('UpdateSectionPageSetupOnline', () async => await exampleTests.updateSectionPageSetupOnline());
    test('UpdateStyle', () async => await exampleTests.updateStyle());
    test('UpdateStyleOnline', () async => await exampleTests.updateStyleOnline());
    test('UpdateTableCellFormat', () async => await exampleTests.updateTableCellFormat());
    test('UpdateTableCellFormatOnline', () async => await exampleTests.updateTableCellFormatOnline());
    test('UpdateTableProperties', () async => await exampleTests.updateTableProperties());
    test('UpdateTablePropertiesOnline', () async => await exampleTests.updateTablePropertiesOnline());
    test('UpdateTableRowFormat', () async => await exampleTests.updateTableRowFormat());
    test('UpdateTableRowFormatOnline', () async => await exampleTests.updateTableRowFormatOnline());
    test('UploadFile', () async => await exampleTests.uploadFile());
  });
}
