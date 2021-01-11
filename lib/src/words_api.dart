/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="words_api.dart">
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

library aspose_words_cloud;

import 'dart:typed_data';

import '../aspose_words_cloud.dart';
import './api_client.dart';

/// Aspose.Words for Cloud API.
class WordsApi {
  final ApiClient _apiClient;
  WordsApi(final Configuration configuration) : _apiClient = ApiClient(configuration);

  /// Accepts all revisions in the document.
  Future< BodyResponseType(Specification, Operation) > acceptAllRevisions(AcceptAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Accepts all revisions in the document.
  Future< BodyResponseType(Specification, Operation) > acceptAllRevisionsOnline(AcceptAllRevisionsOnlineRequest request) async {
    return await _apiClient.call(request) as AcceptAllRevisionsOnlineResponse;
  }

  /// Appends documents to the original document.
  Future< BodyResponseType(Specification, Operation) > appendDocument(AppendDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Appends documents to the original document.
  Future< BodyResponseType(Specification, Operation) > appendDocumentOnline(AppendDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as AppendDocumentOnlineResponse;
  }

  /// Applies a style to the document node.
  Future< BodyResponseType(Specification, Operation) > applyStyleToDocumentElement(ApplyStyleToDocumentElementRequest request) async {
    return await _apiClient.call(request) as WordsResponse;
  }

  /// Applies a style to the document node.
  Future< BodyResponseType(Specification, Operation) > applyStyleToDocumentElementOnline(ApplyStyleToDocumentElementOnlineRequest request) async {
    return await _apiClient.call(request) as ApplyStyleToDocumentElementOnlineResponse;
  }

  /// Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
  Future< BodyResponseType(Specification, Operation) > buildReport(BuildReportRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
  Future< BodyResponseType(Specification, Operation) > buildReportOnline(BuildReportOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Runs a multi-class text classification for the specified raw text.
  Future< BodyResponseType(Specification, Operation) > classify(ClassifyRequest request) async {
    return await _apiClient.call(request) as ClassificationResponse;
  }

  /// Runs a multi-class text classification for the document.
  Future< BodyResponseType(Specification, Operation) > classifyDocument(ClassifyDocumentRequest request) async {
    return await _apiClient.call(request) as ClassificationResponse;
  }

  /// Runs a multi-class text classification for the document.
  Future< BodyResponseType(Specification, Operation) > classifyDocumentOnline(ClassifyDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as ClassificationResponse;
  }

  /// Compares two documents.
  Future< BodyResponseType(Specification, Operation) > compareDocument(CompareDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Compares two documents.
  Future< BodyResponseType(Specification, Operation) > compareDocumentOnline(CompareDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as CompareDocumentOnlineResponse;
  }

  /// Converts a document on a local drive to the specified format.
  Future< BodyResponseType(Specification, Operation) > convertDocument(ConvertDocumentRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Copy file.
  Future< BodyResponseType(Specification, Operation) > copyFile(CopyFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Copy folder.
  Future< BodyResponseType(Specification, Operation) > copyFolder(CopyFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Makes a copy of the style in the document.
  Future< BodyResponseType(Specification, Operation) > copyStyle(CopyStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Makes a copy of the style in the document.
  Future< BodyResponseType(Specification, Operation) > copyStyleOnline(CopyStyleOnlineRequest request) async {
    return await _apiClient.call(request) as CopyStyleOnlineResponse;
  }

  /// Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
  Future< BodyResponseType(Specification, Operation) > createDocument(CreateDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Create the folder.
  Future< BodyResponseType(Specification, Operation) > createFolder(CreateFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Adds a new or updates an existing document property.
  Future< BodyResponseType(Specification, Operation) > createOrUpdateDocumentProperty(CreateOrUpdateDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Adds a new or updates an existing document property.
  Future< BodyResponseType(Specification, Operation) > createOrUpdateDocumentPropertyOnline(CreateOrUpdateDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as CreateOrUpdateDocumentPropertyOnlineResponse;
  }

  /// Removes paragraph tab stops from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteAllParagraphTabStops(DeleteAllParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Removes paragraph tab stops from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteAllParagraphTabStopsOnline(DeleteAllParagraphTabStopsOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteAllParagraphTabStopsOnlineResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BodyResponseType(Specification, Operation) > deleteBorder(DeleteBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Removes a border from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteBorderOnline(DeleteBorderOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteBorderOnlineResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BodyResponseType(Specification, Operation) > deleteBorders(DeleteBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Removes borders from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteBordersOnline(DeleteBordersOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteBordersOnlineResponse;
  }

  /// Removes a comment from the document.
  Future< BodyResponseType(Specification, Operation) > deleteComment(DeleteCommentRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a comment from the document.
  Future< BodyResponseType(Specification, Operation) > deleteCommentOnline(DeleteCommentOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a document property.
  Future< BodyResponseType(Specification, Operation) > deleteDocumentProperty(DeleteDocumentPropertyRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a document property.
  Future< BodyResponseType(Specification, Operation) > deleteDocumentPropertyOnline(DeleteDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteDrawingObject(DeleteDrawingObjectRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteDrawingObjectOnline(DeleteDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a field from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteField(DeleteFieldRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a field from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFieldOnline(DeleteFieldOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes fields from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFields(DeleteFieldsRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes fields from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFieldsOnline(DeleteFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Delete file.
  Future< BodyResponseType(Specification, Operation) > deleteFile(DeleteFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Delete folder.
  Future< BodyResponseType(Specification, Operation) > deleteFolder(DeleteFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a footnote from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFootnote(DeleteFootnoteRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a footnote from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFootnoteOnline(DeleteFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a form field from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFormField(DeleteFormFieldRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a form field from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteFormFieldOnline(DeleteFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a HeaderFooter object from the document section.
  Future< BodyResponseType(Specification, Operation) > deleteHeaderFooter(DeleteHeaderFooterRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a HeaderFooter object from the document section.
  Future< BodyResponseType(Specification, Operation) > deleteHeaderFooterOnline(DeleteHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes HeaderFooter objects from the document section.
  Future< BodyResponseType(Specification, Operation) > deleteHeadersFooters(DeleteHeadersFootersRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes HeaderFooter objects from the document section.
  Future< BodyResponseType(Specification, Operation) > deleteHeadersFootersOnline(DeleteHeadersFootersOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes macros from the document.
  Future< BodyResponseType(Specification, Operation) > deleteMacros(DeleteMacrosRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes macros from the document.
  Future< BodyResponseType(Specification, Operation) > deleteMacrosOnline(DeleteMacrosOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes an OfficeMath object from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteOfficeMathObject(DeleteOfficeMathObjectRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes an OfficeMath object from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteOfficeMathObjectOnline(DeleteOfficeMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraph(DeleteParagraphRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes the formatting properties of a paragraph list from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraphListFormat(DeleteParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Removes the formatting properties of a paragraph list from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraphListFormatOnline(DeleteParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteParagraphListFormatOnlineResponse;
  }

  /// Removes a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraphOnline(DeleteParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a paragraph tab stop from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraphTabStop(DeleteParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Removes a paragraph tab stop from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteParagraphTabStopOnline(DeleteParagraphTabStopOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteParagraphTabStopOnlineResponse;
  }

  /// Removes a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > deleteRun(DeleteRunRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > deleteRunOnline(DeleteRunOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a section from the document.
  Future< BodyResponseType(Specification, Operation) > deleteSection(DeleteSectionRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a section from the document.
  Future< BodyResponseType(Specification, Operation) > deleteSectionOnline(DeleteSectionOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a table from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteTable(DeleteTableRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a cell from the table row.
  Future< BodyResponseType(Specification, Operation) > deleteTableCell(DeleteTableCellRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a cell from the table row.
  Future< BodyResponseType(Specification, Operation) > deleteTableCellOnline(DeleteTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a table from the document node.
  Future< BodyResponseType(Specification, Operation) > deleteTableOnline(DeleteTableOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a row from the table.
  Future< BodyResponseType(Specification, Operation) > deleteTableRow(DeleteTableRowRequest request) async {
  await _apiClient.call(request);
  }

  /// Removes a row from the table.
  Future< BodyResponseType(Specification, Operation) > deleteTableRowOnline(DeleteTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Removes a watermark from the document.
  Future< BodyResponseType(Specification, Operation) > deleteWatermark(DeleteWatermarkRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Removes a watermark from the document.
  Future< BodyResponseType(Specification, Operation) > deleteWatermarkOnline(DeleteWatermarkOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteWatermarkOnlineResponse;
  }

  /// Download file.
  Future< BodyResponseType(Specification, Operation) > downloadFile(DownloadFileRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Executes a Mail Merge operation.
  Future< BodyResponseType(Specification, Operation) > executeMailMerge(ExecuteMailMergeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes a Mail Merge operation online.
  Future< BodyResponseType(Specification, Operation) > executeMailMergeOnline(ExecuteMailMergeOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads available fonts from the document.
  Future< BodyResponseType(Specification, Operation) > getAvailableFonts(GetAvailableFontsRequest request) async {
    return await _apiClient.call(request) as AvailableFontsResponse;
  }

  /// Reads a bookmark, specified by name, from the document.
  Future< BodyResponseType(Specification, Operation) > getBookmarkByName(GetBookmarkByNameRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Reads a bookmark, specified by name, from the document.
  Future< BodyResponseType(Specification, Operation) > getBookmarkByNameOnline(GetBookmarkByNameOnlineRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Reads bookmarks from the document.
  Future< BodyResponseType(Specification, Operation) > getBookmarks(GetBookmarksRequest request) async {
    return await _apiClient.call(request) as BookmarksResponse;
  }

  /// Reads bookmarks from the document.
  Future< BodyResponseType(Specification, Operation) > getBookmarksOnline(GetBookmarksOnlineRequest request) async {
    return await _apiClient.call(request) as BookmarksResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BodyResponseType(Specification, Operation) > getBorder(GetBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Reads a border from the document node.
  Future< BodyResponseType(Specification, Operation) > getBorderOnline(GetBorderOnlineRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Reads borders from the document node.
  Future< BodyResponseType(Specification, Operation) > getBorders(GetBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Reads borders from the document node.
  Future< BodyResponseType(Specification, Operation) > getBordersOnline(GetBordersOnlineRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Reads a comment from the document.
  Future< BodyResponseType(Specification, Operation) > getComment(GetCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Reads a comment from the document.
  Future< BodyResponseType(Specification, Operation) > getCommentOnline(GetCommentOnlineRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Reads comments from the document.
  Future< BodyResponseType(Specification, Operation) > getComments(GetCommentsRequest request) async {
    return await _apiClient.call(request) as CommentsResponse;
  }

  /// Reads comments from the document.
  Future< BodyResponseType(Specification, Operation) > getCommentsOnline(GetCommentsOnlineRequest request) async {
    return await _apiClient.call(request) as CommentsResponse;
  }

  /// Reads common information from the document.
  Future< BodyResponseType(Specification, Operation) > getDocument(GetDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Reads a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectByIndex(GetDocumentDrawingObjectByIndexRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Reads a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectByIndexOnline(GetDocumentDrawingObjectByIndexOnlineRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Reads image data of a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectImageData(GetDocumentDrawingObjectImageDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads image data of a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectImageDataOnline(GetDocumentDrawingObjectImageDataOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads OLE data of a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectOleData(GetDocumentDrawingObjectOleDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads OLE data of a DrawingObject from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectOleDataOnline(GetDocumentDrawingObjectOleDataOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads DrawingObjects from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjects(GetDocumentDrawingObjectsRequest request) async {
    return await _apiClient.call(request) as DrawingObjectsResponse;
  }

  /// Reads DrawingObjects from the document node.
  Future< BodyResponseType(Specification, Operation) > getDocumentDrawingObjectsOnline(GetDocumentDrawingObjectsOnlineRequest request) async {
    return await _apiClient.call(request) as DrawingObjectsResponse;
  }

  /// Reads merge field names from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentFieldNames(GetDocumentFieldNamesRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads merge field names from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentFieldNamesOnline(GetDocumentFieldNamesOnlineRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads a hyperlink from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentHyperlinkByIndex(GetDocumentHyperlinkByIndexRequest request) async {
    return await _apiClient.call(request) as HyperlinkResponse;
  }

  /// Reads a hyperlink from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentHyperlinkByIndexOnline(GetDocumentHyperlinkByIndexOnlineRequest request) async {
    return await _apiClient.call(request) as HyperlinkResponse;
  }

  /// Reads hyperlinks from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentHyperlinks(GetDocumentHyperlinksRequest request) async {
    return await _apiClient.call(request) as HyperlinksResponse;
  }

  /// Reads hyperlinks from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentHyperlinksOnline(GetDocumentHyperlinksOnlineRequest request) async {
    return await _apiClient.call(request) as HyperlinksResponse;
  }

  /// Reads document properties.
  Future< BodyResponseType(Specification, Operation) > getDocumentProperties(GetDocumentPropertiesRequest request) async {
    return await _apiClient.call(request) as DocumentPropertiesResponse;
  }

  /// Reads document properties.
  Future< BodyResponseType(Specification, Operation) > getDocumentPropertiesOnline(GetDocumentPropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as DocumentPropertiesResponse;
  }

  /// Reads a document property.
  Future< BodyResponseType(Specification, Operation) > getDocumentProperty(GetDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Reads a document property.
  Future< BodyResponseType(Specification, Operation) > getDocumentPropertyOnline(GetDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Reads protection properties from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentProtection(GetDocumentProtectionRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Reads protection properties from the document.
  Future< BodyResponseType(Specification, Operation) > getDocumentProtectionOnline(GetDocumentProtectionOnlineRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Reads document statistics.
  Future< BodyResponseType(Specification, Operation) > getDocumentStatistics(GetDocumentStatisticsRequest request) async {
    return await _apiClient.call(request) as StatDataResponse;
  }

  /// Reads document statistics.
  Future< BodyResponseType(Specification, Operation) > getDocumentStatisticsOnline(GetDocumentStatisticsOnlineRequest request) async {
    return await _apiClient.call(request) as StatDataResponse;
  }

  /// Converts a document in cloud storage to the specified format.
  Future< BodyResponseType(Specification, Operation) > getDocumentWithFormat(GetDocumentWithFormatRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads a field from the document node.
  Future< BodyResponseType(Specification, Operation) > getField(GetFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reads a field from the document node.
  Future< BodyResponseType(Specification, Operation) > getFieldOnline(GetFieldOnlineRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reads fields from the document node.
  Future< BodyResponseType(Specification, Operation) > getFields(GetFieldsRequest request) async {
    return await _apiClient.call(request) as FieldsResponse;
  }

  /// Reads fields from the document node.
  Future< BodyResponseType(Specification, Operation) > getFieldsOnline(GetFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as FieldsResponse;
  }

  /// Get all files and folders within a folder.
  Future< BodyResponseType(Specification, Operation) > getFilesList(GetFilesListRequest request) async {
    return await _apiClient.call(request) as FilesList;
  }

  /// Reads a footnote from the document node.
  Future< BodyResponseType(Specification, Operation) > getFootnote(GetFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Reads a footnote from the document node.
  Future< BodyResponseType(Specification, Operation) > getFootnoteOnline(GetFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Reads footnotes from the document node.
  Future< BodyResponseType(Specification, Operation) > getFootnotes(GetFootnotesRequest request) async {
    return await _apiClient.call(request) as FootnotesResponse;
  }

  /// Reads footnotes from the document node.
  Future< BodyResponseType(Specification, Operation) > getFootnotesOnline(GetFootnotesOnlineRequest request) async {
    return await _apiClient.call(request) as FootnotesResponse;
  }

  /// Reads a form field from the document node.
  Future< BodyResponseType(Specification, Operation) > getFormField(GetFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Reads a form field from the document node.
  Future< BodyResponseType(Specification, Operation) > getFormFieldOnline(GetFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Reads form fields from the document node.
  Future< BodyResponseType(Specification, Operation) > getFormFields(GetFormFieldsRequest request) async {
    return await _apiClient.call(request) as FormFieldsResponse;
  }

  /// Reads form fields from the document node.
  Future< BodyResponseType(Specification, Operation) > getFormFieldsOnline(GetFormFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as FormFieldsResponse;
  }

  /// Reads a HeaderFooter object from the document.
  Future< BodyResponseType(Specification, Operation) > getHeaderFooter(GetHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document section.
  Future< BodyResponseType(Specification, Operation) > getHeaderFooterOfSection(GetHeaderFooterOfSectionRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document section.
  Future< BodyResponseType(Specification, Operation) > getHeaderFooterOfSectionOnline(GetHeaderFooterOfSectionOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document.
  Future< BodyResponseType(Specification, Operation) > getHeaderFooterOnline(GetHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads HeaderFooter objects from the document section.
  Future< BodyResponseType(Specification, Operation) > getHeaderFooters(GetHeaderFootersRequest request) async {
    return await _apiClient.call(request) as HeaderFootersResponse;
  }

  /// Reads HeaderFooter objects from the document section.
  Future< BodyResponseType(Specification, Operation) > getHeaderFootersOnline(GetHeaderFootersOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFootersResponse;
  }

  /// Reads a list from the document.
  Future< BodyResponseType(Specification, Operation) > getList(GetListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Reads a list from the document.
  Future< BodyResponseType(Specification, Operation) > getListOnline(GetListOnlineRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Reads lists from the document.
  Future< BodyResponseType(Specification, Operation) > getLists(GetListsRequest request) async {
    return await _apiClient.call(request) as ListsResponse;
  }

  /// Reads lists from the document.
  Future< BodyResponseType(Specification, Operation) > getListsOnline(GetListsOnlineRequest request) async {
    return await _apiClient.call(request) as ListsResponse;
  }

  /// Reads an OfficeMath object from the document node.
  Future< BodyResponseType(Specification, Operation) > getOfficeMathObject(GetOfficeMathObjectRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectResponse;
  }

  /// Reads an OfficeMath object from the document node.
  Future< BodyResponseType(Specification, Operation) > getOfficeMathObjectOnline(GetOfficeMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectResponse;
  }

  /// Reads OfficeMath objects from the document node.
  Future< BodyResponseType(Specification, Operation) > getOfficeMathObjects(GetOfficeMathObjectsRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectsResponse;
  }

  /// Reads OfficeMath objects from the document node.
  Future< BodyResponseType(Specification, Operation) > getOfficeMathObjectsOnline(GetOfficeMathObjectsOnlineRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectsResponse;
  }

  /// Reads a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraph(GetParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Reads the formatting properties of a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphFormat(GetParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Reads the formatting properties of a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphFormatOnline(GetParagraphFormatOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Reads the formatting properties of a paragraph list from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphListFormat(GetParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Reads the formatting properties of a paragraph list from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphListFormatOnline(GetParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Reads a paragraph from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphOnline(GetParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Reads paragraphs from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphs(GetParagraphsRequest request) async {
    return await _apiClient.call(request) as ParagraphLinkCollectionResponse;
  }

  /// Reads paragraphs from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphsOnline(GetParagraphsOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphLinkCollectionResponse;
  }

  /// Reads paragraph tab stops from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphTabStops(GetParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Reads paragraph tab stops from the document node.
  Future< BodyResponseType(Specification, Operation) > getParagraphTabStopsOnline(GetParagraphTabStopsOnlineRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Reads range text from the document.
  Future< BodyResponseType(Specification, Operation) > getRangeText(GetRangeTextRequest request) async {
    return await _apiClient.call(request) as RangeTextResponse;
  }

  /// Reads range text from the document.
  Future< BodyResponseType(Specification, Operation) > getRangeTextOnline(GetRangeTextOnlineRequest request) async {
    return await _apiClient.call(request) as RangeTextResponse;
  }

  /// Reads a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRun(GetRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Reads the font properties of a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRunFont(GetRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Reads the font properties of a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRunFontOnline(GetRunFontOnlineRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Reads a Run object from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRunOnline(GetRunOnlineRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Reads Run objects from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRuns(GetRunsRequest request) async {
    return await _apiClient.call(request) as RunsResponse;
  }

  /// Reads Run objects from the paragraph.
  Future< BodyResponseType(Specification, Operation) > getRunsOnline(GetRunsOnlineRequest request) async {
    return await _apiClient.call(request) as RunsResponse;
  }

  /// Reads a section from the document.
  Future< BodyResponseType(Specification, Operation) > getSection(GetSectionRequest request) async {
    return await _apiClient.call(request) as SectionResponse;
  }

  /// Reads a section from the document.
  Future< BodyResponseType(Specification, Operation) > getSectionOnline(GetSectionOnlineRequest request) async {
    return await _apiClient.call(request) as SectionResponse;
  }

  /// Reads the page setup of a section from the document.
  Future< BodyResponseType(Specification, Operation) > getSectionPageSetup(GetSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Reads the page setup of a section from the document.
  Future< BodyResponseType(Specification, Operation) > getSectionPageSetupOnline(GetSectionPageSetupOnlineRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Reads sections from the document.
  Future< BodyResponseType(Specification, Operation) > getSections(GetSectionsRequest request) async {
    return await _apiClient.call(request) as SectionLinkCollectionResponse;
  }

  /// Reads sections from the document.
  Future< BodyResponseType(Specification, Operation) > getSectionsOnline(GetSectionsOnlineRequest request) async {
    return await _apiClient.call(request) as SectionLinkCollectionResponse;
  }

  /// Reads a style from the document.
  Future< BodyResponseType(Specification, Operation) > getStyle(GetStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document node.
  Future< BodyResponseType(Specification, Operation) > getStyleFromDocumentElement(GetStyleFromDocumentElementRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document node.
  Future< BodyResponseType(Specification, Operation) > getStyleFromDocumentElementOnline(GetStyleFromDocumentElementOnlineRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document.
  Future< BodyResponseType(Specification, Operation) > getStyleOnline(GetStyleOnlineRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads styles from the document.
  Future< BodyResponseType(Specification, Operation) > getStyles(GetStylesRequest request) async {
    return await _apiClient.call(request) as StylesResponse;
  }

  /// Reads styles from the document.
  Future< BodyResponseType(Specification, Operation) > getStylesOnline(GetStylesOnlineRequest request) async {
    return await _apiClient.call(request) as StylesResponse;
  }

  /// Reads a table from the document node.
  Future< BodyResponseType(Specification, Operation) > getTable(GetTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Reads a cell from the table row.
  Future< BodyResponseType(Specification, Operation) > getTableCell(GetTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Reads the formatting properties of a table cell.
  Future< BodyResponseType(Specification, Operation) > getTableCellFormat(GetTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Reads the formatting properties of a table cell.
  Future< BodyResponseType(Specification, Operation) > getTableCellFormatOnline(GetTableCellFormatOnlineRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Reads a cell from the table row.
  Future< BodyResponseType(Specification, Operation) > getTableCellOnline(GetTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Reads a table from the document node.
  Future< BodyResponseType(Specification, Operation) > getTableOnline(GetTableOnlineRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Reads properties of a table from the document node.
  Future< BodyResponseType(Specification, Operation) > getTableProperties(GetTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Reads properties of a table from the document node.
  Future< BodyResponseType(Specification, Operation) > getTablePropertiesOnline(GetTablePropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Reads a row from the table.
  Future< BodyResponseType(Specification, Operation) > getTableRow(GetTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Reads the formatting properties of a table row.
  Future< BodyResponseType(Specification, Operation) > getTableRowFormat(GetTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Reads the formatting properties of a table row.
  Future< BodyResponseType(Specification, Operation) > getTableRowFormatOnline(GetTableRowFormatOnlineRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Reads a row from the table.
  Future< BodyResponseType(Specification, Operation) > getTableRowOnline(GetTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Reads tables from the document node.
  Future< BodyResponseType(Specification, Operation) > getTables(GetTablesRequest request) async {
    return await _apiClient.call(request) as TableLinkCollectionResponse;
  }

  /// Reads tables from the document node.
  Future< BodyResponseType(Specification, Operation) > getTablesOnline(GetTablesOnlineRequest request) async {
    return await _apiClient.call(request) as TableLinkCollectionResponse;
  }

  /// Inserts a new comment to the document.
  Future< BodyResponseType(Specification, Operation) > insertComment(InsertCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Inserts a new comment to the document.
  Future< BodyResponseType(Specification, Operation) > insertCommentOnline(InsertCommentOnlineRequest request) async {
    return await _apiClient.call(request) as InsertCommentOnlineResponse;
  }

  /// Inserts a new DrawingObject to the document node.
  Future< BodyResponseType(Specification, Operation) > insertDrawingObject(InsertDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Inserts a new DrawingObject to the document node.
  Future< BodyResponseType(Specification, Operation) > insertDrawingObjectOnline(InsertDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as InsertDrawingObjectOnlineResponse;
  }

  /// Inserts a new field to the document node.
  Future< BodyResponseType(Specification, Operation) > insertField(InsertFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Inserts a new field to the document node.
  Future< BodyResponseType(Specification, Operation) > insertFieldOnline(InsertFieldOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFieldOnlineResponse;
  }

  /// Inserts a new footnote to the document node.
  Future< BodyResponseType(Specification, Operation) > insertFootnote(InsertFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Inserts a new footnote to the document node.
  Future< BodyResponseType(Specification, Operation) > insertFootnoteOnline(InsertFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFootnoteOnlineResponse;
  }

  /// Inserts a new form field to the document node.
  Future< BodyResponseType(Specification, Operation) > insertFormField(InsertFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Inserts a new form field to the document node.
  Future< BodyResponseType(Specification, Operation) > insertFormFieldOnline(InsertFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFormFieldOnlineResponse;
  }

  /// Inserts a new HeaderFooter object to the document section.
  Future< BodyResponseType(Specification, Operation) > insertHeaderFooter(InsertHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Inserts a new HeaderFooter object to the document section.
  Future< BodyResponseType(Specification, Operation) > insertHeaderFooterOnline(InsertHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as InsertHeaderFooterOnlineResponse;
  }

  /// Inserts a new list to the document.
  Future< BodyResponseType(Specification, Operation) > insertList(InsertListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Inserts a new list to the document.
  Future< BodyResponseType(Specification, Operation) > insertListOnline(InsertListOnlineRequest request) async {
    return await _apiClient.call(request) as InsertListOnlineResponse;
  }

  /// Inserts a new or updates an existing paragraph tab stop in the document node.
  Future< BodyResponseType(Specification, Operation) > insertOrUpdateParagraphTabStop(InsertOrUpdateParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Inserts a new or updates an existing paragraph tab stop in the document node.
  Future< BodyResponseType(Specification, Operation) > insertOrUpdateParagraphTabStopOnline(InsertOrUpdateParagraphTabStopOnlineRequest request) async {
    return await _apiClient.call(request) as InsertOrUpdateParagraphTabStopOnlineResponse;
  }

  /// Inserts page numbers to the document.
  Future< BodyResponseType(Specification, Operation) > insertPageNumbers(InsertPageNumbersRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts page numbers to the document.
  Future< BodyResponseType(Specification, Operation) > insertPageNumbersOnline(InsertPageNumbersOnlineRequest request) async {
    return await _apiClient.call(request) as InsertPageNumbersOnlineResponse;
  }

  /// Inserts a new paragraph to the document node.
  Future< BodyResponseType(Specification, Operation) > insertParagraph(InsertParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Inserts a new paragraph to the document node.
  Future< BodyResponseType(Specification, Operation) > insertParagraphOnline(InsertParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as InsertParagraphOnlineResponse;
  }

  /// Inserts a new Run object to the paragraph.
  Future< BodyResponseType(Specification, Operation) > insertRun(InsertRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Inserts a new Run object to the paragraph.
  Future< BodyResponseType(Specification, Operation) > insertRunOnline(InsertRunOnlineRequest request) async {
    return await _apiClient.call(request) as InsertRunOnlineResponse;
  }

  /// Inserts a new style to the document.
  Future< BodyResponseType(Specification, Operation) > insertStyle(InsertStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Inserts a new style to the document.
  Future< BodyResponseType(Specification, Operation) > insertStyleOnline(InsertStyleOnlineRequest request) async {
    return await _apiClient.call(request) as InsertStyleOnlineResponse;
  }

  /// Inserts a new table to the document node.
  Future< BodyResponseType(Specification, Operation) > insertTable(InsertTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Inserts a new cell to the table row.
  Future< BodyResponseType(Specification, Operation) > insertTableCell(InsertTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Inserts a new cell to the table row.
  Future< BodyResponseType(Specification, Operation) > insertTableCellOnline(InsertTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableCellOnlineResponse;
  }

  /// Inserts a new table to the document node.
  Future< BodyResponseType(Specification, Operation) > insertTableOnline(InsertTableOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableOnlineResponse;
  }

  /// Inserts a new row to the table.
  Future< BodyResponseType(Specification, Operation) > insertTableRow(InsertTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Inserts a new row to the table.
  Future< BodyResponseType(Specification, Operation) > insertTableRowOnline(InsertTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableRowOnlineResponse;
  }

  /// Inserts a new watermark image to the document.
  Future< BodyResponseType(Specification, Operation) > insertWatermarkImage(InsertWatermarkImageRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark image to the document.
  Future< BodyResponseType(Specification, Operation) > insertWatermarkImageOnline(InsertWatermarkImageOnlineRequest request) async {
    return await _apiClient.call(request) as InsertWatermarkImageOnlineResponse;
  }

  /// Inserts a new watermark text to the document.
  Future< BodyResponseType(Specification, Operation) > insertWatermarkText(InsertWatermarkTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark text to the document.
  Future< BodyResponseType(Specification, Operation) > insertWatermarkTextOnline(InsertWatermarkTextOnlineRequest request) async {
    return await _apiClient.call(request) as InsertWatermarkTextOnlineResponse;
  }

  /// Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
  Future< BodyResponseType(Specification, Operation) > loadWebDocument(LoadWebDocumentRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Move file.
  Future< BodyResponseType(Specification, Operation) > moveFile(MoveFileRequest request) async {
  await _apiClient.call(request);
  }

  /// Move folder.
  Future< BodyResponseType(Specification, Operation) > moveFolder(MoveFolderRequest request) async {
  await _apiClient.call(request);
  }

  /// Applies document content optimization options, specific to a particular versions of Microsoft Word.
  Future< BodyResponseType(Specification, Operation) > optimizeDocument(OptimizeDocumentRequest request) async {
  await _apiClient.call(request);
  }

  /// Applies document content optimization options, specific to a particular versions of Microsoft Word.
  Future< BodyResponseType(Specification, Operation) > optimizeDocumentOnline(OptimizeDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Adds protection to the document.
  Future< BodyResponseType(Specification, Operation) > protectDocument(ProtectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Adds protection to the document.
  Future< BodyResponseType(Specification, Operation) > protectDocumentOnline(ProtectDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as ProtectDocumentOnlineResponse;
  }

  /// Rejects all revisions in the document.
  Future< BodyResponseType(Specification, Operation) > rejectAllRevisions(RejectAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Rejects all revisions in the document.
  Future< BodyResponseType(Specification, Operation) > rejectAllRevisionsOnline(RejectAllRevisionsOnlineRequest request) async {
    return await _apiClient.call(request) as RejectAllRevisionsOnlineResponse;
  }

  /// Removes a range from the document.
  Future< BodyResponseType(Specification, Operation) > removeRange(RemoveRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Removes a range from the document.
  Future< BodyResponseType(Specification, Operation) > removeRangeOnline(RemoveRangeOnlineRequest request) async {
    return await _apiClient.call(request) as RemoveRangeOnlineResponse;
  }

  /// Renders a DrawingObject to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderDrawingObject(RenderDrawingObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a DrawingObject to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderDrawingObjectOnline(RenderDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as RenderDrawingObjectOnlineResponse;
  }

  /// Renders an OfficeMath object to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderMathObject(RenderMathObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders an OfficeMath object to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderMathObjectOnline(RenderMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as RenderMathObjectOnlineResponse;
  }

  /// Renders a page to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderPage(RenderPageRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a page to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderPageOnline(RenderPageOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a paragraph to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderParagraph(RenderParagraphRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a paragraph to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderParagraphOnline(RenderParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as RenderParagraphOnlineResponse;
  }

  /// Renders a table to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderTable(RenderTableRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a table to the specified format.
  Future< BodyResponseType(Specification, Operation) > renderTableOnline(RenderTableOnlineRequest request) async {
    return await _apiClient.call(request) as RenderTableOnlineResponse;
  }

  /// Replaces text in the document.
  Future< BodyResponseType(Specification, Operation) > replaceText(ReplaceTextRequest request) async {
    return await _apiClient.call(request) as ReplaceTextResponse;
  }

  /// Replaces text in the document.
  Future< BodyResponseType(Specification, Operation) > replaceTextOnline(ReplaceTextOnlineRequest request) async {
    return await _apiClient.call(request) as ReplaceTextOnlineResponse;
  }

  /// Replaces a range with text in the document.
  Future< BodyResponseType(Specification, Operation) > replaceWithText(ReplaceWithTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Replaces a range with text in the document.
  Future< BodyResponseType(Specification, Operation) > replaceWithTextOnline(ReplaceWithTextOnlineRequest request) async {
    return await _apiClient.call(request) as ReplaceWithTextOnlineResponse;
  }

  /// Clears the font cache.
  Future< BodyResponseType(Specification, Operation) > resetCache(ResetCacheRequest request) async {
  await _apiClient.call(request);
  }

  /// Converts a document in cloud storage to the specified format.
  Future< BodyResponseType(Specification, Operation) > saveAs(SaveAsRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Converts a document in cloud storage to the specified format.
  Future< BodyResponseType(Specification, Operation) > saveAsOnline(SaveAsOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsOnlineResponse;
  }

  /// Saves a range as a new document.
  Future< BodyResponseType(Specification, Operation) > saveAsRange(SaveAsRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Saves a range as a new document.
  Future< BodyResponseType(Specification, Operation) > saveAsRangeOnline(SaveAsRangeOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsRangeOnlineResponse;
  }

  /// Converts a document in cloud storage to TIFF format using detailed conversion settings.
  Future< BodyResponseType(Specification, Operation) > saveAsTiff(SaveAsTiffRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Converts a document in cloud storage to TIFF format using detailed conversion settings.
  Future< BodyResponseType(Specification, Operation) > saveAsTiffOnline(SaveAsTiffOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsTiffOnlineResponse;
  }

  /// Searches text, specified by the regular expression, in the document.
  Future< BodyResponseType(Specification, Operation) > search(SearchRequest request) async {
    return await _apiClient.call(request) as SearchResponse;
  }

  /// Searches text, specified by the regular expression, in the document.
  Future< BodyResponseType(Specification, Operation) > searchOnline(SearchOnlineRequest request) async {
    return await _apiClient.call(request) as SearchResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< BodyResponseType(Specification, Operation) > splitDocument(SplitDocumentRequest request) async {
    return await _apiClient.call(request) as SplitDocumentResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< BodyResponseType(Specification, Operation) > splitDocumentOnline(SplitDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as SplitDocumentOnlineResponse;
  }

  /// Removes protection from the document.
  Future< BodyResponseType(Specification, Operation) > unprotectDocument(UnprotectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Removes protection from the document.
  Future< BodyResponseType(Specification, Operation) > unprotectDocumentOnline(UnprotectDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as UnprotectDocumentOnlineResponse;
  }

  /// Updates a bookmark in the document.
  Future< BodyResponseType(Specification, Operation) > updateBookmark(UpdateBookmarkRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Updates a bookmark in the document.
  Future< BodyResponseType(Specification, Operation) > updateBookmarkOnline(UpdateBookmarkOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateBookmarkOnlineResponse;
  }

  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BodyResponseType(Specification, Operation) > updateBorder(UpdateBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Updates a border in the document node.
  Future< BodyResponseType(Specification, Operation) > updateBorderOnline(UpdateBorderOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateBorderOnlineResponse;
  }

  /// Updates a comment in the document.
  Future< BodyResponseType(Specification, Operation) > updateComment(UpdateCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Updates a comment in the document.
  Future< BodyResponseType(Specification, Operation) > updateCommentOnline(UpdateCommentOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateCommentOnlineResponse;
  }

  /// Updates a DrawingObject in the document node.
  Future< BodyResponseType(Specification, Operation) > updateDrawingObject(UpdateDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Updates a DrawingObject in the document node.
  Future< BodyResponseType(Specification, Operation) > updateDrawingObjectOnline(UpdateDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateDrawingObjectOnlineResponse;
  }

  /// Updates a field in the document node.
  Future< BodyResponseType(Specification, Operation) > updateField(UpdateFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Updates a field in the document node.
  Future< BodyResponseType(Specification, Operation) > updateFieldOnline(UpdateFieldOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFieldOnlineResponse;
  }

  /// Reevaluates field values in the document.
  Future< BodyResponseType(Specification, Operation) > updateFields(UpdateFieldsRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Reevaluates field values in the document.
  Future< BodyResponseType(Specification, Operation) > updateFieldsOnline(UpdateFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFieldsOnlineResponse;
  }

  /// Updates a footnote in the document node.
  Future< BodyResponseType(Specification, Operation) > updateFootnote(UpdateFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Updates a footnote in the document node.
  Future< BodyResponseType(Specification, Operation) > updateFootnoteOnline(UpdateFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFootnoteOnlineResponse;
  }

  /// Updates a form field in the document node.
  Future< BodyResponseType(Specification, Operation) > updateFormField(UpdateFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Updates a form field in the document node.
  Future< BodyResponseType(Specification, Operation) > updateFormFieldOnline(UpdateFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFormFieldOnlineResponse;
  }

  /// Updates a list in the document.
  Future< BodyResponseType(Specification, Operation) > updateList(UpdateListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the level of a List element in the document.
  Future< BodyResponseType(Specification, Operation) > updateListLevel(UpdateListLevelRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the level of a List element in the document.
  Future< BodyResponseType(Specification, Operation) > updateListLevelOnline(UpdateListLevelOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateListLevelOnlineResponse;
  }

  /// Updates a list in the document.
  Future< BodyResponseType(Specification, Operation) > updateListOnline(UpdateListOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateListOnlineResponse;
  }

  /// Updates the formatting properties of a paragraph in the document node.
  Future< BodyResponseType(Specification, Operation) > updateParagraphFormat(UpdateParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Updates the formatting properties of a paragraph in the document node.
  Future< BodyResponseType(Specification, Operation) > updateParagraphFormatOnline(UpdateParagraphFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateParagraphFormatOnlineResponse;
  }

  /// Updates the formatting properties of a paragraph list in the document node.
  Future< BodyResponseType(Specification, Operation) > updateParagraphListFormat(UpdateParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Updates the formatting properties of a paragraph list in the document node.
  Future< BodyResponseType(Specification, Operation) > updateParagraphListFormatOnline(UpdateParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateParagraphListFormatOnlineResponse;
  }

  /// Updates a Run object in the paragraph.
  Future< BodyResponseType(Specification, Operation) > updateRun(UpdateRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Updates the font properties of a Run object in the paragraph.
  Future< BodyResponseType(Specification, Operation) > updateRunFont(UpdateRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Updates the font properties of a Run object in the paragraph.
  Future< BodyResponseType(Specification, Operation) > updateRunFontOnline(UpdateRunFontOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateRunFontOnlineResponse;
  }

  /// Updates a Run object in the paragraph.
  Future< BodyResponseType(Specification, Operation) > updateRunOnline(UpdateRunOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateRunOnlineResponse;
  }

  /// Updates the page setup of a section in the document.
  Future< BodyResponseType(Specification, Operation) > updateSectionPageSetup(UpdateSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Updates the page setup of a section in the document.
  Future< BodyResponseType(Specification, Operation) > updateSectionPageSetupOnline(UpdateSectionPageSetupOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateSectionPageSetupOnlineResponse;
  }

  /// Updates a style in the document.
  Future< BodyResponseType(Specification, Operation) > updateStyle(UpdateStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Updates a style in the document.
  Future< BodyResponseType(Specification, Operation) > updateStyleOnline(UpdateStyleOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateStyleOnlineResponse;
  }

  /// Updates the formatting properties of a cell in the table row.
  Future< BodyResponseType(Specification, Operation) > updateTableCellFormat(UpdateTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Updates the formatting properties of a cell in the table row.
  Future< BodyResponseType(Specification, Operation) > updateTableCellFormatOnline(UpdateTableCellFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTableCellFormatOnlineResponse;
  }

  /// Updates properties of a table in the document node.
  Future< BodyResponseType(Specification, Operation) > updateTableProperties(UpdateTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Updates properties of a table in the document node.
  Future< BodyResponseType(Specification, Operation) > updateTablePropertiesOnline(UpdateTablePropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTablePropertiesOnlineResponse;
  }

  /// Updates the formatting properties of a table row.
  Future< BodyResponseType(Specification, Operation) > updateTableRowFormat(UpdateTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Updates the formatting properties of a table row.
  Future< BodyResponseType(Specification, Operation) > updateTableRowFormatOnline(UpdateTableRowFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTableRowFormatOnlineResponse;
  }

  /// Upload file.
  Future< BodyResponseType(Specification, Operation) > uploadFile(UploadFileRequest request) async {
    return await _apiClient.call(request) as FilesUploadResult;
  }

  // Batch request
  Future< List<dynamic> > batch(final List<RequestBase> requests) async {
    return await _apiClient.callBatch(requests);
  }
}