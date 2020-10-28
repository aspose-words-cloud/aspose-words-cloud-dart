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

@Timeout(const Duration(minutes: 5))

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:test/test.dart';
import 'test_context.dart';
import 'dart:convert';
import 'dart:io';

import './readme_tests.dart';
import './encoding_tests.dart';
import './batch_tests.dart';
import './bookmark/bookmark_tests.dart';
import './compatibility/compatibility_tests.dart';
import './document/append_document_tests.dart';
import './document/classification_tests.dart';
import './document/comment_tests.dart';
import './document/compare_document_tests.dart';
import './document/convert_document_tests.dart';
import './document/document_tests.dart';
import './document/document_statistics_tests.dart';
import './document/document_with_format_tests.dart';
import './document/load_web_document_tests.dart';
import './document/revisions_tests.dart';
import './document/split_document_to_format_tests.dart';
import './document_properties/document_properties_tests.dart';
import './document_protection/document_protection_tests.dart';
import './drawing/drawing_objects_tests.dart';
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
import './report/build_report_tests.dart';
import './run/run_tests.dart';
import './sections/section_tests.dart';
import './storage/file_tests.dart';
import './storage/folder_tests.dart';
import './styles/styles_tests.dart';
import './table/table_tests.dart';
import './table/table_border_tests.dart';
import './text/text_tests.dart';
import './watermark/watermark_tests.dart';

TestContext testContext;

void main() {
  setUpAll(() async {
    final file = new File(Directory.current.path + '/settings/servercreds.json');
    if (await file.exists() == false) {
      throw new Exception('Please put AppKey and AppSid credentials to "SDK_ROOT/settings/servercreds.json".');
    }

    final jsonString = await file.readAsString();
    final Map json = jsonDecode(jsonString);
    final config = Configuration.fromJson(json);
    testContext = new TestContext(config);
  });

  group('Readme', () {
    test('TestReadme1', () async => await (new ReadmeTests(testContext)).testReadme1());
  });

  group('Encoding', () {
    test('TestEncoding1', () async => await (new EncodingTests(testContext)).testEncoding1());
  });

  group('Batch', () {
    test('TestBatch1', () async => await (new BatchTests(testContext)).testBatch1());
  });

  group('Bookmark', () {
    test('GetBookmarks', () async => await (new BookmarkTests(testContext)).testGetBookmarks());
    test('GetBookmarkByName', () async => await (new BookmarkTests(testContext)).testGetBookmarkByName());
    test('UpdateBookmark', () async => await (new BookmarkTests(testContext)).testUpdateBookmark());
  });

  group('Compatibility', () {
    test('OptimizeDocument', () async => await (new CompatibilityTests(testContext)).testOptimizeDocument());
  });

  group('AppendDocument', () {
    test('AppendDocument', () async => await (new AppendDocumentTests(testContext)).testAppendDocument());
  });

  group('Classification', () {
    test('Classify', () async => await (new ClassificationTests(testContext)).testClassify());
    test('ClassifyDocument', () async => await (new ClassificationTests(testContext)).testClassifyDocument());
  });

  group('Comment', () {
    test('GetComment', () async => await (new CommentTests(testContext)).testGetComment());
    test('GetComments', () async => await (new CommentTests(testContext)).testGetComments());
    test('InsertComment', () async => await (new CommentTests(testContext)).testInsertComment());
    test('UpdateComment', () async => await (new CommentTests(testContext)).testUpdateComment());
    test('DeleteComment', () async => await (new CommentTests(testContext)).testDeleteComment());
  });

  group('CompareDocument', () {
    test('CompareDocument', () async => await (new CompareDocumentTests(testContext)).testCompareDocument());
  });

  group('ConvertDocument', () {
    test('SaveAs', () async => await (new ConvertDocumentTests(testContext)).testSaveAs());
    test('SaveAsDocx', () async => await (new ConvertDocumentTests(testContext)).testSaveAsDocx());
    test('SaveAsTiff', () async => await (new ConvertDocumentTests(testContext)).testSaveAsTiff());
    test('ConvertDocument', () async => await (new ConvertDocumentTests(testContext)).testConvertDocument());
  });

  group('Document', () {
    test('GetDocument', () async => await (new DocumentTests(testContext)).testGetDocument());
    test('CreateDocument', () async => await (new DocumentTests(testContext)).testCreateDocument());
  });

  group('DocumentStatistics', () {
    test('GetDocumentStatistics', () async => await (new DocumentStatisticsTests(testContext)).testGetDocumentStatistics());
  });

  group('DocumentWithFormat', () {
    test('GetDocumentWithFormat', () async => await (new DocumentWithFormatTests(testContext)).testGetDocumentWithFormat());
    test('GetDocumentWithFormatAndOutPath', () async => await (new DocumentWithFormatTests(testContext)).testGetDocumentWithFormatAndOutPath());
  });

  group('LoadWebDocument', () {
    test('LoadWebDocument', () async => await (new LoadWebDocumentTests(testContext)).testLoadWebDocument());
  });

  group('Revisions', () {
    test('AcceptAllRevisions', () async => await (new RevisionsTests(testContext)).testAcceptAllRevisions());
    test('RejectAllRevisions', () async => await (new RevisionsTests(testContext)).testRejectAllRevisions());
  });

  group('SplitDocumentToFormat', () {
    test('SplitDocument', () async => await (new SplitDocumentToFormatTests(testContext)).testSplitDocument());
  });

  group('DocumentProperties', () {
    test('GetDocumentProperties', () async => await (new DocumentPropertiesTests(testContext)).testGetDocumentProperties());
    test('GetDocumentProperty', () async => await (new DocumentPropertiesTests(testContext)).testGetDocumentProperty());
    test('DeleteDocumentProperty', () async => await (new DocumentPropertiesTests(testContext)).testDeleteDocumentProperty());
    test('UpdateDocumentProperty', () async => await (new DocumentPropertiesTests(testContext)).testUpdateDocumentProperty());
  });

  group('DocumentProtection', () {
    test('ProtectDocument', () async => await (new DocumentProtectionTests(testContext)).testProtectDocument());
    test('GetDocumentProtection', () async => await (new DocumentProtectionTests(testContext)).testGetDocumentProtection());
    test('ChangeDocumentProtection', () async => await (new DocumentProtectionTests(testContext)).testChangeDocumentProtection());
    test('DeleteUnprotectDocument', () async => await (new DocumentProtectionTests(testContext)).testDeleteUnprotectDocument());
  });

  group('DrawingObjects', () {
    test('GetDocumentDrawingObjects', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectsWithoutNodePath());
    test('GetDocumentDrawingObjectByIndex', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectByIndexWithoutNodePath());
    test('RenderDrawingObject', () async => await (new DrawingObjectsTests(testContext)).testRenderDrawingObject());
    test('RenderDrawingObjectWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testRenderDrawingObjectWithoutNodePath());
    test('GetDocumentDrawingObjectImageData', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectImageDataWithoutNodePath());
    test('GetDocumentDrawingObjectOleData', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testGetDocumentDrawingObjectOleDataWithoutNodePath());
    test('InsertDrawingObject', () async => await (new DrawingObjectsTests(testContext)).testInsertDrawingObject());
    test('InsertDrawingObjectWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testInsertDrawingObjectWithoutNodePath());
    test('DeleteDrawingObject', () async => await (new DrawingObjectsTests(testContext)).testDeleteDrawingObject());
    test('DeleteDrawingObjectWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testDeleteDrawingObjectWithoutNodePath());
    test('UpdateDrawingObject', () async => await (new DrawingObjectsTests(testContext)).testUpdateDrawingObject());
    test('UpdateDrawingObjectWithoutNodePath', () async => await (new DrawingObjectsTests(testContext)).testUpdateDrawingObjectWithoutNodePath());
  });

  group('Field', () {
    test('GetFields', () async => await (new FieldTests(testContext)).testGetFields());
    test('GetFieldsWithoutNodePath', () async => await (new FieldTests(testContext)).testGetFieldsWithoutNodePath());
    test('GetField', () async => await (new FieldTests(testContext)).testGetField());
    test('GetFieldWithoutNodePath', () async => await (new FieldTests(testContext)).testGetFieldWithoutNodePath());
    test('InsertField', () async => await (new FieldTests(testContext)).testInsertField());
    test('InsertFieldWithoutNodePath', () async => await (new FieldTests(testContext)).testInsertFieldWithoutNodePath());
    test('UpdateField', () async => await (new FieldTests(testContext)).testUpdateField());
    test('InsertPageNumbers', () async => await (new FieldTests(testContext)).testInsertPageNumbers());
    test('DeleteField', () async => await (new FieldTests(testContext)).testDeleteField());
    test('DeleteFieldWithoutNodePath', () async => await (new FieldTests(testContext)).testDeleteFieldWithoutNodePath());
    test('DeleteParagraphFields', () async => await (new FieldTests(testContext)).testDeleteParagraphFields());
    test('DeleteParagraphFieldsWithoutNodePath', () async => await (new FieldTests(testContext)).testDeleteParagraphFieldsWithoutNodePath());
    test('DeleteSectionFields', () async => await (new FieldTests(testContext)).testDeleteSectionFields());
    test('DeleteSectionFieldsWithoutNodePath', () async => await (new FieldTests(testContext)).testDeleteSectionFieldsWithoutNodePath());
    test('DeleteSectionParagraphFields', () async => await (new FieldTests(testContext)).testDeleteSectionParagraphFields());
    test('DeleteDocumentFields', () async => await (new FieldTests(testContext)).testDeleteDocumentFields());
    test('UpdateDocumentFields', () async => await (new FieldTests(testContext)).testUpdateDocumentFields());
  });

  group('FormField', () {
    test('UpdateFormField', () async => await (new FormFieldTests(testContext)).testUpdateFormField());
    test('UpdateFormFieldWithoutNodePath', () async => await (new FormFieldTests(testContext)).testUpdateFormFieldWithoutNodePath());
    test('GetFormField', () async => await (new FormFieldTests(testContext)).testGetFormField());
    test('GetFormFieldWithoutNodePath', () async => await (new FormFieldTests(testContext)).testGetFormFieldWithoutNodePath());
    test('GetFormFields', () async => await (new FormFieldTests(testContext)).testGetFormFields());
    test('GetFormFieldsWithoutNodePath', () async => await (new FormFieldTests(testContext)).testGetFormFieldsWithoutNodePath());
    test('InsertFormField', () async => await (new FormFieldTests(testContext)).testInsertFormField());
    test('InsertFormFieldWithoutNodePath', () async => await (new FormFieldTests(testContext)).testInsertFormFieldWithoutNodePath());
    test('DeleteFormField', () async => await (new FormFieldTests(testContext)).testDeleteFormField());
    test('DeleteFormFieldWithoutNodePath', () async => await (new FormFieldTests(testContext)).testDeleteFormFieldWithoutNodePath());
  });

  group('Font', () {
    test('ResetCache', () async => await (new FontTests(testContext)).testResetCache());
    test('GetAvailableFonts', () async => await (new FontTests(testContext)).testGetAvailableFonts());
  });

  group('Footnote', () {
    test('InsertFootnote', () async => await (new FootnoteTests(testContext)).testInsertFootnote());
    test('InsertFootnoteWithoutNodePath', () async => await (new FootnoteTests(testContext)).testInsertFootnoteWithoutNodePath());
    test('DeleteFootnote', () async => await (new FootnoteTests(testContext)).testDeleteFootnote());
    test('DeleteFootnoteWithoutNodePath', () async => await (new FootnoteTests(testContext)).testDeleteFootnoteWithoutNodePath());
    test('GetFootnotes', () async => await (new FootnoteTests(testContext)).testGetFootnotes());
    test('GetFootnotesWithoutNodePath', () async => await (new FootnoteTests(testContext)).testGetFootnotesWithoutNodePath());
    test('GetFootnote', () async => await (new FootnoteTests(testContext)).testGetFootnote());
    test('GetFootnoteWithoutNodePath', () async => await (new FootnoteTests(testContext)).testGetFootnoteWithoutNodePath());
    test('UpdateFootnote', () async => await (new FootnoteTests(testContext)).testUpdateFootnote());
    test('UpdateFootnoteWithoutNodePath', () async => await (new FootnoteTests(testContext)).testUpdateFootnoteWithoutNodePath());
  });

  group('HeaderFooter', () {
    test('GetHeaderFooters', () async => await (new HeaderFooterTests(testContext)).testGetHeaderFooters());
    test('GetHeaderFooter', () async => await (new HeaderFooterTests(testContext)).testGetHeaderFooter());
    test('GetHeaderFooterOfSection', () async => await (new HeaderFooterTests(testContext)).testGetHeaderFooterOfSection());
    test('DeleteHeaderFooter', () async => await (new HeaderFooterTests(testContext)).testDeleteHeaderFooter());
    test('DeleteHeadersFooters', () async => await (new HeaderFooterTests(testContext)).testDeleteHeadersFooters());
    test('InsertHeaderFooter', () async => await (new HeaderFooterTests(testContext)).testInsertHeaderFooter());
  });

  group('Hyperlink', () {
    test('GetDocumentHyperlinkByIndex', () async => await (new HyperlinkTests(testContext)).testGetDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinks', () async => await (new HyperlinkTests(testContext)).testGetDocumentHyperlinks());
  });

  group('Lists', () {
    test('GetLists', () async => await (new ListsTests(testContext)).testGetLists());
    test('GetList', () async => await (new ListsTests(testContext)).testGetList());
    test('UpdateList', () async => await (new ListsTests(testContext)).testUpdateList());
    test('UpdateListLevel', () async => await (new ListsTests(testContext)).testUpdateListLevel());
    test('InsertList', () async => await (new ListsTests(testContext)).testInsertList());
  });

  group('Macros', () {
    test('DeleteMacros', () async => await (new MacrosTests(testContext)).testDeleteMacros());
  });

  group('ExecuteMailMerge', () {
    test('ExecuteMailMergeOnline', () async => await (new ExecuteMailMergeTests(testContext)).testExecuteMailMergeOnline());
    test('ExecuteMailMerge', () async => await (new ExecuteMailMergeTests(testContext)).testExecuteMailMerge());
  });

  group('ExecuteTemplate', () {
    test('ExecuteTemplate', () async => await (new ExecuteTemplateTests(testContext)).testExecuteTemplate());
    test('ExecuteTemplateOnline', () async => await (new ExecuteTemplateTests(testContext)).testExecuteTemplateOnline());
  });

  group('MailMergeFileds', () {
    test('GetDocumentFieldNamesOnline', () async => await (new MailMergeFiledsTests(testContext)).testGetDocumentFieldNamesOnline());
    test('GetDocumentFieldNames', () async => await (new MailMergeFiledsTests(testContext)).testGetDocumentFieldNames());
  });

  group('MathObject', () {
    test('GetOfficeMathObjects', () async => await (new MathObjectTests(testContext)).testGetOfficeMathObjects());
    test('GetOfficeMathObjectsWithoutNodePath', () async => await (new MathObjectTests(testContext)).testGetOfficeMathObjectsWithoutNodePath());
    test('GetOfficeMathObject', () async => await (new MathObjectTests(testContext)).testGetOfficeMathObject());
    test('GetOfficeMathObjectWithoutNodePath', () async => await (new MathObjectTests(testContext)).testGetOfficeMathObjectWithoutNodePath());
    test('RenderMathObject', () async => await (new MathObjectTests(testContext)).testRenderMathObject());
    test('RenderMathObjectWithoutNodePath', () async => await (new MathObjectTests(testContext)).testRenderMathObjectWithoutNodePath());
    test('DeleteOfficeMathObject', () async => await (new MathObjectTests(testContext)).testDeleteOfficeMathObject());
    test('DeleteOfficeMathObjectWithoutNodePath', () async => await (new MathObjectTests(testContext)).testDeleteOfficeMathObjectWithoutNodePath());
  });

  group('PageSetup', () {
    test('GetSectionPageSetup', () async => await (new PageSetupTests(testContext)).testGetSectionPageSetup());
    test('UpdateSectionPageSetup', () async => await (new PageSetupTests(testContext)).testUpdateSectionPageSetup());
    test('GetRenderPage', () async => await (new PageSetupTests(testContext)).testGetRenderPage());
  });

  group('Paragraph', () {
    test('GetDocumentParagraphByIndex', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphByIndex());
    test('GetDocumentParagraphByIndexWithoutNodePath', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphByIndexWithoutNodePath());
    test('GetDocumentParagraphs', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphs());
    test('GetDocumentParagraphsWithoutNodePath', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphsWithoutNodePath());
    test('GetDocumentParagraphRun', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphRun());
    test('GetDocumentParagraphRunFont', () async => await (new ParagraphTests(testContext)).testGetDocumentParagraphRunFont());
    test('GetParagraphRuns', () async => await (new ParagraphTests(testContext)).testGetParagraphRuns());
    test('UpdateRunFont', () async => await (new ParagraphTests(testContext)).testUpdateRunFont());
    test('InsertParagraph', () async => await (new ParagraphTests(testContext)).testInsertParagraph());
    test('InsertParagraphWithoutNodePath', () async => await (new ParagraphTests(testContext)).testInsertParagraphWithoutNodePath());
    test('RenderParagraph', () async => await (new ParagraphTests(testContext)).testRenderParagraph());
    test('RenderParagraphWithoutNodePath', () async => await (new ParagraphTests(testContext)).testRenderParagraphWithoutNodePath());
    test('GetParagraphFormat', () async => await (new ParagraphTests(testContext)).testGetParagraphFormat());
    test('GetParagraphFormatWithoutNodePath', () async => await (new ParagraphTests(testContext)).testGetParagraphFormatWithoutNodePath());
    test('UpdateParagraphFormat', () async => await (new ParagraphTests(testContext)).testUpdateParagraphFormat());
    test('DeleteParagraph', () async => await (new ParagraphTests(testContext)).testDeleteParagraph());
    test('DeleteParagraphWithoutNodePath', () async => await (new ParagraphTests(testContext)).testDeleteParagraphWithoutNodePath());
    test('GetParagraphListFormat', () async => await (new ParagraphTests(testContext)).testGetParagraphListFormat());
    test('GetParagraphListFormatWithoutNodePath', () async => await (new ParagraphTests(testContext)).testGetParagraphListFormatWithoutNodePath());
    test('UpdateParagraphListFormat', () async => await (new ParagraphTests(testContext)).testUpdateParagraphListFormat());
    test('UpdateParagraphListFormatWithoutNodePath', () async => await (new ParagraphTests(testContext)).testUpdateParagraphListFormatWithoutNodePath());
    test('DeleteParagraphListFormat', () async => await (new ParagraphTests(testContext)).testDeleteParagraphListFormat());
    test('DeleteParagraphListFormatWithoutNodePath', () async => await (new ParagraphTests(testContext)).testDeleteParagraphListFormatWithoutNodePath());
    test('GetParagraphTabStops', () async => await (new ParagraphTests(testContext)).testGetParagraphTabStops());
    test('GetParagraphTabStopsWithoutNodePath', () async => await (new ParagraphTests(testContext)).testGetParagraphTabStopsWithoutNodePath());
    test('InsertParagraphTabStops', () async => await (new ParagraphTests(testContext)).testInsertParagraphTabStops());
    test('InsertParagraphTabStopsWithoutNodePath', () async => await (new ParagraphTests(testContext)).testInsertParagraphTabStopsWithoutNodePath());
    test('DeleteAllParagraphTabStops', () async => await (new ParagraphTests(testContext)).testDeleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsWithoutNodePath', () async => await (new ParagraphTests(testContext)).testDeleteAllParagraphTabStopsWithoutNodePath());
    test('DeleteParagraphTabStop', () async => await (new ParagraphTests(testContext)).testDeleteParagraphTabStop());
    test('DeleteParagraphTabStopWithoutNodePath', () async => await (new ParagraphTests(testContext)).testDeleteParagraphTabStopWithoutNodePath());
  });

  group('Range', () {
    test('GetRangeText', () async => await (new RangeTests(testContext)).testGetRangeText());
    test('RemoveRange', () async => await (new RangeTests(testContext)).testRemoveRange());
    test('SaveAsRange', () async => await (new RangeTests(testContext)).testSaveAsRange());
    test('ReplaceWithText', () async => await (new RangeTests(testContext)).testReplaceWithText());
  });

  group('BuildReport', () {
    test('BuildReportOnline', () async => await (new BuildReportTests(testContext)).testBuildReportOnline());
    test('BuildReport', () async => await (new BuildReportTests(testContext)).testBuildReport());
  });

  group('Run', () {
    test('UpdateRun', () async => await (new RunTests(testContext)).testUpdateRun());
    test('InsertRun', () async => await (new RunTests(testContext)).testInsertRun());
    test('DeleteRun', () async => await (new RunTests(testContext)).testDeleteRun());
  });

  group('Section', () {
    test('GetSection', () async => await (new SectionTests(testContext)).testGetSection());
    test('GetSections', () async => await (new SectionTests(testContext)).testGetSections());
    test('DeleteSection', () async => await (new SectionTests(testContext)).testDeleteSection());
  });

  group('File', () {
    test('UploadFile', () async => await (new FileTests(testContext)).testUploadFile());
    test('CopyFile', () async => await (new FileTests(testContext)).testCopyFile());
    test('MoveFile', () async => await (new FileTests(testContext)).testMoveFile());
    test('DeleteFile', () async => await (new FileTests(testContext)).testDeleteFile());
    test('DownloadFile', () async => await (new FileTests(testContext)).testDownloadFile());
  });

  group('Folder', () {
    test('CreateFolder', () async => await (new FolderTests(testContext)).testCreateFolder());
    test('DeleteFolder', () async => await (new FolderTests(testContext)).testDeleteFolder());
    test('GetFilesList', () async => await (new FolderTests(testContext)).testGetFilesList());
    test('CopyFolder', () async => await (new FolderTests(testContext)).testCopyFolder());
    test('MoveFolder', () async => await (new FolderTests(testContext)).testMoveFolder());
  });

  group('Styles', () {
    test('GetStyles', () async => await (new StylesTests(testContext)).testGetStyles());
    test('GetStyle', () async => await (new StylesTests(testContext)).testGetStyle());
    test('UpdateStyle', () async => await (new StylesTests(testContext)).testUpdateStyle());
    test('InsertStyle', () async => await (new StylesTests(testContext)).testInsertStyle());
    test('CopyStyle', () async => await (new StylesTests(testContext)).testCopyStyle());
    test('GetStyleFromDocumentElement', () async => await (new StylesTests(testContext)).testGetStyleFromDocumentElement());
    test('ApplyStyleToDocumentElement', () async => await (new StylesTests(testContext)).testApplyStyleToDocumentElement());
  });

  group('Table', () {
    test('GetTables', () async => await (new TableTests(testContext)).testGetTables());
    test('GetTablesWithoutNodePath', () async => await (new TableTests(testContext)).testGetTablesWithoutNodePath());
    test('GetTable', () async => await (new TableTests(testContext)).testGetTable());
    test('GetTableWithoutNodePath', () async => await (new TableTests(testContext)).testGetTableWithoutNodePath());
    test('DeleteTable', () async => await (new TableTests(testContext)).testDeleteTable());
    test('DeleteTableWithoutNodePath', () async => await (new TableTests(testContext)).testDeleteTableWithoutNodePath());
    test('InsertTable', () async => await (new TableTests(testContext)).testInsertTable());
    test('InsertTableWithoutNodePath', () async => await (new TableTests(testContext)).testInsertTableWithoutNodePath());
    test('GetTableProperties', () async => await (new TableTests(testContext)).testGetTableProperties());
    test('GetTablePropertiesWithoutNodePath', () async => await (new TableTests(testContext)).testGetTablePropertiesWithoutNodePath());
    test('UpdateTableProperties', () async => await (new TableTests(testContext)).testUpdateTableProperties());
    test('UpdateTablePropertiesWithoutNodePath', () async => await (new TableTests(testContext)).testUpdateTablePropertiesWithoutNodePath());
    test('GetTableRow', () async => await (new TableTests(testContext)).testGetTableRow());
    test('DeleteTableRow', () async => await (new TableTests(testContext)).testDeleteTableRow());
    test('InsertTableRow', () async => await (new TableTests(testContext)).testInsertTableRow());
    test('GetTableRowFormat', () async => await (new TableTests(testContext)).testGetTableRowFormat());
    test('UpdateTableRowFormat', () async => await (new TableTests(testContext)).testUpdateTableRowFormat());
    test('GetTableCell', () async => await (new TableTests(testContext)).testGetTableCell());
    test('DeleteTableCell', () async => await (new TableTests(testContext)).testDeleteTableCell());
    test('InsertTableCell', () async => await (new TableTests(testContext)).testInsertTableCell());
    test('GetTableCellFormat', () async => await (new TableTests(testContext)).testGetTableCellFormat());
    test('UpdateTableCellFormat', () async => await (new TableTests(testContext)).testUpdateTableCellFormat());
    test('RenderTable', () async => await (new TableTests(testContext)).testRenderTable());
    test('RenderTableWithoutNodePath', () async => await (new TableTests(testContext)).testRenderTableWithoutNodePath());
  });

  group('TableBorder', () {
    test('GetBorders', () async => await (new TableBorderTests(testContext)).testGetBorders());
    test('GetBorder', () async => await (new TableBorderTests(testContext)).testGetBorder());
    test('DeleteBorders', () async => await (new TableBorderTests(testContext)).testDeleteBorders());
    test('DeleteBorder', () async => await (new TableBorderTests(testContext)).testDeleteBorder());
    test('UpdateBorder', () async => await (new TableBorderTests(testContext)).testUpdateBorder());
  });

  group('Text', () {
    test('ReplaceText', () async => await (new TextTests(testContext)).testReplaceText());
    test('Search', () async => await (new TextTests(testContext)).testSearch());
  });

  group('Watermark', () {
    test('InsertWatermarkImage', () async => await (new WatermarkTests(testContext)).testInsertWatermarkImage());
    test('InsertWatermarkText', () async => await (new WatermarkTests(testContext)).testInsertWatermarkText());
    test('DeleteWatermark', () async => await (new WatermarkTests(testContext)).testDeleteWatermark());
  });
}
