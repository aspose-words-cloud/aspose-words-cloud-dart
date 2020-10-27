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

void main() async {
  final file = new File(Directory.current.path + '/settings/servercreds.json');
  if (await file.exists() == false) {
     throw new Exception('Please put AppKey and AppSid credentials to "SDK_ROOT/settings/servercreds.json".');
  }

  final jsonString = await file.readAsString();
  final Map json = jsonDecode(jsonString);
  final config = Configuration.fromJson(json);
  final testContext = new TestContext(config);

  group('Readme', () {
    final _testGroup = new ReadmeTests(testContext);
    test('TestReadme1', _testGroup.testReadme1);
  });

  group('Encoding', () {
    final _testGroup = new EncodingTests(testContext);
    test('TestEncoding1', _testGroup.testEncoding1);
  });

  group('Batch', () {
    final _testGroup = new BatchTests(testContext);
    test('TestBatch1', _testGroup.testBatch1);
  });

  group('Bookmark', () {
    final _testGroup = new BookmarkTests(testContext);
    test('GetBookmarks', _testGroup.testGetBookmarks);
    test('GetBookmarkByName', _testGroup.testGetBookmarkByName);
    test('UpdateBookmark', _testGroup.testUpdateBookmark);
  });

  group('Compatibility', () {
    final _testGroup = new CompatibilityTests(testContext);
    test('OptimizeDocument', _testGroup.testOptimizeDocument);
  });

  group('AppendDocument', () {
    final _testGroup = new AppendDocumentTests(testContext);
    test('AppendDocument', _testGroup.testAppendDocument);
  });

  group('Classification', () {
    final _testGroup = new ClassificationTests(testContext);
    test('Classify', _testGroup.testClassify);
    test('ClassifyDocument', _testGroup.testClassifyDocument);
  });

  group('Comment', () {
    final _testGroup = new CommentTests(testContext);
    test('GetComment', _testGroup.testGetComment);
    test('GetComments', _testGroup.testGetComments);
    test('InsertComment', _testGroup.testInsertComment);
    test('UpdateComment', _testGroup.testUpdateComment);
    test('DeleteComment', _testGroup.testDeleteComment);
  });

  group('CompareDocument', () {
    final _testGroup = new CompareDocumentTests(testContext);
    test('CompareDocument', _testGroup.testCompareDocument);
  });

  group('ConvertDocument', () {
    final _testGroup = new ConvertDocumentTests(testContext);
    test('SaveAs', _testGroup.testSaveAs);
    test('SaveAsDocx', _testGroup.testSaveAsDocx);
    test('SaveAsTiff', _testGroup.testSaveAsTiff);
    test('ConvertDocument', _testGroup.testConvertDocument);
  });

  group('Document', () {
    final _testGroup = new DocumentTests(testContext);
    test('GetDocument', _testGroup.testGetDocument);
    test('CreateDocument', _testGroup.testCreateDocument);
  });

  group('DocumentStatistics', () {
    final _testGroup = new DocumentStatisticsTests(testContext);
    test('GetDocumentStatistics', _testGroup.testGetDocumentStatistics);
  });

  group('DocumentWithFormat', () {
    final _testGroup = new DocumentWithFormatTests(testContext);
    test('GetDocumentWithFormat', _testGroup.testGetDocumentWithFormat);
    test('GetDocumentWithFormatAndOutPath', _testGroup.testGetDocumentWithFormatAndOutPath);
  });

  group('LoadWebDocument', () {
    final _testGroup = new LoadWebDocumentTests(testContext);
    test('LoadWebDocument', _testGroup.testLoadWebDocument);
  });

  group('Revisions', () {
    final _testGroup = new RevisionsTests(testContext);
    test('AcceptAllRevisions', _testGroup.testAcceptAllRevisions);
    test('RejectAllRevisions', _testGroup.testRejectAllRevisions);
  });

  group('SplitDocumentToFormat', () {
    final _testGroup = new SplitDocumentToFormatTests(testContext);
    test('SplitDocument', _testGroup.testSplitDocument);
  });

  group('DocumentProperties', () {
    final _testGroup = new DocumentPropertiesTests(testContext);
    test('GetDocumentProperties', _testGroup.testGetDocumentProperties);
    test('GetDocumentProperty', _testGroup.testGetDocumentProperty);
    test('DeleteDocumentProperty', _testGroup.testDeleteDocumentProperty);
    test('UpdateDocumentProperty', _testGroup.testUpdateDocumentProperty);
  });

  group('DocumentProtection', () {
    final _testGroup = new DocumentProtectionTests(testContext);
    test('ProtectDocument', _testGroup.testProtectDocument);
    test('GetDocumentProtection', _testGroup.testGetDocumentProtection);
    test('ChangeDocumentProtection', _testGroup.testChangeDocumentProtection);
    test('DeleteUnprotectDocument', _testGroup.testDeleteUnprotectDocument);
  });

  group('DrawingObjects', () {
    final _testGroup = new DrawingObjectsTests(testContext);
    test('GetDocumentDrawingObjects', _testGroup.testGetDocumentDrawingObjects);
    test('GetDocumentDrawingObjectsWithoutNodePath', _testGroup.testGetDocumentDrawingObjectsWithoutNodePath);
    test('GetDocumentDrawingObjectByIndex', _testGroup.testGetDocumentDrawingObjectByIndex);
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', _testGroup.testGetDocumentDrawingObjectByIndexWithoutNodePath);
    test('RenderDrawingObject', _testGroup.testRenderDrawingObject);
    test('RenderDrawingObjectWithoutNodePath', _testGroup.testRenderDrawingObjectWithoutNodePath);
    test('GetDocumentDrawingObjectImageData', _testGroup.testGetDocumentDrawingObjectImageData);
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', _testGroup.testGetDocumentDrawingObjectImageDataWithoutNodePath);
    test('GetDocumentDrawingObjectOleData', _testGroup.testGetDocumentDrawingObjectOleData);
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', _testGroup.testGetDocumentDrawingObjectOleDataWithoutNodePath);
    test('InsertDrawingObject', _testGroup.testInsertDrawingObject);
    test('InsertDrawingObjectWithoutNodePath', _testGroup.testInsertDrawingObjectWithoutNodePath);
    test('DeleteDrawingObject', _testGroup.testDeleteDrawingObject);
    test('DeleteDrawingObjectWithoutNodePath', _testGroup.testDeleteDrawingObjectWithoutNodePath);
    test('UpdateDrawingObject', _testGroup.testUpdateDrawingObject);
    test('UpdateDrawingObjectWithoutNodePath', _testGroup.testUpdateDrawingObjectWithoutNodePath);
  });

  group('Field', () {
    final _testGroup = new FieldTests(testContext);
    test('GetFields', _testGroup.testGetFields);
    test('GetFieldsWithoutNodePath', _testGroup.testGetFieldsWithoutNodePath);
    test('GetField', _testGroup.testGetField);
    test('GetFieldWithoutNodePath', _testGroup.testGetFieldWithoutNodePath);
    test('InsertField', _testGroup.testInsertField);
    test('InsertFieldWithoutNodePath', _testGroup.testInsertFieldWithoutNodePath);
    test('UpdateField', _testGroup.testUpdateField);
    test('InsertPageNumbers', _testGroup.testInsertPageNumbers);
    test('DeleteField', _testGroup.testDeleteField);
    test('DeleteFieldWithoutNodePath', _testGroup.testDeleteFieldWithoutNodePath);
    test('DeleteParagraphFields', _testGroup.testDeleteParagraphFields);
    test('DeleteParagraphFieldsWithoutNodePath', _testGroup.testDeleteParagraphFieldsWithoutNodePath);
    test('DeleteSectionFields', _testGroup.testDeleteSectionFields);
    test('DeleteSectionFieldsWithoutNodePath', _testGroup.testDeleteSectionFieldsWithoutNodePath);
    test('DeleteSectionParagraphFields', _testGroup.testDeleteSectionParagraphFields);
    test('DeleteDocumentFields', _testGroup.testDeleteDocumentFields);
    test('UpdateDocumentFields', _testGroup.testUpdateDocumentFields);
  });

  group('FormField', () {
    final _testGroup = new FormFieldTests(testContext);
    test('UpdateFormField', _testGroup.testUpdateFormField);
    test('UpdateFormFieldWithoutNodePath', _testGroup.testUpdateFormFieldWithoutNodePath);
    test('GetFormField', _testGroup.testGetFormField);
    test('GetFormFieldWithoutNodePath', _testGroup.testGetFormFieldWithoutNodePath);
    test('GetFormFields', _testGroup.testGetFormFields);
    test('GetFormFieldsWithoutNodePath', _testGroup.testGetFormFieldsWithoutNodePath);
    test('InsertFormField', _testGroup.testInsertFormField);
    test('InsertFormFieldWithoutNodePath', _testGroup.testInsertFormFieldWithoutNodePath);
    test('DeleteFormField', _testGroup.testDeleteFormField);
    test('DeleteFormFieldWithoutNodePath', _testGroup.testDeleteFormFieldWithoutNodePath);
  });

  group('Font', () {
    final _testGroup = new FontTests(testContext);
    test('ResetCache', _testGroup.testResetCache);
    test('GetAvailableFonts', _testGroup.testGetAvailableFonts);
  });

  group('Footnote', () {
    final _testGroup = new FootnoteTests(testContext);
    test('InsertFootnote', _testGroup.testInsertFootnote);
    test('InsertFootnoteWithoutNodePath', _testGroup.testInsertFootnoteWithoutNodePath);
    test('DeleteFootnote', _testGroup.testDeleteFootnote);
    test('DeleteFootnoteWithoutNodePath', _testGroup.testDeleteFootnoteWithoutNodePath);
    test('GetFootnotes', _testGroup.testGetFootnotes);
    test('GetFootnotesWithoutNodePath', _testGroup.testGetFootnotesWithoutNodePath);
    test('GetFootnote', _testGroup.testGetFootnote);
    test('GetFootnoteWithoutNodePath', _testGroup.testGetFootnoteWithoutNodePath);
    test('UpdateFootnote', _testGroup.testUpdateFootnote);
    test('UpdateFootnoteWithoutNodePath', _testGroup.testUpdateFootnoteWithoutNodePath);
  });

  group('HeaderFooter', () {
    final _testGroup = new HeaderFooterTests(testContext);
    test('GetHeaderFooters', _testGroup.testGetHeaderFooters);
    test('GetHeaderFooter', _testGroup.testGetHeaderFooter);
    test('GetHeaderFooterOfSection', _testGroup.testGetHeaderFooterOfSection);
    test('DeleteHeaderFooter', _testGroup.testDeleteHeaderFooter);
    test('DeleteHeadersFooters', _testGroup.testDeleteHeadersFooters);
    test('InsertHeaderFooter', _testGroup.testInsertHeaderFooter);
  });

  group('Hyperlink', () {
    final _testGroup = new HyperlinkTests(testContext);
    test('GetDocumentHyperlinkByIndex', _testGroup.testGetDocumentHyperlinkByIndex);
    test('GetDocumentHyperlinks', _testGroup.testGetDocumentHyperlinks);
  });

  group('Lists', () {
    final _testGroup = new ListsTests(testContext);
    test('GetLists', _testGroup.testGetLists);
    test('GetList', _testGroup.testGetList);
    test('UpdateList', _testGroup.testUpdateList);
    test('UpdateListLevel', _testGroup.testUpdateListLevel);
    test('InsertList', _testGroup.testInsertList);
  });

  group('Macros', () {
    final _testGroup = new MacrosTests(testContext);
    test('DeleteMacros', _testGroup.testDeleteMacros);
  });

  group('ExecuteMailMerge', () {
    final _testGroup = new ExecuteMailMergeTests(testContext);
    test('ExecuteMailMergeOnline', _testGroup.testExecuteMailMergeOnline);
    test('ExecuteMailMerge', _testGroup.testExecuteMailMerge);
  });

  group('ExecuteTemplate', () {
    final _testGroup = new ExecuteTemplateTests(testContext);
    test('ExecuteTemplate', _testGroup.testExecuteTemplate);
    test('ExecuteTemplateOnline', _testGroup.testExecuteTemplateOnline);
  });

  group('MailMergeFileds', () {
    final _testGroup = new MailMergeFiledsTests(testContext);
    test('GetDocumentFieldNamesOnline', _testGroup.testGetDocumentFieldNamesOnline);
    test('GetDocumentFieldNames', _testGroup.testGetDocumentFieldNames);
  });

  group('MathObject', () {
    final _testGroup = new MathObjectTests(testContext);
    test('GetOfficeMathObjects', _testGroup.testGetOfficeMathObjects);
    test('GetOfficeMathObjectsWithoutNodePath', _testGroup.testGetOfficeMathObjectsWithoutNodePath);
    test('GetOfficeMathObject', _testGroup.testGetOfficeMathObject);
    test('GetOfficeMathObjectWithoutNodePath', _testGroup.testGetOfficeMathObjectWithoutNodePath);
    test('RenderMathObject', _testGroup.testRenderMathObject);
    test('RenderMathObjectWithoutNodePath', _testGroup.testRenderMathObjectWithoutNodePath);
    test('DeleteOfficeMathObject', _testGroup.testDeleteOfficeMathObject);
    test('DeleteOfficeMathObjectWithoutNodePath', _testGroup.testDeleteOfficeMathObjectWithoutNodePath);
  });

  group('PageSetup', () {
    final _testGroup = new PageSetupTests(testContext);
    test('GetSectionPageSetup', _testGroup.testGetSectionPageSetup);
    test('UpdateSectionPageSetup', _testGroup.testUpdateSectionPageSetup);
    test('GetRenderPage', _testGroup.testGetRenderPage);
  });

  group('Paragraph', () {
    final _testGroup = new ParagraphTests(testContext);
    test('GetDocumentParagraphByIndex', _testGroup.testGetDocumentParagraphByIndex);
    test('GetDocumentParagraphByIndexWithoutNodePath', _testGroup.testGetDocumentParagraphByIndexWithoutNodePath);
    test('GetDocumentParagraphs', _testGroup.testGetDocumentParagraphs);
    test('GetDocumentParagraphsWithoutNodePath', _testGroup.testGetDocumentParagraphsWithoutNodePath);
    test('GetDocumentParagraphRun', _testGroup.testGetDocumentParagraphRun);
    test('GetDocumentParagraphRunFont', _testGroup.testGetDocumentParagraphRunFont);
    test('GetParagraphRuns', _testGroup.testGetParagraphRuns);
    test('UpdateRunFont', _testGroup.testUpdateRunFont);
    test('InsertParagraph', _testGroup.testInsertParagraph);
    test('InsertParagraphWithoutNodePath', _testGroup.testInsertParagraphWithoutNodePath);
    test('RenderParagraph', _testGroup.testRenderParagraph);
    test('RenderParagraphWithoutNodePath', _testGroup.testRenderParagraphWithoutNodePath);
    test('GetParagraphFormat', _testGroup.testGetParagraphFormat);
    test('GetParagraphFormatWithoutNodePath', _testGroup.testGetParagraphFormatWithoutNodePath);
    test('UpdateParagraphFormat', _testGroup.testUpdateParagraphFormat);
    test('DeleteParagraph', _testGroup.testDeleteParagraph);
    test('DeleteParagraphWithoutNodePath', _testGroup.testDeleteParagraphWithoutNodePath);
    test('GetParagraphListFormat', _testGroup.testGetParagraphListFormat);
    test('GetParagraphListFormatWithoutNodePath', _testGroup.testGetParagraphListFormatWithoutNodePath);
    test('UpdateParagraphListFormat', _testGroup.testUpdateParagraphListFormat);
    test('UpdateParagraphListFormatWithoutNodePath', _testGroup.testUpdateParagraphListFormatWithoutNodePath);
    test('DeleteParagraphListFormat', _testGroup.testDeleteParagraphListFormat);
    test('DeleteParagraphListFormatWithoutNodePath', _testGroup.testDeleteParagraphListFormatWithoutNodePath);
    test('GetParagraphTabStops', _testGroup.testGetParagraphTabStops);
    test('GetParagraphTabStopsWithoutNodePath', _testGroup.testGetParagraphTabStopsWithoutNodePath);
    test('InsertParagraphTabStops', _testGroup.testInsertParagraphTabStops);
    test('InsertParagraphTabStopsWithoutNodePath', _testGroup.testInsertParagraphTabStopsWithoutNodePath);
    test('DeleteAllParagraphTabStops', _testGroup.testDeleteAllParagraphTabStops);
    test('DeleteAllParagraphTabStopsWithoutNodePath', _testGroup.testDeleteAllParagraphTabStopsWithoutNodePath);
    test('DeleteParagraphTabStop', _testGroup.testDeleteParagraphTabStop);
    test('DeleteParagraphTabStopWithoutNodePath', _testGroup.testDeleteParagraphTabStopWithoutNodePath);
  });

  group('Range', () {
    final _testGroup = new RangeTests(testContext);
    test('GetRangeText', _testGroup.testGetRangeText);
    test('RemoveRange', _testGroup.testRemoveRange);
    test('SaveAsRange', _testGroup.testSaveAsRange);
    test('ReplaceWithText', _testGroup.testReplaceWithText);
  });

  group('BuildReport', () {
    final _testGroup = new BuildReportTests(testContext);
    test('BuildReportOnline', _testGroup.testBuildReportOnline);
    test('BuildReport', _testGroup.testBuildReport);
  });

  group('Run', () {
    final _testGroup = new RunTests(testContext);
    test('UpdateRun', _testGroup.testUpdateRun);
    test('InsertRun', _testGroup.testInsertRun);
    test('DeleteRun', _testGroup.testDeleteRun);
  });

  group('Section', () {
    final _testGroup = new SectionTests(testContext);
    test('GetSection', _testGroup.testGetSection);
    test('GetSections', _testGroup.testGetSections);
    test('DeleteSection', _testGroup.testDeleteSection);
  });

  group('File', () {
    final _testGroup = new FileTests(testContext);
    test('UploadFile', _testGroup.testUploadFile);
    test('CopyFile', _testGroup.testCopyFile);
    test('MoveFile', _testGroup.testMoveFile);
    test('DeleteFile', _testGroup.testDeleteFile);
    test('DownloadFile', _testGroup.testDownloadFile);
  });

  group('Folder', () {
    final _testGroup = new FolderTests(testContext);
    test('CreateFolder', _testGroup.testCreateFolder);
    test('DeleteFolder', _testGroup.testDeleteFolder);
    test('GetFilesList', _testGroup.testGetFilesList);
    test('CopyFolder', _testGroup.testCopyFolder);
    test('MoveFolder', _testGroup.testMoveFolder);
  });

  group('Styles', () {
    final _testGroup = new StylesTests(testContext);
    test('GetStyles', _testGroup.testGetStyles);
    test('GetStyle', _testGroup.testGetStyle);
    test('UpdateStyle', _testGroup.testUpdateStyle);
    test('InsertStyle', _testGroup.testInsertStyle);
    test('CopyStyle', _testGroup.testCopyStyle);
    test('GetStyleFromDocumentElement', _testGroup.testGetStyleFromDocumentElement);
    test('ApplyStyleToDocumentElement', _testGroup.testApplyStyleToDocumentElement);
  });

  group('Table', () {
    final _testGroup = new TableTests(testContext);
    test('GetTables', _testGroup.testGetTables);
    test('GetTablesWithoutNodePath', _testGroup.testGetTablesWithoutNodePath);
    test('GetTable', _testGroup.testGetTable);
    test('GetTableWithoutNodePath', _testGroup.testGetTableWithoutNodePath);
    test('DeleteTable', _testGroup.testDeleteTable);
    test('DeleteTableWithoutNodePath', _testGroup.testDeleteTableWithoutNodePath);
    test('InsertTable', _testGroup.testInsertTable);
    test('InsertTableWithoutNodePath', _testGroup.testInsertTableWithoutNodePath);
    test('GetTableProperties', _testGroup.testGetTableProperties);
    test('GetTablePropertiesWithoutNodePath', _testGroup.testGetTablePropertiesWithoutNodePath);
    test('UpdateTableProperties', _testGroup.testUpdateTableProperties);
    test('UpdateTablePropertiesWithoutNodePath', _testGroup.testUpdateTablePropertiesWithoutNodePath);
    test('GetTableRow', _testGroup.testGetTableRow);
    test('DeleteTableRow', _testGroup.testDeleteTableRow);
    test('InsertTableRow', _testGroup.testInsertTableRow);
    test('GetTableRowFormat', _testGroup.testGetTableRowFormat);
    test('UpdateTableRowFormat', _testGroup.testUpdateTableRowFormat);
    test('GetTableCell', _testGroup.testGetTableCell);
    test('DeleteTableCell', _testGroup.testDeleteTableCell);
    test('InsertTableCell', _testGroup.testInsertTableCell);
    test('GetTableCellFormat', _testGroup.testGetTableCellFormat);
    test('UpdateTableCellFormat', _testGroup.testUpdateTableCellFormat);
    test('RenderTable', _testGroup.testRenderTable);
    test('RenderTableWithoutNodePath', _testGroup.testRenderTableWithoutNodePath);
  });

  group('TableBorder', () {
    final _testGroup = new TableBorderTests(testContext);
    test('GetBorders', _testGroup.testGetBorders);
    test('GetBorder', _testGroup.testGetBorder);
    test('DeleteBorders', _testGroup.testDeleteBorders);
    test('DeleteBorder', _testGroup.testDeleteBorder);
    test('UpdateBorder', _testGroup.testUpdateBorder);
  });

  group('Text', () {
    final _testGroup = new TextTests(testContext);
    test('ReplaceText', _testGroup.testReplaceText);
    test('Search', _testGroup.testSearch);
  });

  group('Watermark', () {
    final _testGroup = new WatermarkTests(testContext);
    test('InsertWatermarkImage', _testGroup.testInsertWatermarkImage);
    test('InsertWatermarkText', _testGroup.testInsertWatermarkText);
    test('DeleteWatermark', _testGroup.testDeleteWatermark);
  });
}
