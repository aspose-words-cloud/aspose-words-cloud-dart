/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="words_api.dart">
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

library aspose_words_cloud;

import '../aspose_words_cloud.dart';
import './api_client.dart';
import 'dart:typed_data';

/// Aspose.Words for Cloud API.
class WordsApi {
  final ApiClient _apiClient;
  WordsApi(final Configuration configuration) : this._apiClient = new ApiClient(configuration);

  /// Accepts all revisions in document.
  Future< RevisionsModificationResponse > acceptAllRevisions(AcceptAllRevisionsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Appends documents to original document.
  Future< DocumentResponse > appendDocument(AppendDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Apply a style to the document node.
  Future< WordsResponse > applyStyleToDocumentElement(ApplyStyleToDocumentElementRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Executes document "build report" operation.
  Future< DocumentResponse > buildReport(BuildReportRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Executes document "build report" online operation.
  Future< ByteData > buildReportOnline(BuildReportOnlineRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Classifies raw text.
  Future< ClassificationResponse > classify(ClassifyRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Classifies document.
  Future< ClassificationResponse > classifyDocument(ClassifyDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Compares document with original document.
  Future< DocumentResponse > compareDocument(CompareDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Converts document from the request's content to the specified format.
  Future< ByteData > convertDocument(ConvertDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Copy file.
  Future< void > copyFile(CopyFileRequest request) async {
  await this._apiClient.call(request);
  }

  /// Copy folder.
  Future< void > copyFolder(CopyFolderRequest request) async {
  await this._apiClient.call(request);
  }

  /// Copy and insert a new style to the document, returns a copied style.
  Future< StyleResponse > copyStyle(CopyStyleRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Creates new document.
  /// Document is created with format which is recognized from file extensions.
  /// Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
  Future< DocumentResponse > createDocument(CreateDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Create the folder.
  Future< void > createFolder(CreateFolderRequest request) async {
  await this._apiClient.call(request);
  }

  /// Adds new or update existing document property.
  Future< DocumentPropertyResponse > createOrUpdateDocumentProperty(CreateOrUpdateDocumentPropertyRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Remove all tab stops.
  Future< TabStopsResponse > deleteAllParagraphTabStops(DeleteAllParagraphTabStopsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// 'nodePath' should refer to paragraph, cell or row.
  Future< BorderResponse > deleteBorder(DeleteBorderRequest request) async {
    return await this._apiClient.call(request);
  }

  /// 'nodePath' should refer to paragraph, cell or row.
  Future< BordersResponse > deleteBorders(DeleteBordersRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Removes comment from document.
  Future< void > deleteComment(DeleteCommentRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes document property.
  Future< void > deleteDocumentProperty(DeleteDocumentPropertyRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes drawing object from document.
  Future< void > deleteDrawingObject(DeleteDrawingObjectRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes field from document.
  Future< void > deleteField(DeleteFieldRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes fields from section paragraph.
  Future< void > deleteFields(DeleteFieldsRequest request) async {
  await this._apiClient.call(request);
  }

  /// Delete file.
  Future< void > deleteFile(DeleteFileRequest request) async {
  await this._apiClient.call(request);
  }

  /// Delete folder.
  Future< void > deleteFolder(DeleteFolderRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes footnote from document.
  Future< void > deleteFootnote(DeleteFootnoteRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes form field from document.
  Future< void > deleteFormField(DeleteFormFieldRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes header/footer from document.
  Future< void > deleteHeaderFooter(DeleteHeaderFooterRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes document headers and footers.
  Future< void > deleteHeadersFooters(DeleteHeadersFootersRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes macros from document.
  Future< void > deleteMacros(DeleteMacrosRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes OfficeMath object from document.
  Future< void > deleteOfficeMathObject(DeleteOfficeMathObjectRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes paragraph from section.
  Future< void > deleteParagraph(DeleteParagraphRequest request) async {
  await this._apiClient.call(request);
  }

  /// Delete paragraph list format, returns updated list format properties.
  Future< ParagraphListFormatResponse > deleteParagraphListFormat(DeleteParagraphListFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Remove the i-th tab stop.
  Future< TabStopsResponse > deleteParagraphTabStop(DeleteParagraphTabStopRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Removes run from document.
  Future< void > deleteRun(DeleteRunRequest request) async {
  await this._apiClient.call(request);
  }

  /// Removes section from document.
  Future< void > deleteSection(DeleteSectionRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes a table.
  Future< void > deleteTable(DeleteTableRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes a table cell.
  Future< void > deleteTableCell(DeleteTableCellRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes a table row.
  Future< void > deleteTableRow(DeleteTableRowRequest request) async {
  await this._apiClient.call(request);
  }

  /// Deletes watermark (for deleting last watermark from the document).
  Future< DocumentResponse > deleteWatermark(DeleteWatermarkRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Download file.
  Future< ByteData > downloadFile(DownloadFileRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Executes document mail merge operation.
  Future< DocumentResponse > executeMailMerge(ExecuteMailMergeRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Executes document mail merge online.
  Future< ByteData > executeMailMergeOnline(ExecuteMailMergeOnlineRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets the list of fonts, available for document processing.
  Future< AvailableFontsResponse > getAvailableFonts(GetAvailableFontsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document bookmark data by its name.
  Future< BookmarkResponse > getBookmarkByName(GetBookmarkByNameRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document bookmarks common info.
  Future< BookmarksResponse > getBookmarks(GetBookmarksRequest request) async {
    return await this._apiClient.call(request);
  }

  /// 'nodePath' should refer to paragraph, cell or row.
  Future< BorderResponse > getBorder(GetBorderRequest request) async {
    return await this._apiClient.call(request);
  }

  /// 'nodePath' should refer to paragraph, cell or row.
  Future< BordersResponse > getBorders(GetBordersRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets comment from document.
  Future< CommentResponse > getComment(GetCommentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets comments from document.
  Future< CommentsResponse > getComments(GetCommentsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document common info.
  Future< DocumentResponse > getDocument(GetDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document drawing object common info by its index or convert to format specified.
  Future< DrawingObjectResponse > getDocumentDrawingObjectByIndex(GetDocumentDrawingObjectByIndexRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads drawing object image data.
  Future< ByteData > getDocumentDrawingObjectImageData(GetDocumentDrawingObjectImageDataRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets drawing object OLE data.
  Future< ByteData > getDocumentDrawingObjectOleData(GetDocumentDrawingObjectOleDataRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document drawing objects common info.
  Future< DrawingObjectsResponse > getDocumentDrawingObjects(GetDocumentDrawingObjectsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document field names.
  Future< FieldNamesResponse > getDocumentFieldNames(GetDocumentFieldNamesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document field names.
  Future< FieldNamesResponse > getDocumentFieldNamesOnline(GetDocumentFieldNamesOnlineRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document hyperlink by its index.
  Future< HyperlinkResponse > getDocumentHyperlinkByIndex(GetDocumentHyperlinkByIndexRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document hyperlinks common info.
  Future< HyperlinksResponse > getDocumentHyperlinks(GetDocumentHyperlinksRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document properties info.
  Future< DocumentPropertiesResponse > getDocumentProperties(GetDocumentPropertiesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document property info by the property name.
  Future< DocumentPropertyResponse > getDocumentProperty(GetDocumentPropertyRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document protection common info.
  Future< ProtectionDataResponse > getDocumentProtection(GetDocumentProtectionRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads document statistics.
  Future< StatDataResponse > getDocumentStatistics(GetDocumentStatisticsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Exports the document into the specified format.
  Future< ByteData > getDocumentWithFormat(GetDocumentWithFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets field from document.
  Future< FieldResponse > getField(GetFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Get fields from document.
  Future< FieldsResponse > getFields(GetFieldsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Get all files and folders within a folder.
  Future< FilesList > getFilesList(GetFilesListRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads footnote by index.
  Future< FootnoteResponse > getFootnote(GetFootnoteRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets footnotes from document.
  Future< FootnotesResponse > getFootnotes(GetFootnotesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns representation of an one of the form field.
  Future< FormFieldResponse > getFormField(GetFormFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets form fields from document.
  Future< FormFieldsResponse > getFormFields(GetFormFieldsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a header/footer from the document by index.
  Future< HeaderFooterResponse > getHeaderFooter(GetHeaderFooterRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a header/footer from the document section.
  Future< HeaderFooterResponse > getHeaderFooterOfSection(GetHeaderFooterOfSectionRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of header/footers from the document.
  Future< HeaderFootersResponse > getHeaderFooters(GetHeaderFootersRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents one of the lists contained in the document.
  Future< ListResponse > getList(GetListRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of lists that are contained in the document.
  Future< ListsResponse > getLists(GetListsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Reads OfficeMath object by index.
  Future< OfficeMathObjectResponse > getOfficeMathObject(GetOfficeMathObjectRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets OfficeMath objects from document.
  Future< OfficeMathObjectsResponse > getOfficeMathObjects(GetOfficeMathObjectsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents one of the paragraphs contained in the document.
  Future< ParagraphResponse > getParagraph(GetParagraphRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Represents all the formatting for a paragraph.
  Future< ParagraphFormatResponse > getParagraphFormat(GetParagraphFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Represents list format for a paragraph.
  Future< ParagraphListFormatResponse > getParagraphListFormat(GetParagraphListFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of paragraphs that are contained in the document.
  Future< ParagraphLinkCollectionResponse > getParagraphs(GetParagraphsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Get all tab stops for the paragraph.
  Future< TabStopsResponse > getParagraphTabStops(GetParagraphTabStopsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets the text from the range.
  Future< RangeTextResponse > getRangeText(GetRangeTextRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents run of text contained in the document.
  Future< RunResponse > getRun(GetRunRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents font of run.
  Future< FontResponse > getRunFont(GetRunFontRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents collection of runs in the paragraph.
  Future< RunsResponse > getRuns(GetRunsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets document section by index.
  Future< SectionResponse > getSection(GetSectionRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets page setup of section.
  Future< SectionPageSetupResponse > getSectionPageSetup(GetSectionPageSetupRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of sections that are contained in the document.
  Future< SectionLinkCollectionResponse > getSections(GetSectionsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// This resource represents one of the styles contained in the document.
  Future< StyleResponse > getStyle(GetStyleRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Gets a style from the document node.
  Future< StyleResponse > getStyleFromDocumentElement(GetStyleFromDocumentElementRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of styles contained in the document.
  Future< StylesResponse > getStyles(GetStylesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table.
  Future< TableResponse > getTable(GetTableRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table cell.
  Future< TableCellResponse > getTableCell(GetTableCellRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table cell format.
  Future< TableCellFormatResponse > getTableCellFormat(GetTableCellFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table properties.
  Future< TablePropertiesResponse > getTableProperties(GetTablePropertiesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table row.
  Future< TableRowResponse > getTableRow(GetTableRowRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a table row format.
  Future< TableRowFormatResponse > getTableRowFormat(GetTableRowFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Returns a list of tables that are contained in the document.
  Future< TableLinkCollectionResponse > getTables(GetTablesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds comment to document, returns inserted comment data.
  Future< CommentResponse > insertComment(InsertCommentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds drawing object to document, returns added  drawing object's data.
  Future< DrawingObjectResponse > insertDrawingObject(InsertDrawingObjectRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds field to document, returns inserted field's data.
  Future< FieldResponse > insertField(InsertFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds footnote to document, returns added footnote's data.
  Future< FootnoteResponse > insertFootnote(InsertFootnoteRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds form field to paragraph, returns added form field's data.
  Future< FormFieldResponse > insertFormField(InsertFormFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Inserts to document header or footer.
  Future< HeaderFooterResponse > insertHeaderFooter(InsertHeaderFooterRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds list to document, returns added list's data.
  Future< ListResponse > insertList(InsertListRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Insert or resplace tab stop if a tab stop with the position exists.
  Future< TabStopsResponse > insertOrUpdateParagraphTabStop(InsertOrUpdateParagraphTabStopRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Inserts document page numbers.
  Future< DocumentResponse > insertPageNumbers(InsertPageNumbersRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds paragraph to document, returns added paragraph's data.
  Future< ParagraphResponse > insertParagraph(InsertParagraphRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds run to document, returns added paragraph's data.
  Future< RunResponse > insertRun(InsertRunRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds a style to the document, returns an added style.
  Future< StyleResponse > insertStyle(InsertStyleRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds table to document, returns added table's data.
  Future< TableResponse > insertTable(InsertTableRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds table cell to table, returns added cell's data.
  Future< TableCellResponse > insertTableCell(InsertTableCellRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Adds table row to table, returns added row's data.
  Future< TableRowResponse > insertTableRow(InsertTableRowRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Inserts document watermark image.
  Future< DocumentResponse > insertWatermarkImage(InsertWatermarkImageRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Inserts document watermark text.
  Future< DocumentResponse > insertWatermarkText(InsertWatermarkTextRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Loads new document from web into the file with any supported format of data.
  Future< SaveResponse > loadWebDocument(LoadWebDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Move file.
  Future< void > moveFile(MoveFileRequest request) async {
  await this._apiClient.call(request);
  }

  /// Move folder.
  Future< void > moveFolder(MoveFolderRequest request) async {
  await this._apiClient.call(request);
  }

  /// Allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word.
  Future< void > optimizeDocument(OptimizeDocumentRequest request) async {
  await this._apiClient.call(request);
  }

  /// Protects document.
  Future< ProtectionDataResponse > protectDocument(ProtectDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Rejects all revisions in document.
  Future< RevisionsModificationResponse > rejectAllRevisions(RejectAllRevisionsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Removes the range from the document.
  Future< DocumentResponse > removeRange(RemoveRangeRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Renders drawing object to specified format.
  Future< ByteData > renderDrawingObject(RenderDrawingObjectRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Renders math object to specified format.
  Future< ByteData > renderMathObject(RenderMathObjectRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Renders page to specified format.
  Future< ByteData > renderPage(RenderPageRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Renders paragraph to specified format.
  Future< ByteData > renderParagraph(RenderParagraphRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Renders table to specified format.
  Future< ByteData > renderTable(RenderTableRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Replaces document text.
  Future< ReplaceTextResponse > replaceText(ReplaceTextRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Replaces the content in the range.
  Future< DocumentResponse > replaceWithText(ReplaceWithTextRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Resets font's cache.
  Future< void > resetCache(ResetCacheRequest request) async {
  await this._apiClient.call(request);
  }

  /// Converts document to destination format with detailed settings and saves result to storage.
  Future< SaveResponse > saveAs(SaveAsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Saves the selected range as a new document.
  Future< DocumentResponse > saveAsRange(SaveAsRangeRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Converts document to tiff with detailed settings and saves result to storage.
  Future< SaveResponse > saveAsTiff(SaveAsTiffRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Searches text in document.
  Future< SearchResponse > search(SearchRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Splits document.
  Future< SplitDocumentResponse > splitDocument(SplitDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Unprotects document.
  Future< ProtectionDataResponse > unprotectDocument(UnprotectDocumentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates document bookmark.
  Future< BookmarkResponse > updateBookmark(UpdateBookmarkRequest request) async {
    return await this._apiClient.call(request);
  }

  /// 'nodePath' should refer to paragraph, cell or row.
  Future< BorderResponse > updateBorder(UpdateBorderRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates the comment, returns updated comment data.
  Future< CommentResponse > updateComment(UpdateCommentRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates drawing object, returns updated  drawing object's data.
  Future< DrawingObjectResponse > updateDrawingObject(UpdateDrawingObjectRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates field's properties, returns updated field's data.
  Future< FieldResponse > updateField(UpdateFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates (reevaluate) fields in document.
  Future< DocumentResponse > updateFields(UpdateFieldsRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates footnote's properties, returns updated run's data.
  Future< FootnoteResponse > updateFootnote(UpdateFootnoteRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates properties of form field, returns updated form field.
  Future< FormFieldResponse > updateFormField(UpdateFormFieldRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates list properties, returns updated list.
  Future< ListResponse > updateList(UpdateListRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates list level in document list, returns updated list.
  Future< ListResponse > updateListLevel(UpdateListLevelRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates paragraph format properties, returns updated format properties.
  Future< ParagraphFormatResponse > updateParagraphFormat(UpdateParagraphFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates paragraph list format properties, returns updated list format properties.
  Future< ParagraphListFormatResponse > updateParagraphListFormat(UpdateParagraphListFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates run's properties, returns updated run's data.
  Future< RunResponse > updateRun(UpdateRunRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates font properties, returns updated font data.
  Future< FontResponse > updateRunFont(UpdateRunFontRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates page setup of section.
  Future< SectionPageSetupResponse > updateSectionPageSetup(UpdateSectionPageSetupRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates style properties, returns an updated style.
  Future< StyleResponse > updateStyle(UpdateStyleRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates a table cell format.
  Future< TableCellFormatResponse > updateTableCellFormat(UpdateTableCellFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates a table properties.
  Future< TablePropertiesResponse > updateTableProperties(UpdateTablePropertiesRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Updates a table row format.
  Future< TableRowFormatResponse > updateTableRowFormat(UpdateTableRowFormatRequest request) async {
    return await this._apiClient.call(request);
  }

  /// Upload file.
  Future< FilesUploadResult > uploadFile(UploadFileRequest request) async {
    return await this._apiClient.call(request);
  }

  // Batch request
  Future< List<dynamic> > batch(final List<RequestBase> requests) async {
    return await this._apiClient.callBatch(requests);
  }
}