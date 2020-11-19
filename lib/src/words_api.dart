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

import 'dart:typed_data';

import '../aspose_words_cloud.dart';
import './api_client.dart';

/// Aspose.Words for Cloud API.
class WordsApi {
  final ApiClient _apiClient;
  WordsApi(final Configuration configuration) : _apiClient = ApiClient(configuration);

  /// Accepts all revisions in the document.
  Future< RevisionsModificationResponse > acceptAllRevisions(AcceptAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Appends documents to the original document.
  Future< DocumentResponse > appendDocument(AppendDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Applies a style to the document node.
  Future< WordsResponse > applyStyleToDocumentElement(ApplyStyleToDocumentElementRequest request) async {
    return await _apiClient.call(request) as WordsResponse;
  }

  /// Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
  Future< DocumentResponse > buildReport(BuildReportRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
  Future< ByteData > buildReportOnline(BuildReportOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Runs a multi-class text classification for the specified raw text.
  Future< ClassificationResponse > classify(ClassifyRequest request) async {
    return await _apiClient.call(request) as ClassificationResponse;
  }

  /// Runs a multi-class text classification for the document.
  Future< ClassificationResponse > classifyDocument(ClassifyDocumentRequest request) async {
    return await _apiClient.call(request) as ClassificationResponse;
  }

  /// Compares two documents.
  Future< DocumentResponse > compareDocument(CompareDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Converts a document on a local drive to the specified format.
  Future< ByteData > convertDocument(ConvertDocumentRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Copy file.
  Future< void > copyFile(CopyFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Copy folder.
  Future< void > copyFolder(CopyFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Makes a copy of the style in the document.
  Future< StyleResponse > copyStyle(CopyStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
  Future< DocumentResponse > createDocument(CreateDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Create the folder.
  Future< void > createFolder(CreateFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Adds a new or updates an existing document property.
  Future< DocumentPropertyResponse > createOrUpdateDocumentProperty(CreateOrUpdateDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Removes paragraph tab stops from the document node.
  Future< TabStopsResponse > deleteAllParagraphTabStops(DeleteAllParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > deleteBorder(DeleteBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BordersResponse > deleteBorders(DeleteBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Removes a comment from the document.
  Future< void > deleteComment(DeleteCommentRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a document property.
  Future< void > deleteDocumentProperty(DeleteDocumentPropertyRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a DrawingObject from the document node.
  Future< void > deleteDrawingObject(DeleteDrawingObjectRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a field from the document node.
  Future< void > deleteField(DeleteFieldRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes fields from the document node.
  Future< void > deleteFields(DeleteFieldsRequest request) async {
  await _apiClient.call(request);
  }

  /// Delete file.
  Future< void > deleteFile(DeleteFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Delete folder.
  Future< void > deleteFolder(DeleteFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a footnote from the document node.
  Future< void > deleteFootnote(DeleteFootnoteRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a form field from the document node.
  Future< void > deleteFormField(DeleteFormFieldRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a HeaderFooter object from the document section.
  Future< void > deleteHeaderFooter(DeleteHeaderFooterRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes HeaderFooter objects from the document section.
  Future< void > deleteHeadersFooters(DeleteHeadersFootersRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes macros from the document.
  Future< void > deleteMacros(DeleteMacrosRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes an OfficeMath object from the document node.
  Future< void > deleteOfficeMathObject(DeleteOfficeMathObjectRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a paragraph from the document node.
  Future< void > deleteParagraph(DeleteParagraphRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes the formatting properties of a paragraph list from the document node.
  Future< ParagraphListFormatResponse > deleteParagraphListFormat(DeleteParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Removes a paragraph tab stop from the document node.
  Future< TabStopsResponse > deleteParagraphTabStop(DeleteParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Removes a Run object from the paragraph.
  Future< void > deleteRun(DeleteRunRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a section from the document.
  Future< void > deleteSection(DeleteSectionRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a table from the document node.
  Future< void > deleteTable(DeleteTableRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a cell from the table row.
  Future< void > deleteTableCell(DeleteTableCellRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a row from the table.
  Future< void > deleteTableRow(DeleteTableRowRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a watermark from the document.
  Future< DocumentResponse > deleteWatermark(DeleteWatermarkRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Download file.
  Future< ByteData > downloadFile(DownloadFileRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Executes a Mail Merge operation.
  Future< DocumentResponse > executeMailMerge(ExecuteMailMergeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes a Mail Merge operation online.
  Future< ByteData > executeMailMergeOnline(ExecuteMailMergeOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads available fonts from the document.
  Future< AvailableFontsResponse > getAvailableFonts(GetAvailableFontsRequest request) async {
    return await _apiClient.call(request) as AvailableFontsResponse;
  }

  /// Reads a bookmark, specified by name, from the document.
  Future< BookmarkResponse > getBookmarkByName(GetBookmarkByNameRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Reads bookmarks from the document.
  Future< BookmarksResponse > getBookmarks(GetBookmarksRequest request) async {
    return await _apiClient.call(request) as BookmarksResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > getBorder(GetBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Reads borders from the document node.
  Future< BordersResponse > getBorders(GetBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Reads a comment from the document.
  Future< CommentResponse > getComment(GetCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Reads comments from the document.
  Future< CommentsResponse > getComments(GetCommentsRequest request) async {
    return await _apiClient.call(request) as CommentsResponse;
  }

  /// Reads common information from the document.
  Future< DocumentResponse > getDocument(GetDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Reads a DrawingObject from the document node.
  Future< DrawingObjectResponse > getDocumentDrawingObjectByIndex(GetDocumentDrawingObjectByIndexRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Reads image data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectImageData(GetDocumentDrawingObjectImageDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads OLE data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectOleData(GetDocumentDrawingObjectOleDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads DrawingObjects from the document node.
  Future< DrawingObjectsResponse > getDocumentDrawingObjects(GetDocumentDrawingObjectsRequest request) async {
    return await _apiClient.call(request) as DrawingObjectsResponse;
  }

  /// Reads merge field names from the document.
  Future< FieldNamesResponse > getDocumentFieldNames(GetDocumentFieldNamesRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads merge field names from the document.
  Future< FieldNamesResponse > getDocumentFieldNamesOnline(GetDocumentFieldNamesOnlineRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads a hyperlink from the document.
  Future< HyperlinkResponse > getDocumentHyperlinkByIndex(GetDocumentHyperlinkByIndexRequest request) async {
    return await _apiClient.call(request) as HyperlinkResponse;
  }

  /// Reads hyperlinks from the document.
  Future< HyperlinksResponse > getDocumentHyperlinks(GetDocumentHyperlinksRequest request) async {
    return await _apiClient.call(request) as HyperlinksResponse;
  }

  /// Reads document properties.
  Future< DocumentPropertiesResponse > getDocumentProperties(GetDocumentPropertiesRequest request) async {
    return await _apiClient.call(request) as DocumentPropertiesResponse;
  }

  /// Reads a document property.
  Future< DocumentPropertyResponse > getDocumentProperty(GetDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Reads protection properties from the document.
  Future< ProtectionDataResponse > getDocumentProtection(GetDocumentProtectionRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Reads document statistics.
  Future< StatDataResponse > getDocumentStatistics(GetDocumentStatisticsRequest request) async {
    return await _apiClient.call(request) as StatDataResponse;
  }

  /// Converts a document in cloud storage to the specified format.
  Future< ByteData > getDocumentWithFormat(GetDocumentWithFormatRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads a field from the document node.
  Future< FieldResponse > getField(GetFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reads fields from the document node.
  Future< FieldsResponse > getFields(GetFieldsRequest request) async {
    return await _apiClient.call(request) as FieldsResponse;
  }

  /// Get all files and folders within a folder.
  Future< FilesList > getFilesList(GetFilesListRequest request) async {
    return await _apiClient.call(request) as FilesList;
  }

  /// Reads a footnote from the document node.
  Future< FootnoteResponse > getFootnote(GetFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Reads footnotes from the document node.
  Future< FootnotesResponse > getFootnotes(GetFootnotesRequest request) async {
    return await _apiClient.call(request) as FootnotesResponse;
  }

  /// Reads a form field from the document node.
  Future< FormFieldResponse > getFormField(GetFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Reads form fields from the document node.
  Future< FormFieldsResponse > getFormFields(GetFormFieldsRequest request) async {
    return await _apiClient.call(request) as FormFieldsResponse;
  }

  /// Reads a HeaderFooter object from the document.
  Future< HeaderFooterResponse > getHeaderFooter(GetHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document section.
  Future< HeaderFooterResponse > getHeaderFooterOfSection(GetHeaderFooterOfSectionRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads HeaderFooter objects from the document section.
  Future< HeaderFootersResponse > getHeaderFooters(GetHeaderFootersRequest request) async {
    return await _apiClient.call(request) as HeaderFootersResponse;
  }

  /// Reads a list from the document.
  Future< ListResponse > getList(GetListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Reads lists from the document.
  Future< ListsResponse > getLists(GetListsRequest request) async {
    return await _apiClient.call(request) as ListsResponse;
  }

  /// Reads an OfficeMath object from the document node.
  Future< OfficeMathObjectResponse > getOfficeMathObject(GetOfficeMathObjectRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectResponse;
  }

  /// Reads OfficeMath objects from the document node.
  Future< OfficeMathObjectsResponse > getOfficeMathObjects(GetOfficeMathObjectsRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectsResponse;
  }

  /// Reads a paragraph from the document node.
  Future< ParagraphResponse > getParagraph(GetParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Reads the formatting properties of a paragraph from the document node.
  Future< ParagraphFormatResponse > getParagraphFormat(GetParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Reads the formatting properties of a paragraph list from the document node.
  Future< ParagraphListFormatResponse > getParagraphListFormat(GetParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Reads paragraphs from the document node.
  Future< ParagraphLinkCollectionResponse > getParagraphs(GetParagraphsRequest request) async {
    return await _apiClient.call(request) as ParagraphLinkCollectionResponse;
  }

  /// Reads paragraph tab stops from the document node.
  Future< TabStopsResponse > getParagraphTabStops(GetParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Reads range text from the document.
  Future< RangeTextResponse > getRangeText(GetRangeTextRequest request) async {
    return await _apiClient.call(request) as RangeTextResponse;
  }

  /// Reads a Run object from the paragraph.
  Future< RunResponse > getRun(GetRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Reads the font properties of a Run object from the paragraph.
  Future< FontResponse > getRunFont(GetRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Reads Run objects from the paragraph.
  Future< RunsResponse > getRuns(GetRunsRequest request) async {
    return await _apiClient.call(request) as RunsResponse;
  }

  /// Reads a section from the document.
  Future< SectionResponse > getSection(GetSectionRequest request) async {
    return await _apiClient.call(request) as SectionResponse;
  }

  /// Reads the page setup of a section from the document.
  Future< SectionPageSetupResponse > getSectionPageSetup(GetSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Reads sections from the document.
  Future< SectionLinkCollectionResponse > getSections(GetSectionsRequest request) async {
    return await _apiClient.call(request) as SectionLinkCollectionResponse;
  }

  /// Reads a style from the document.
  Future< StyleResponse > getStyle(GetStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document node.
  Future< StyleResponse > getStyleFromDocumentElement(GetStyleFromDocumentElementRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads styles from the document.
  Future< StylesResponse > getStyles(GetStylesRequest request) async {
    return await _apiClient.call(request) as StylesResponse;
  }

  /// Reads a table from the document node.
  Future< TableResponse > getTable(GetTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Reads a cell from the table row.
  Future< TableCellResponse > getTableCell(GetTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Reads the formatting properties of a table cell.
  Future< TableCellFormatResponse > getTableCellFormat(GetTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Reads properties of a table from the document node.
  Future< TablePropertiesResponse > getTableProperties(GetTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Reads a row from the table.
  Future< TableRowResponse > getTableRow(GetTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Reads the formatting properties of a table row.
  Future< TableRowFormatResponse > getTableRowFormat(GetTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Reads tables from the document node.
  Future< TableLinkCollectionResponse > getTables(GetTablesRequest request) async {
    return await _apiClient.call(request) as TableLinkCollectionResponse;
  }

  /// Inserts a new comment to the document.
  Future< CommentResponse > insertComment(InsertCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Inserts a new DrawingObject to the document node.
  Future< DrawingObjectResponse > insertDrawingObject(InsertDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Inserts a new field to the document node.
  Future< FieldResponse > insertField(InsertFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Inserts a new footnote to the document node.
  Future< FootnoteResponse > insertFootnote(InsertFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Inserts a new form field to the document node.
  Future< FormFieldResponse > insertFormField(InsertFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Inserts a new HeaderFooter object to the document section.
  Future< HeaderFooterResponse > insertHeaderFooter(InsertHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Inserts a new list to the document.
  Future< ListResponse > insertList(InsertListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Inserts a new or updates an existing paragraph tab stop in the document node.
  Future< TabStopsResponse > insertOrUpdateParagraphTabStop(InsertOrUpdateParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Inserts page numbers to the document.
  Future< DocumentResponse > insertPageNumbers(InsertPageNumbersRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new paragraph to the document node.
  Future< ParagraphResponse > insertParagraph(InsertParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Inserts a new Run object to the paragraph.
  Future< RunResponse > insertRun(InsertRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Inserts a new style to the document.
  Future< StyleResponse > insertStyle(InsertStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Inserts a new table to the document node.
  Future< TableResponse > insertTable(InsertTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Inserts a new cell to the table row.
  Future< TableCellResponse > insertTableCell(InsertTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Inserts a new row to the table.
  Future< TableRowResponse > insertTableRow(InsertTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Inserts a new watermark image to the document.
  Future< DocumentResponse > insertWatermarkImage(InsertWatermarkImageRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark text to the document.
  Future< DocumentResponse > insertWatermarkText(InsertWatermarkTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
  Future< SaveResponse > loadWebDocument(LoadWebDocumentRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Move file.
  Future< void > moveFile(MoveFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Move folder.
  Future< void > moveFolder(MoveFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Applies document content optimization options, specific to a particular versions of Microsoft Word.
  Future< void > optimizeDocument(OptimizeDocumentRequest request) async {
  await _apiClient.call(request);
  }

  /// Adds protection to the document.
  Future< ProtectionDataResponse > protectDocument(ProtectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Rejects all revisions in the document.
  Future< RevisionsModificationResponse > rejectAllRevisions(RejectAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Removes a range from the document.
  Future< DocumentResponse > removeRange(RemoveRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Renders a DrawingObject to the specified format.
  Future< ByteData > renderDrawingObject(RenderDrawingObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders an OfficeMath object to the specified format.
  Future< ByteData > renderMathObject(RenderMathObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a page to the specified format.
  Future< ByteData > renderPage(RenderPageRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a paragraph to the specified format.
  Future< ByteData > renderParagraph(RenderParagraphRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a table to the specified format.
  Future< ByteData > renderTable(RenderTableRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Replaces text in the document.
  Future< ReplaceTextResponse > replaceText(ReplaceTextRequest request) async {
    return await _apiClient.call(request) as ReplaceTextResponse;
  }

  /// Replaces a range with text in the document.
  Future< DocumentResponse > replaceWithText(ReplaceWithTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Clears the font cache.
  Future< void > resetCache(ResetCacheRequest request) async {
  await _apiClient.call(request);
  }

  /// Converts a document in cloud storage to the specified format.
  Future< SaveResponse > saveAs(SaveAsRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Saves a range as a new document.
  Future< DocumentResponse > saveAsRange(SaveAsRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Converts a document in cloud storage to TIFF format using detailed conversion settings.
  Future< SaveResponse > saveAsTiff(SaveAsTiffRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Searches text, specified by the regular expression, in the document.
  Future< SearchResponse > search(SearchRequest request) async {
    return await _apiClient.call(request) as SearchResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< SplitDocumentResponse > splitDocument(SplitDocumentRequest request) async {
    return await _apiClient.call(request) as SplitDocumentResponse;
  }

  /// Removes protection from the document.
  Future< ProtectionDataResponse > unprotectDocument(UnprotectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Updates a bookmark in the document.
  Future< BookmarkResponse > updateBookmark(UpdateBookmarkRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > updateBorder(UpdateBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Updates a comment in the document.
  Future< CommentResponse > updateComment(UpdateCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Updates a DrawingObject in the document node.
  Future< DrawingObjectResponse > updateDrawingObject(UpdateDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Updates a field in the document node.
  Future< FieldResponse > updateField(UpdateFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reevaluates field values in the document.
  Future< DocumentResponse > updateFields(UpdateFieldsRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Updates a footnote in the document node.
  Future< FootnoteResponse > updateFootnote(UpdateFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Updates a form field in the document node.
  Future< FormFieldResponse > updateFormField(UpdateFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Updates a list in the document.
  Future< ListResponse > updateList(UpdateListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the level of a List element in the document.
  Future< ListResponse > updateListLevel(UpdateListLevelRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the formatting properties of a paragraph in the document node.
  Future< ParagraphFormatResponse > updateParagraphFormat(UpdateParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Updates the formatting properties of a paragraph list in the document node.
  Future< ParagraphListFormatResponse > updateParagraphListFormat(UpdateParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Updates a Run object in the paragraph.
  Future< RunResponse > updateRun(UpdateRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Updates the font properties of a Run object in the paragraph.
  Future< FontResponse > updateRunFont(UpdateRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Updates the page setup of a section in the document.
  Future< SectionPageSetupResponse > updateSectionPageSetup(UpdateSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Updates a style in the document.
  Future< StyleResponse > updateStyle(UpdateStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Updates the formatting properties of a cell in the table row.
  Future< TableCellFormatResponse > updateTableCellFormat(UpdateTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Updates properties of a table in the document node.
  Future< TablePropertiesResponse > updateTableProperties(UpdateTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Updates the formatting properties of a table row.
  Future< TableRowFormatResponse > updateTableRowFormat(UpdateTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Upload file.
  Future< FilesUploadResult > uploadFile(UploadFileRequest request) async {
    return await _apiClient.call(request) as FilesUploadResult;
  }

  // Batch request
  Future< List<dynamic> > batch(final List<RequestBase> requests) async {
    return await _apiClient.callBatch(requests);
  }
}