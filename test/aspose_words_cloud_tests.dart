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
import 'test_context.dart';
import 'dart:convert';
import 'dart:io';

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

  await (new BookmarkTests(testContext)).runAll();
  await (new CompatibilityTests(testContext)).runAll();
  await (new AppendDocumentTests(testContext)).runAll();
  await (new ClassificationTests(testContext)).runAll();
  await (new CommentTests(testContext)).runAll();
  await (new CompareDocumentTests(testContext)).runAll();
  await (new ConvertDocumentTests(testContext)).runAll();
  await (new DocumentTests(testContext)).runAll();
  await (new DocumentStatisticsTests(testContext)).runAll();
  await (new DocumentWithFormatTests(testContext)).runAll();
  await (new LoadWebDocumentTests(testContext)).runAll();
  await (new RevisionsTests(testContext)).runAll();
  await (new SplitDocumentToFormatTests(testContext)).runAll();
  await (new DocumentPropertiesTests(testContext)).runAll();
  await (new DocumentProtectionTests(testContext)).runAll();
  await (new DrawingObjectsTests(testContext)).runAll();
  await (new FieldTests(testContext)).runAll();
  await (new FormFieldTests(testContext)).runAll();
  await (new FontTests(testContext)).runAll();
  await (new FootnoteTests(testContext)).runAll();
  await (new HeaderFooterTests(testContext)).runAll();
  await (new HyperlinkTests(testContext)).runAll();
  await (new ListsTests(testContext)).runAll();
  await (new MacrosTests(testContext)).runAll();
  await (new ExecuteMailMergeTests(testContext)).runAll();
  await (new ExecuteTemplateTests(testContext)).runAll();
  await (new MailMergeFiledsTests(testContext)).runAll();
  await (new MathObjectTests(testContext)).runAll();
  await (new PageSetupTests(testContext)).runAll();
  await (new ParagraphTests(testContext)).runAll();
  await (new RangeTests(testContext)).runAll();
  await (new BuildReportTests(testContext)).runAll();
  await (new RunTests(testContext)).runAll();
  await (new SectionTests(testContext)).runAll();
  await (new FileTests(testContext)).runAll();
  await (new FolderTests(testContext)).runAll();
  await (new StylesTests(testContext)).runAll();
  await (new TableTests(testContext)).runAll();
  await (new TableBorderTests(testContext)).runAll();
  await (new TextTests(testContext)).runAll();
  await (new WatermarkTests(testContext)).runAll();
}
