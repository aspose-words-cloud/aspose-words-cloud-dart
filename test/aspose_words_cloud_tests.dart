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

ReadmeTests readmeTests;
EncodingTests encodingTests;
BatchTests batchTests;
BookmarkTests bookmarkName;
CompatibilityTests compatibilityName;
AppendDocumentTests appendDocumentName;
ClassificationTests classificationName;
CommentTests commentName;
CompareDocumentTests compareDocumentName;
ConvertDocumentTests convertDocumentName;
DocumentTests documentName;
DocumentStatisticsTests documentStatisticsName;
DocumentWithFormatTests documentWithFormatName;
LoadWebDocumentTests loadWebDocumentName;
RevisionsTests revisionsName;
SplitDocumentToFormatTests splitDocumentToFormatName;
DocumentPropertiesTests documentPropertiesName;
DocumentProtectionTests documentProtectionName;
DrawingObjectsTests drawingObjectsName;
FieldTests fieldName;
FormFieldTests formFieldName;
FontTests fontName;
FootnoteTests footnoteName;
HeaderFooterTests headerFooterName;
HyperlinkTests hyperlinkName;
ListsTests listsName;
MacrosTests macrosName;
ExecuteMailMergeTests executeMailMergeName;
ExecuteTemplateTests executeTemplateName;
MailMergeFiledsTests mailMergeFiledsName;
MathObjectTests mathObjectName;
PageSetupTests pageSetupName;
ParagraphTests paragraphName;
RangeTests rangeName;
BuildReportTests buildReportName;
RunTests runName;
SectionTests sectionName;
FileTests fileName;
FolderTests folderName;
StylesTests stylesName;
TableTests tableName;
TableBorderTests tableBorderName;
TextTests textName;
WatermarkTests watermarkName;

void main() {
  setUpAll(() async {
    final file = new File(Directory.current.path + '/settings/servercreds.json');
    if (await file.exists() == false) {
      throw new Exception('Please put AppKey and AppSid credentials to "SDK_ROOT/settings/servercreds.json".');
    }

    final jsonString = await file.readAsString();
    final Map json = jsonDecode(jsonString);
    final config = Configuration.fromJson(json);
    final testContext = new TestContext(config);

    readmeTests = new ReadmeTests(testContext);
    encodingTests = new EncodingTests(testContext);
    batchTests = new BatchTests(testContext);
    bookmarkName = new BookmarkTests(testContext);
    compatibilityName = new CompatibilityTests(testContext);
    appendDocumentName = new AppendDocumentTests(testContext);
    classificationName = new ClassificationTests(testContext);
    commentName = new CommentTests(testContext);
    compareDocumentName = new CompareDocumentTests(testContext);
    convertDocumentName = new ConvertDocumentTests(testContext);
    documentName = new DocumentTests(testContext);
    documentStatisticsName = new DocumentStatisticsTests(testContext);
    documentWithFormatName = new DocumentWithFormatTests(testContext);
    loadWebDocumentName = new LoadWebDocumentTests(testContext);
    revisionsName = new RevisionsTests(testContext);
    splitDocumentToFormatName = new SplitDocumentToFormatTests(testContext);
    documentPropertiesName = new DocumentPropertiesTests(testContext);
    documentProtectionName = new DocumentProtectionTests(testContext);
    drawingObjectsName = new DrawingObjectsTests(testContext);
    fieldName = new FieldTests(testContext);
    formFieldName = new FormFieldTests(testContext);
    fontName = new FontTests(testContext);
    footnoteName = new FootnoteTests(testContext);
    headerFooterName = new HeaderFooterTests(testContext);
    hyperlinkName = new HyperlinkTests(testContext);
    listsName = new ListsTests(testContext);
    macrosName = new MacrosTests(testContext);
    executeMailMergeName = new ExecuteMailMergeTests(testContext);
    executeTemplateName = new ExecuteTemplateTests(testContext);
    mailMergeFiledsName = new MailMergeFiledsTests(testContext);
    mathObjectName = new MathObjectTests(testContext);
    pageSetupName = new PageSetupTests(testContext);
    paragraphName = new ParagraphTests(testContext);
    rangeName = new RangeTests(testContext);
    buildReportName = new BuildReportTests(testContext);
    runName = new RunTests(testContext);
    sectionName = new SectionTests(testContext);
    fileName = new FileTests(testContext);
    folderName = new FolderTests(testContext);
    stylesName = new StylesTests(testContext);
    tableName = new TableTests(testContext);
    tableBorderName = new TableBorderTests(testContext);
    textName = new TextTests(testContext);
    watermarkName = new WatermarkTests(testContext);
  });

  group('Readme', () {
    test('TestReadme1', () async => await readmeTests.testReadme1());
  });

  group('Encoding', () {
    test('TestEncoding1', () async => await encodingTests.testEncoding1());
  });

  group('Batch', () {
    test('TestBatch1', () async => await batchTests.testBatch1());
  });

  group('Bookmark', () {
    test('GetBookmarks', () async => await bookmarkName.testGetBookmarks());
    test('GetBookmarkByName', () async => await bookmarkName.testGetBookmarkByName());
    test('UpdateBookmark', () async => await bookmarkName.testUpdateBookmark());
  });

  group('Compatibility', () {
    test('OptimizeDocument', () async => await compatibilityName.testOptimizeDocument());
  });

  group('AppendDocument', () {
    test('AppendDocument', () async => await appendDocumentName.testAppendDocument());
  });

  group('Classification', () {
    test('Classify', () async => await classificationName.testClassify());
    test('ClassifyDocument', () async => await classificationName.testClassifyDocument());
  });

  group('Comment', () {
    test('GetComment', () async => await commentName.testGetComment());
    test('GetComments', () async => await commentName.testGetComments());
    test('InsertComment', () async => await commentName.testInsertComment());
    test('UpdateComment', () async => await commentName.testUpdateComment());
    test('DeleteComment', () async => await commentName.testDeleteComment());
  });

  group('CompareDocument', () {
    test('CompareDocument', () async => await compareDocumentName.testCompareDocument());
  });

  group('ConvertDocument', () {
    test('SaveAs', () async => await convertDocumentName.testSaveAs());
    test('SaveAsDocx', () async => await convertDocumentName.testSaveAsDocx());
    test('SaveAsTiff', () async => await convertDocumentName.testSaveAsTiff());
    test('ConvertDocument', () async => await convertDocumentName.testConvertDocument());
  });

  group('Document', () {
    test('GetDocument', () async => await documentName.testGetDocument());
    test('CreateDocument', () async => await documentName.testCreateDocument());
  });

  group('DocumentStatistics', () {
    test('GetDocumentStatistics', () async => await documentStatisticsName.testGetDocumentStatistics());
  });

  group('DocumentWithFormat', () {
    test('GetDocumentWithFormat', () async => await documentWithFormatName.testGetDocumentWithFormat());
    test('GetDocumentWithFormatAndOutPath', () async => await documentWithFormatName.testGetDocumentWithFormatAndOutPath());
  });

  group('LoadWebDocument', () {
    test('LoadWebDocument', () async => await loadWebDocumentName.testLoadWebDocument());
  });

  group('Revisions', () {
    test('AcceptAllRevisions', () async => await revisionsName.testAcceptAllRevisions());
    test('RejectAllRevisions', () async => await revisionsName.testRejectAllRevisions());
  });

  group('SplitDocumentToFormat', () {
    test('SplitDocument', () async => await splitDocumentToFormatName.testSplitDocument());
  });

  group('DocumentProperties', () {
    test('GetDocumentProperties', () async => await documentPropertiesName.testGetDocumentProperties());
    test('GetDocumentProperty', () async => await documentPropertiesName.testGetDocumentProperty());
    test('DeleteDocumentProperty', () async => await documentPropertiesName.testDeleteDocumentProperty());
    test('UpdateDocumentProperty', () async => await documentPropertiesName.testUpdateDocumentProperty());
  });

  group('DocumentProtection', () {
    test('ProtectDocument', () async => await documentProtectionName.testProtectDocument());
    test('GetDocumentProtection', () async => await documentProtectionName.testGetDocumentProtection());
    test('ChangeDocumentProtection', () async => await documentProtectionName.testChangeDocumentProtection());
    test('DeleteUnprotectDocument', () async => await documentProtectionName.testDeleteUnprotectDocument());
  });

  group('DrawingObjects', () {
    test('GetDocumentDrawingObjects', () async => await drawingObjectsName.testGetDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsWithoutNodePath', () async => await drawingObjectsName.testGetDocumentDrawingObjectsWithoutNodePath());
    test('GetDocumentDrawingObjectByIndex', () async => await drawingObjectsName.testGetDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await drawingObjectsName.testGetDocumentDrawingObjectByIndexWithoutNodePath());
    test('RenderDrawingObject', () async => await drawingObjectsName.testRenderDrawingObject());
    test('RenderDrawingObjectWithoutNodePath', () async => await drawingObjectsName.testRenderDrawingObjectWithoutNodePath());
    test('GetDocumentDrawingObjectImageData', () async => await drawingObjectsName.testGetDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await drawingObjectsName.testGetDocumentDrawingObjectImageDataWithoutNodePath());
    test('GetDocumentDrawingObjectOleData', () async => await drawingObjectsName.testGetDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await drawingObjectsName.testGetDocumentDrawingObjectOleDataWithoutNodePath());
    test('InsertDrawingObject', () async => await drawingObjectsName.testInsertDrawingObject());
    test('InsertDrawingObjectWithoutNodePath', () async => await drawingObjectsName.testInsertDrawingObjectWithoutNodePath());
    test('DeleteDrawingObject', () async => await drawingObjectsName.testDeleteDrawingObject());
    test('DeleteDrawingObjectWithoutNodePath', () async => await drawingObjectsName.testDeleteDrawingObjectWithoutNodePath());
    test('UpdateDrawingObject', () async => await drawingObjectsName.testUpdateDrawingObject());
    test('UpdateDrawingObjectWithoutNodePath', () async => await drawingObjectsName.testUpdateDrawingObjectWithoutNodePath());
  });

  group('Field', () {
    test('GetFields', () async => await fieldName.testGetFields());
    test('GetFieldsWithoutNodePath', () async => await fieldName.testGetFieldsWithoutNodePath());
    test('GetField', () async => await fieldName.testGetField());
    test('GetFieldWithoutNodePath', () async => await fieldName.testGetFieldWithoutNodePath());
    test('InsertField', () async => await fieldName.testInsertField());
    test('InsertFieldWithoutNodePath', () async => await fieldName.testInsertFieldWithoutNodePath());
    test('UpdateField', () async => await fieldName.testUpdateField());
    test('InsertPageNumbers', () async => await fieldName.testInsertPageNumbers());
    test('DeleteField', () async => await fieldName.testDeleteField());
    test('DeleteFieldWithoutNodePath', () async => await fieldName.testDeleteFieldWithoutNodePath());
    test('DeleteParagraphFields', () async => await fieldName.testDeleteParagraphFields());
    test('DeleteParagraphFieldsWithoutNodePath', () async => await fieldName.testDeleteParagraphFieldsWithoutNodePath());
    test('DeleteSectionFields', () async => await fieldName.testDeleteSectionFields());
    test('DeleteSectionFieldsWithoutNodePath', () async => await fieldName.testDeleteSectionFieldsWithoutNodePath());
    test('DeleteSectionParagraphFields', () async => await fieldName.testDeleteSectionParagraphFields());
    test('DeleteDocumentFields', () async => await fieldName.testDeleteDocumentFields());
    test('UpdateDocumentFields', () async => await fieldName.testUpdateDocumentFields());
  });

  group('FormField', () {
    test('UpdateFormField', () async => await formFieldName.testUpdateFormField());
    test('UpdateFormFieldWithoutNodePath', () async => await formFieldName.testUpdateFormFieldWithoutNodePath());
    test('GetFormField', () async => await formFieldName.testGetFormField());
    test('GetFormFieldWithoutNodePath', () async => await formFieldName.testGetFormFieldWithoutNodePath());
    test('GetFormFields', () async => await formFieldName.testGetFormFields());
    test('GetFormFieldsWithoutNodePath', () async => await formFieldName.testGetFormFieldsWithoutNodePath());
    test('InsertFormField', () async => await formFieldName.testInsertFormField());
    test('InsertFormFieldWithoutNodePath', () async => await formFieldName.testInsertFormFieldWithoutNodePath());
    test('DeleteFormField', () async => await formFieldName.testDeleteFormField());
    test('DeleteFormFieldWithoutNodePath', () async => await formFieldName.testDeleteFormFieldWithoutNodePath());
  });

  group('Font', () {
    test('ResetCache', () async => await fontName.testResetCache());
    test('GetAvailableFonts', () async => await fontName.testGetAvailableFonts());
  });

  group('Footnote', () {
    test('InsertFootnote', () async => await footnoteName.testInsertFootnote());
    test('InsertFootnoteWithoutNodePath', () async => await footnoteName.testInsertFootnoteWithoutNodePath());
    test('DeleteFootnote', () async => await footnoteName.testDeleteFootnote());
    test('DeleteFootnoteWithoutNodePath', () async => await footnoteName.testDeleteFootnoteWithoutNodePath());
    test('GetFootnotes', () async => await footnoteName.testGetFootnotes());
    test('GetFootnotesWithoutNodePath', () async => await footnoteName.testGetFootnotesWithoutNodePath());
    test('GetFootnote', () async => await footnoteName.testGetFootnote());
    test('GetFootnoteWithoutNodePath', () async => await footnoteName.testGetFootnoteWithoutNodePath());
    test('UpdateFootnote', () async => await footnoteName.testUpdateFootnote());
    test('UpdateFootnoteWithoutNodePath', () async => await footnoteName.testUpdateFootnoteWithoutNodePath());
  });

  group('HeaderFooter', () {
    test('GetHeaderFooters', () async => await headerFooterName.testGetHeaderFooters());
    test('GetHeaderFooter', () async => await headerFooterName.testGetHeaderFooter());
    test('GetHeaderFooterOfSection', () async => await headerFooterName.testGetHeaderFooterOfSection());
    test('DeleteHeaderFooter', () async => await headerFooterName.testDeleteHeaderFooter());
    test('DeleteHeadersFooters', () async => await headerFooterName.testDeleteHeadersFooters());
    test('InsertHeaderFooter', () async => await headerFooterName.testInsertHeaderFooter());
  });

  group('Hyperlink', () {
    test('GetDocumentHyperlinkByIndex', () async => await hyperlinkName.testGetDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinks', () async => await hyperlinkName.testGetDocumentHyperlinks());
  });

  group('Lists', () {
    test('GetLists', () async => await listsName.testGetLists());
    test('GetList', () async => await listsName.testGetList());
    test('UpdateList', () async => await listsName.testUpdateList());
    test('UpdateListLevel', () async => await listsName.testUpdateListLevel());
    test('InsertList', () async => await listsName.testInsertList());
  });

  group('Macros', () {
    test('DeleteMacros', () async => await macrosName.testDeleteMacros());
  });

  group('ExecuteMailMerge', () {
    test('ExecuteMailMergeOnline', () async => await executeMailMergeName.testExecuteMailMergeOnline());
    test('ExecuteMailMerge', () async => await executeMailMergeName.testExecuteMailMerge());
  });

  group('ExecuteTemplate', () {
    test('ExecuteTemplate', () async => await executeTemplateName.testExecuteTemplate());
    test('ExecuteTemplateOnline', () async => await executeTemplateName.testExecuteTemplateOnline());
  });

  group('MailMergeFileds', () {
    test('GetDocumentFieldNamesOnline', () async => await mailMergeFiledsName.testGetDocumentFieldNamesOnline());
    test('GetDocumentFieldNames', () async => await mailMergeFiledsName.testGetDocumentFieldNames());
  });

  group('MathObject', () {
    test('GetOfficeMathObjects', () async => await mathObjectName.testGetOfficeMathObjects());
    test('GetOfficeMathObjectsWithoutNodePath', () async => await mathObjectName.testGetOfficeMathObjectsWithoutNodePath());
    test('GetOfficeMathObject', () async => await mathObjectName.testGetOfficeMathObject());
    test('GetOfficeMathObjectWithoutNodePath', () async => await mathObjectName.testGetOfficeMathObjectWithoutNodePath());
    test('RenderMathObject', () async => await mathObjectName.testRenderMathObject());
    test('RenderMathObjectWithoutNodePath', () async => await mathObjectName.testRenderMathObjectWithoutNodePath());
    test('DeleteOfficeMathObject', () async => await mathObjectName.testDeleteOfficeMathObject());
    test('DeleteOfficeMathObjectWithoutNodePath', () async => await mathObjectName.testDeleteOfficeMathObjectWithoutNodePath());
  });

  group('PageSetup', () {
    test('GetSectionPageSetup', () async => await pageSetupName.testGetSectionPageSetup());
    test('UpdateSectionPageSetup', () async => await pageSetupName.testUpdateSectionPageSetup());
    test('GetRenderPage', () async => await pageSetupName.testGetRenderPage());
  });

  group('Paragraph', () {
    test('GetDocumentParagraphByIndex', () async => await paragraphName.testGetDocumentParagraphByIndex());
    test('GetDocumentParagraphByIndexWithoutNodePath', () async => await paragraphName.testGetDocumentParagraphByIndexWithoutNodePath());
    test('GetDocumentParagraphs', () async => await paragraphName.testGetDocumentParagraphs());
    test('GetDocumentParagraphsWithoutNodePath', () async => await paragraphName.testGetDocumentParagraphsWithoutNodePath());
    test('GetDocumentParagraphRun', () async => await paragraphName.testGetDocumentParagraphRun());
    test('GetDocumentParagraphRunFont', () async => await paragraphName.testGetDocumentParagraphRunFont());
    test('GetParagraphRuns', () async => await paragraphName.testGetParagraphRuns());
    test('UpdateRunFont', () async => await paragraphName.testUpdateRunFont());
    test('InsertParagraph', () async => await paragraphName.testInsertParagraph());
    test('InsertParagraphWithoutNodePath', () async => await paragraphName.testInsertParagraphWithoutNodePath());
    test('RenderParagraph', () async => await paragraphName.testRenderParagraph());
    test('RenderParagraphWithoutNodePath', () async => await paragraphName.testRenderParagraphWithoutNodePath());
    test('GetParagraphFormat', () async => await paragraphName.testGetParagraphFormat());
    test('GetParagraphFormatWithoutNodePath', () async => await paragraphName.testGetParagraphFormatWithoutNodePath());
    test('UpdateParagraphFormat', () async => await paragraphName.testUpdateParagraphFormat());
    test('DeleteParagraph', () async => await paragraphName.testDeleteParagraph());
    test('DeleteParagraphWithoutNodePath', () async => await paragraphName.testDeleteParagraphWithoutNodePath());
    test('GetParagraphListFormat', () async => await paragraphName.testGetParagraphListFormat());
    test('GetParagraphListFormatWithoutNodePath', () async => await paragraphName.testGetParagraphListFormatWithoutNodePath());
    test('UpdateParagraphListFormat', () async => await paragraphName.testUpdateParagraphListFormat());
    test('UpdateParagraphListFormatWithoutNodePath', () async => await paragraphName.testUpdateParagraphListFormatWithoutNodePath());
    test('DeleteParagraphListFormat', () async => await paragraphName.testDeleteParagraphListFormat());
    test('DeleteParagraphListFormatWithoutNodePath', () async => await paragraphName.testDeleteParagraphListFormatWithoutNodePath());
    test('GetParagraphTabStops', () async => await paragraphName.testGetParagraphTabStops());
    test('GetParagraphTabStopsWithoutNodePath', () async => await paragraphName.testGetParagraphTabStopsWithoutNodePath());
    test('InsertParagraphTabStops', () async => await paragraphName.testInsertParagraphTabStops());
    test('InsertParagraphTabStopsWithoutNodePath', () async => await paragraphName.testInsertParagraphTabStopsWithoutNodePath());
    test('DeleteAllParagraphTabStops', () async => await paragraphName.testDeleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsWithoutNodePath', () async => await paragraphName.testDeleteAllParagraphTabStopsWithoutNodePath());
    test('DeleteParagraphTabStop', () async => await paragraphName.testDeleteParagraphTabStop());
    test('DeleteParagraphTabStopWithoutNodePath', () async => await paragraphName.testDeleteParagraphTabStopWithoutNodePath());
  });

  group('Range', () {
    test('GetRangeText', () async => await rangeName.testGetRangeText());
    test('RemoveRange', () async => await rangeName.testRemoveRange());
    test('SaveAsRange', () async => await rangeName.testSaveAsRange());
    test('ReplaceWithText', () async => await rangeName.testReplaceWithText());
  });

  group('BuildReport', () {
    test('BuildReportOnline', () async => await buildReportName.testBuildReportOnline());
    test('BuildReport', () async => await buildReportName.testBuildReport());
  });

  group('Run', () {
    test('UpdateRun', () async => await runName.testUpdateRun());
    test('InsertRun', () async => await runName.testInsertRun());
    test('DeleteRun', () async => await runName.testDeleteRun());
  });

  group('Section', () {
    test('GetSection', () async => await sectionName.testGetSection());
    test('GetSections', () async => await sectionName.testGetSections());
    test('DeleteSection', () async => await sectionName.testDeleteSection());
  });

  group('File', () {
    test('UploadFile', () async => await fileName.testUploadFile());
    test('CopyFile', () async => await fileName.testCopyFile());
    test('MoveFile', () async => await fileName.testMoveFile());
    test('DeleteFile', () async => await fileName.testDeleteFile());
    test('DownloadFile', () async => await fileName.testDownloadFile());
  });

  group('Folder', () {
    test('CreateFolder', () async => await folderName.testCreateFolder());
    test('DeleteFolder', () async => await folderName.testDeleteFolder());
    test('GetFilesList', () async => await folderName.testGetFilesList());
    test('CopyFolder', () async => await folderName.testCopyFolder());
    test('MoveFolder', () async => await folderName.testMoveFolder());
  });

  group('Styles', () {
    test('GetStyles', () async => await stylesName.testGetStyles());
    test('GetStyle', () async => await stylesName.testGetStyle());
    test('UpdateStyle', () async => await stylesName.testUpdateStyle());
    test('InsertStyle', () async => await stylesName.testInsertStyle());
    test('CopyStyle', () async => await stylesName.testCopyStyle());
    test('GetStyleFromDocumentElement', () async => await stylesName.testGetStyleFromDocumentElement());
    test('ApplyStyleToDocumentElement', () async => await stylesName.testApplyStyleToDocumentElement());
  });

  group('Table', () {
    test('GetTables', () async => await tableName.testGetTables());
    test('GetTablesWithoutNodePath', () async => await tableName.testGetTablesWithoutNodePath());
    test('GetTable', () async => await tableName.testGetTable());
    test('GetTableWithoutNodePath', () async => await tableName.testGetTableWithoutNodePath());
    test('DeleteTable', () async => await tableName.testDeleteTable());
    test('DeleteTableWithoutNodePath', () async => await tableName.testDeleteTableWithoutNodePath());
    test('InsertTable', () async => await tableName.testInsertTable());
    test('InsertTableWithoutNodePath', () async => await tableName.testInsertTableWithoutNodePath());
    test('GetTableProperties', () async => await tableName.testGetTableProperties());
    test('GetTablePropertiesWithoutNodePath', () async => await tableName.testGetTablePropertiesWithoutNodePath());
    test('UpdateTableProperties', () async => await tableName.testUpdateTableProperties());
    test('UpdateTablePropertiesWithoutNodePath', () async => await tableName.testUpdateTablePropertiesWithoutNodePath());
    test('GetTableRow', () async => await tableName.testGetTableRow());
    test('DeleteTableRow', () async => await tableName.testDeleteTableRow());
    test('InsertTableRow', () async => await tableName.testInsertTableRow());
    test('GetTableRowFormat', () async => await tableName.testGetTableRowFormat());
    test('UpdateTableRowFormat', () async => await tableName.testUpdateTableRowFormat());
    test('GetTableCell', () async => await tableName.testGetTableCell());
    test('DeleteTableCell', () async => await tableName.testDeleteTableCell());
    test('InsertTableCell', () async => await tableName.testInsertTableCell());
    test('GetTableCellFormat', () async => await tableName.testGetTableCellFormat());
    test('UpdateTableCellFormat', () async => await tableName.testUpdateTableCellFormat());
    test('RenderTable', () async => await tableName.testRenderTable());
    test('RenderTableWithoutNodePath', () async => await tableName.testRenderTableWithoutNodePath());
  });

  group('TableBorder', () {
    test('GetBorders', () async => await tableBorderName.testGetBorders());
    test('GetBorder', () async => await tableBorderName.testGetBorder());
    test('DeleteBorders', () async => await tableBorderName.testDeleteBorders());
    test('DeleteBorder', () async => await tableBorderName.testDeleteBorder());
    test('UpdateBorder', () async => await tableBorderName.testUpdateBorder());
  });

  group('Text', () {
    test('ReplaceText', () async => await textName.testReplaceText());
    test('Search', () async => await textName.testSearch());
  });

  group('Watermark', () {
    test('InsertWatermarkImage', () async => await watermarkName.testInsertWatermarkImage());
    test('InsertWatermarkText', () async => await watermarkName.testInsertWatermarkText());
    test('DeleteWatermark', () async => await watermarkName.testDeleteWatermark());
  });
}
