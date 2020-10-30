/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="aspose_words_cloud_tests.dart">
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
import './document/document_statistics_tests.dart';
import './document/document_tests.dart';
import './document/document_with_format_tests.dart';
import './document/load_web_document_tests.dart';
import './document/revisions_tests.dart';
import './document/split_document_to_format_tests.dart';
import './document_properties/document_properties_tests.dart';
import './document_protection/document_protection_tests.dart';
import './drawing/drawing_objects_tests.dart';
import './encoding_tests.dart';
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
      throw Exception('Please put AppKey and AppSid credentials to "SDK_ROOT/settings/servercreds.json".');
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
    test('GetBookmarkByName', () async => await BookmarkTests(testContext).testGetBookmarkByName());
    test('UpdateBookmark', () async => await BookmarkTests(testContext).testUpdateBookmark());
  });

  group('Compatibility', () {
    test('OptimizeDocument', () async => await CompatibilityTests(testContext).testOptimizeDocument());
  });

  group('AppendDocument', () {
    test('AppendDocument', () async => await AppendDocumentTests(testContext).testAppendDocument());
  });

  group('Classification', () {
    test('Classify', () async => await ClassificationTests(testContext).testClassify());
    test('ClassifyDocument', () async => await ClassificationTests(testContext).testClassifyDocument());
  });

  group('Comment', () {
    test('GetComment', () async => await CommentTests(testContext).testGetComment());
    test('GetComments', () async => await CommentTests(testContext).testGetComments());
    test('InsertComment', () async => await CommentTests(testContext).testInsertComment());
    test('UpdateComment', () async => await CommentTests(testContext).testUpdateComment());
    test('DeleteComment', () async => await CommentTests(testContext).testDeleteComment());
  });

  group('CompareDocument', () {
    test('CompareDocument', () async => await CompareDocumentTests(testContext).testCompareDocument());
  });

  group('ConvertDocument', () {
    test('SaveAs', () async => await ConvertDocumentTests(testContext).testSaveAs());
    test('SaveAsDocx', () async => await ConvertDocumentTests(testContext).testSaveAsDocx());
    test('SaveAsTiff', () async => await ConvertDocumentTests(testContext).testSaveAsTiff());
    test('ConvertDocument', () async => await ConvertDocumentTests(testContext).testConvertDocument());
  });

  group('Document', () {
    test('GetDocument', () async => await DocumentTests(testContext).testGetDocument());
    test('CreateDocument', () async => await DocumentTests(testContext).testCreateDocument());
  });

  group('DocumentStatistics', () {
    test('GetDocumentStatistics', () async => await DocumentStatisticsTests(testContext).testGetDocumentStatistics());
  });

  group('DocumentWithFormat', () {
    test('GetDocumentWithFormat', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormat());
    test('GetDocumentWithFormatAndOutPath', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormatAndOutPath());
  });

  group('LoadWebDocument', () {
    test('LoadWebDocument', () async => await LoadWebDocumentTests(testContext).testLoadWebDocument());
  });

  group('Revisions', () {
    test('AcceptAllRevisions', () async => await RevisionsTests(testContext).testAcceptAllRevisions());
    test('RejectAllRevisions', () async => await RevisionsTests(testContext).testRejectAllRevisions());
  });

  group('SplitDocumentToFormat', () {
    test('SplitDocument', () async => await SplitDocumentToFormatTests(testContext).testSplitDocument());
  });

  group('DocumentProperties', () {
    test('GetDocumentProperties', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperties());
    test('GetDocumentProperty', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperty());
    test('DeleteDocumentProperty', () async => await DocumentPropertiesTests(testContext).testDeleteDocumentProperty());
    test('UpdateDocumentProperty', () async => await DocumentPropertiesTests(testContext).testUpdateDocumentProperty());
  });

  group('DocumentProtection', () {
    test('ProtectDocument', () async => await DocumentProtectionTests(testContext).testProtectDocument());
    test('GetDocumentProtection', () async => await DocumentProtectionTests(testContext).testGetDocumentProtection());
    test('ChangeDocumentProtection', () async => await DocumentProtectionTests(testContext).testChangeDocumentProtection());
    test('DeleteUnprotectDocument', () async => await DocumentProtectionTests(testContext).testDeleteUnprotectDocument());
  });

  group('DrawingObjects', () {
    test('GetDocumentDrawingObjects', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectsWithoutNodePath());
    test('GetDocumentDrawingObjectByIndex', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndexWithoutNodePath());
    test('RenderDrawingObject', () async => await DrawingObjectsTests(testContext).testRenderDrawingObject());
    test('RenderDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testRenderDrawingObjectWithoutNodePath());
    test('GetDocumentDrawingObjectImageData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageDataWithoutNodePath());
    test('GetDocumentDrawingObjectOleData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleDataWithoutNodePath());
    test('InsertDrawingObject', () async => await DrawingObjectsTests(testContext).testInsertDrawingObject());
    test('InsertDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testInsertDrawingObjectWithoutNodePath());
    test('DeleteDrawingObject', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObject());
    test('DeleteDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObjectWithoutNodePath());
    test('UpdateDrawingObject', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObject());
    test('UpdateDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObjectWithoutNodePath());
  });

  group('Field', () {
    test('GetFields', () async => await FieldTests(testContext).testGetFields());
    test('GetFieldsWithoutNodePath', () async => await FieldTests(testContext).testGetFieldsWithoutNodePath());
    test('GetField', () async => await FieldTests(testContext).testGetField());
    test('GetFieldWithoutNodePath', () async => await FieldTests(testContext).testGetFieldWithoutNodePath());
    test('InsertField', () async => await FieldTests(testContext).testInsertField());
    test('InsertFieldWithoutNodePath', () async => await FieldTests(testContext).testInsertFieldWithoutNodePath());
    test('UpdateField', () async => await FieldTests(testContext).testUpdateField());
    test('InsertPageNumbers', () async => await FieldTests(testContext).testInsertPageNumbers());
    test('DeleteField', () async => await FieldTests(testContext).testDeleteField());
    test('DeleteFieldWithoutNodePath', () async => await FieldTests(testContext).testDeleteFieldWithoutNodePath());
    test('DeleteParagraphFields', () async => await FieldTests(testContext).testDeleteParagraphFields());
    test('DeleteParagraphFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteParagraphFieldsWithoutNodePath());
    test('DeleteSectionFields', () async => await FieldTests(testContext).testDeleteSectionFields());
    test('DeleteSectionFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteSectionFieldsWithoutNodePath());
    test('DeleteSectionParagraphFields', () async => await FieldTests(testContext).testDeleteSectionParagraphFields());
    test('DeleteDocumentFields', () async => await FieldTests(testContext).testDeleteDocumentFields());
    test('UpdateDocumentFields', () async => await FieldTests(testContext).testUpdateDocumentFields());
  });

  group('FormField', () {
    test('UpdateFormField', () async => await FormFieldTests(testContext).testUpdateFormField());
    test('UpdateFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testUpdateFormFieldWithoutNodePath());
    test('GetFormField', () async => await FormFieldTests(testContext).testGetFormField());
    test('GetFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldWithoutNodePath());
    test('GetFormFields', () async => await FormFieldTests(testContext).testGetFormFields());
    test('GetFormFieldsWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldsWithoutNodePath());
    test('InsertFormField', () async => await FormFieldTests(testContext).testInsertFormField());
    test('InsertFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testInsertFormFieldWithoutNodePath());
    test('DeleteFormField', () async => await FormFieldTests(testContext).testDeleteFormField());
    test('DeleteFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testDeleteFormFieldWithoutNodePath());
  });

  group('Font', () {
    test('ResetCache', () async => await FontTests(testContext).testResetCache());
    test('GetAvailableFonts', () async => await FontTests(testContext).testGetAvailableFonts());
  });

  group('Footnote', () {
    test('InsertFootnote', () async => await FootnoteTests(testContext).testInsertFootnote());
    test('InsertFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testInsertFootnoteWithoutNodePath());
    test('DeleteFootnote', () async => await FootnoteTests(testContext).testDeleteFootnote());
    test('DeleteFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testDeleteFootnoteWithoutNodePath());
    test('GetFootnotes', () async => await FootnoteTests(testContext).testGetFootnotes());
    test('GetFootnotesWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnotesWithoutNodePath());
    test('GetFootnote', () async => await FootnoteTests(testContext).testGetFootnote());
    test('GetFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnoteWithoutNodePath());
    test('UpdateFootnote', () async => await FootnoteTests(testContext).testUpdateFootnote());
    test('UpdateFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testUpdateFootnoteWithoutNodePath());
  });

  group('HeaderFooter', () {
    test('GetHeaderFooters', () async => await HeaderFooterTests(testContext).testGetHeaderFooters());
    test('GetHeaderFooter', () async => await HeaderFooterTests(testContext).testGetHeaderFooter());
    test('GetHeaderFooterOfSection', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOfSection());
    test('DeleteHeaderFooter', () async => await HeaderFooterTests(testContext).testDeleteHeaderFooter());
    test('DeleteHeadersFooters', () async => await HeaderFooterTests(testContext).testDeleteHeadersFooters());
    test('InsertHeaderFooter', () async => await HeaderFooterTests(testContext).testInsertHeaderFooter());
  });

  group('Hyperlink', () {
    test('GetDocumentHyperlinkByIndex', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinks', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinks());
  });

  group('Lists', () {
    test('GetLists', () async => await ListsTests(testContext).testGetLists());
    test('GetList', () async => await ListsTests(testContext).testGetList());
    test('UpdateList', () async => await ListsTests(testContext).testUpdateList());
    test('UpdateListLevel', () async => await ListsTests(testContext).testUpdateListLevel());
    test('InsertList', () async => await ListsTests(testContext).testInsertList());
  });

  group('Macros', () {
    test('DeleteMacros', () async => await MacrosTests(testContext).testDeleteMacros());
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
    test('GetOfficeMathObjectsWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectsWithoutNodePath());
    test('GetOfficeMathObject', () async => await MathObjectTests(testContext).testGetOfficeMathObject());
    test('GetOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectWithoutNodePath());
    test('RenderMathObject', () async => await MathObjectTests(testContext).testRenderMathObject());
    test('RenderMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testRenderMathObjectWithoutNodePath());
    test('DeleteOfficeMathObject', () async => await MathObjectTests(testContext).testDeleteOfficeMathObject());
    test('DeleteOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectWithoutNodePath());
  });

  group('PageSetup', () {
    test('GetSectionPageSetup', () async => await PageSetupTests(testContext).testGetSectionPageSetup());
    test('UpdateSectionPageSetup', () async => await PageSetupTests(testContext).testUpdateSectionPageSetup());
    test('GetRenderPage', () async => await PageSetupTests(testContext).testGetRenderPage());
  });

  group('Paragraph', () {
    test('GetDocumentParagraphByIndex', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndex());
    test('GetDocumentParagraphByIndexWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndexWithoutNodePath());
    test('GetDocumentParagraphs', () async => await ParagraphTests(testContext).testGetDocumentParagraphs());
    test('GetDocumentParagraphsWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphsWithoutNodePath());
    test('GetDocumentParagraphRun', () async => await ParagraphTests(testContext).testGetDocumentParagraphRun());
    test('GetDocumentParagraphRunFont', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunFont());
    test('GetParagraphRuns', () async => await ParagraphTests(testContext).testGetParagraphRuns());
    test('UpdateRunFont', () async => await ParagraphTests(testContext).testUpdateRunFont());
    test('InsertParagraph', () async => await ParagraphTests(testContext).testInsertParagraph());
    test('InsertParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphWithoutNodePath());
    test('RenderParagraph', () async => await ParagraphTests(testContext).testRenderParagraph());
    test('RenderParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testRenderParagraphWithoutNodePath());
    test('GetParagraphFormat', () async => await ParagraphTests(testContext).testGetParagraphFormat());
    test('GetParagraphFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphFormatWithoutNodePath());
    test('UpdateParagraphFormat', () async => await ParagraphTests(testContext).testUpdateParagraphFormat());
    test('DeleteParagraph', () async => await ParagraphTests(testContext).testDeleteParagraph());
    test('DeleteParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphWithoutNodePath());
    test('GetParagraphListFormat', () async => await ParagraphTests(testContext).testGetParagraphListFormat());
    test('GetParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphListFormatWithoutNodePath());
    test('UpdateParagraphListFormat', () async => await ParagraphTests(testContext).testUpdateParagraphListFormat());
    test('UpdateParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testUpdateParagraphListFormatWithoutNodePath());
    test('DeleteParagraphListFormat', () async => await ParagraphTests(testContext).testDeleteParagraphListFormat());
    test('DeleteParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphListFormatWithoutNodePath());
    test('GetParagraphTabStops', () async => await ParagraphTests(testContext).testGetParagraphTabStops());
    test('GetParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphTabStopsWithoutNodePath());
    test('InsertParagraphTabStops', () async => await ParagraphTests(testContext).testInsertParagraphTabStops());
    test('InsertParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphTabStopsWithoutNodePath());
    test('DeleteAllParagraphTabStops', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStopsWithoutNodePath());
    test('DeleteParagraphTabStop', () async => await ParagraphTests(testContext).testDeleteParagraphTabStop());
    test('DeleteParagraphTabStopWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphTabStopWithoutNodePath());
  });

  group('Range', () {
    test('GetRangeText', () async => await RangeTests(testContext).testGetRangeText());
    test('RemoveRange', () async => await RangeTests(testContext).testRemoveRange());
    test('SaveAsRange', () async => await RangeTests(testContext).testSaveAsRange());
    test('ReplaceWithText', () async => await RangeTests(testContext).testReplaceWithText());
  });

  group('BuildReport', () {
    test('BuildReportOnline', () async => await BuildReportTests(testContext).testBuildReportOnline());
    test('BuildReport', () async => await BuildReportTests(testContext).testBuildReport());
  });

  group('Run', () {
    test('UpdateRun', () async => await RunTests(testContext).testUpdateRun());
    test('InsertRun', () async => await RunTests(testContext).testInsertRun());
    test('DeleteRun', () async => await RunTests(testContext).testDeleteRun());
  });

  group('Section', () {
    test('GetSection', () async => await SectionTests(testContext).testGetSection());
    test('GetSections', () async => await SectionTests(testContext).testGetSections());
    test('DeleteSection', () async => await SectionTests(testContext).testDeleteSection());
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
    test('GetStyle', () async => await StylesTests(testContext).testGetStyle());
    test('UpdateStyle', () async => await StylesTests(testContext).testUpdateStyle());
    test('InsertStyle', () async => await StylesTests(testContext).testInsertStyle());
    test('CopyStyle', () async => await StylesTests(testContext).testCopyStyle());
    test('GetStyleFromDocumentElement', () async => await StylesTests(testContext).testGetStyleFromDocumentElement());
    test('ApplyStyleToDocumentElement', () async => await StylesTests(testContext).testApplyStyleToDocumentElement());
  });

  group('Table', () {
    test('GetTables', () async => await TableTests(testContext).testGetTables());
    test('GetTablesWithoutNodePath', () async => await TableTests(testContext).testGetTablesWithoutNodePath());
    test('GetTable', () async => await TableTests(testContext).testGetTable());
    test('GetTableWithoutNodePath', () async => await TableTests(testContext).testGetTableWithoutNodePath());
    test('DeleteTable', () async => await TableTests(testContext).testDeleteTable());
    test('DeleteTableWithoutNodePath', () async => await TableTests(testContext).testDeleteTableWithoutNodePath());
    test('InsertTable', () async => await TableTests(testContext).testInsertTable());
    test('InsertTableWithoutNodePath', () async => await TableTests(testContext).testInsertTableWithoutNodePath());
    test('GetTableProperties', () async => await TableTests(testContext).testGetTableProperties());
    test('GetTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testGetTablePropertiesWithoutNodePath());
    test('UpdateTableProperties', () async => await TableTests(testContext).testUpdateTableProperties());
    test('UpdateTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testUpdateTablePropertiesWithoutNodePath());
    test('GetTableRow', () async => await TableTests(testContext).testGetTableRow());
    test('DeleteTableRow', () async => await TableTests(testContext).testDeleteTableRow());
    test('InsertTableRow', () async => await TableTests(testContext).testInsertTableRow());
    test('GetTableRowFormat', () async => await TableTests(testContext).testGetTableRowFormat());
    test('UpdateTableRowFormat', () async => await TableTests(testContext).testUpdateTableRowFormat());
    test('GetTableCell', () async => await TableTests(testContext).testGetTableCell());
    test('DeleteTableCell', () async => await TableTests(testContext).testDeleteTableCell());
    test('InsertTableCell', () async => await TableTests(testContext).testInsertTableCell());
    test('GetTableCellFormat', () async => await TableTests(testContext).testGetTableCellFormat());
    test('UpdateTableCellFormat', () async => await TableTests(testContext).testUpdateTableCellFormat());
    test('RenderTable', () async => await TableTests(testContext).testRenderTable());
    test('RenderTableWithoutNodePath', () async => await TableTests(testContext).testRenderTableWithoutNodePath());
  });

  group('TableBorder', () {
    test('GetBorders', () async => await TableBorderTests(testContext).testGetBorders());
    test('GetBorder', () async => await TableBorderTests(testContext).testGetBorder());
    test('DeleteBorders', () async => await TableBorderTests(testContext).testDeleteBorders());
    test('DeleteBorder', () async => await TableBorderTests(testContext).testDeleteBorder());
    test('UpdateBorder', () async => await TableBorderTests(testContext).testUpdateBorder());
  });

  group('Text', () {
    test('ReplaceText', () async => await TextTests(testContext).testReplaceText());
    test('Search', () async => await TextTests(testContext).testSearch());
  });

  group('Watermark', () {
    test('InsertWatermarkImage', () async => await WatermarkTests(testContext).testInsertWatermarkImage());
    test('InsertWatermarkText', () async => await WatermarkTests(testContext).testInsertWatermarkText());
    test('DeleteWatermark', () async => await WatermarkTests(testContext).testDeleteWatermark());
  });
}
