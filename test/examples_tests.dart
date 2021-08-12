import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

class ExamplesTests
{
    final Configuration config;

    ExamplesTests(final this.config);

    Future<void> init() async
    {
        Directory.current = Directory.current.path + '/examples_data';
    }

    Future<void> acceptAllRevisions() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final acceptRequest = AcceptAllRevisionsRequest(remoteFileName, destFileName: remoteFileName);
        await wordsApi.acceptAllRevisions(acceptRequest);
    }

    Future<void> acceptAllRevisionsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final acceptRequest = AcceptAllRevisionsOnlineRequest(requestDocumentData);
        await wordsApi.acceptAllRevisionsOnline(acceptRequest);
    }

    Future<void> appendDocument() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestDocumentListDocumentEntries0 = DocumentEntry();
        requestDocumentListDocumentEntries0.href = remoteFileName;
        requestDocumentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';
        final requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0];
        final requestDocumentList = DocumentEntryList();
        requestDocumentList.documentEntries = requestDocumentListDocumentEntries;
        final appendRequest = AppendDocumentRequest(remoteFileName, requestDocumentList, destFileName: remoteFileName);
        await wordsApi.appendDocument(appendRequest);
    }

    Future<void> appendDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestDocumentListDocumentEntries0 = DocumentEntry();
        requestDocumentListDocumentEntries0.href = 'Sample.docx';
        requestDocumentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';
        final requestDocumentListDocumentEntries = [
          requestDocumentListDocumentEntries0];
        final requestDocumentList = DocumentEntryList();
        requestDocumentList.documentEntries = requestDocumentListDocumentEntries;
        final appendRequest = AppendDocumentOnlineRequest(requestDocumentData, requestDocumentList);
        await wordsApi.appendDocumentOnline(appendRequest);
    }

    Future<void> applyStyleToDocumentElement() async
    {
        final wordsApi = WordsApi(config);
        final requestStyleApply = StyleApply();
        requestStyleApply.styleName = 'Heading 1';
        final applyStyleRequest = ApplyStyleToDocumentElementRequest('Sample.docx', 'paragraphs/1/paragraphFormat', requestStyleApply);
        await wordsApi.applyStyleToDocumentElement(applyStyleRequest);
    }

    Future<void> applyStyleToDocumentElementOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestStyleApply = StyleApply();
        requestStyleApply.styleName = 'Heading 1';
        final applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(requestDocumentData, 'paragraphs/1/paragraphFormat', requestStyleApply);
        await wordsApi.applyStyleToDocumentElementOnline(applyStyleRequest);
    }

    Future<void> buildReport() async
    {
        final wordsApi = WordsApi(config);
        final requestReportEngineSettingsReportBuildOptions = [
          ReportBuildOptionsEnum.allowMissingMembers,
        ReportBuildOptionsEnum.removeEmptyParagraphs];
        final requestReportEngineSettings = ReportEngineSettings();
        requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
        requestReportEngineSettings.reportBuildOptions = requestReportEngineSettingsReportBuildOptions;
        final buildReportRequest = BuildReportRequest('Sample.docx', 'Data.json', requestReportEngineSettings);
        await wordsApi.buildReport(buildReportRequest);
    }

    Future<void> buildReportOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestTemplateData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestReportEngineSettings = ReportEngineSettings();
        requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
        requestReportEngineSettings.dataSourceName = 'persons';
        final buildReportRequest = BuildReportOnlineRequest(requestTemplateData, 'Data.json', requestReportEngineSettings);
        await wordsApi.buildReportOnline(buildReportRequest);
    }

    Future<void> classify() async
    {
        final wordsApi = WordsApi(config);
        final classifyRequest = ClassifyRequest('Try text classification', bestClassesCount: '3');
        await wordsApi.classify(classifyRequest);
    }

    Future<void> classifyDocument() async
    {
        final wordsApi = WordsApi(config);
        final classifyRequest = ClassifyDocumentRequest('Sample.docx', bestClassesCount: '3');
        await wordsApi.classifyDocument(classifyRequest);
    }

    Future<void> classifyDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final classifyRequest = ClassifyDocumentOnlineRequest(requestDocumentData, bestClassesCount: '3');
        await wordsApi.classifyDocumentOnline(classifyRequest);
    }

    Future<void> compareDocument() async
    {
        final wordsApi = WordsApi(config);
        final requestCompareData = CompareData();
        requestCompareData.author = 'author';
        requestCompareData.comparingWithDocument = 'TestCompareDocument2.doc';
        requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
        final compareRequest = CompareDocumentRequest('TestCompareDocument1.doc', requestCompareData, destFileName: '/TestCompareDocumentOut.doc');
        await wordsApi.compareDocument(compareRequest);
    }

    Future<void> compareDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("compareTestDoc1.doc").readAsBytes()).buffer.asByteData();
        final requestComparingDocumentData = (await File("compareTestDoc2.doc").readAsBytes()).buffer.asByteData();
        final requestCompareData = CompareData();
        requestCompareData.author = 'author';
        requestCompareData.comparingWithDocument = 'TestCompareDocument2.doc';
        requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
        final compareRequest = CompareDocumentOnlineRequest(requestDocumentData, requestCompareData, comparingDocument: requestComparingDocumentData, destFileName: '/TestCompareDocumentOut.doc');
        await wordsApi.compareDocumentOnline(compareRequest);
    }

    Future<void> convertDocument() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/test_uploadfile.docx").readAsBytes()).buffer.asByteData();
        final convertRequest = ConvertDocumentRequest(requestDocumentData, 'pdf');
        await wordsApi.convertDocument(convertRequest);
    }

    Future<void> copyFile() async
    {
        final wordsApi = WordsApi(config);
        final copyRequest = CopyFileRequest('/TestCopyFileDest.docx', 'Sample.docx');
        await wordsApi.copyFile(copyRequest);
    }

    Future<void> copyFolder() async
    {
        final wordsApi = WordsApi(config);
        final folderToCopy = '/TestCopyFolder';

        final copyRequest = CopyFolderRequest(folderToCopy + 'Dest', folderToCopy + 'Src');
        await wordsApi.copyFolder(copyRequest);
    }

    Future<void> copyStyle() async
    {
        final wordsApi = WordsApi(config);
        final requestStyleCopy = StyleCopy();
        requestStyleCopy.styleName = 'Heading 1';
        final copyRequest = CopyStyleRequest('Sample.docx', requestStyleCopy);
        await wordsApi.copyStyle(copyRequest);
    }

    Future<void> copyStyleOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestStyleCopy = StyleCopy();
        requestStyleCopy.styleName = 'Heading 1';
        final copyRequest = CopyStyleOnlineRequest(requestDocumentData, requestStyleCopy);
        await wordsApi.copyStyleOnline(copyRequest);
    }

    Future<void> createDocument() async
    {
        final wordsApi = WordsApi(config);
        final createRequest = CreateDocumentRequest(fileName: 'Sample.docx');
        await wordsApi.createDocument(createRequest);
    }

    Future<void> createFolder() async
    {
        final wordsApi = WordsApi(config);
        final createRequest = CreateFolderRequest('/TestCreateFolder');
        await wordsApi.createFolder(createRequest);
    }

    Future<void> createOrUpdateDocumentProperty() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestProperty = DocumentPropertyCreateOrUpdate();
        requestProperty.value = 'Imran Anwar';
        final createRequest = CreateOrUpdateDocumentPropertyRequest(remoteFileName, 'AsposeAuthor', requestProperty, destFileName: remoteFileName);
        await wordsApi.createOrUpdateDocumentProperty(createRequest);
    }

    Future<void> createOrUpdateDocumentPropertyOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestProperty = DocumentPropertyCreateOrUpdate();
        requestProperty.value = 'Imran Anwar';
        final createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(requestDocumentData, 'AsposeAuthor', requestProperty);
        await wordsApi.createOrUpdateDocumentPropertyOnline(createRequest);
    }

    Future<void> deleteAllParagraphTabStops() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteAllParagraphTabStopsRequest('Sample.docx', 0);
        await wordsApi.deleteAllParagraphTabStops(deleteRequest);
    }

    Future<void> deleteAllParagraphTabStopsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteAllParagraphTabStopsOnline(deleteRequest);
    }

    Future<void> deleteBorder() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteBorderRequest('Sample.docx', 'left', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.deleteBorder(deleteRequest);
    }

    Future<void> deleteBorderOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteBorderOnlineRequest(requestDocumentData, 'left', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.deleteBorderOnline(deleteRequest);
    }

    Future<void> deleteBorders() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteBordersRequest('Sample.docx', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.deleteBorders(deleteRequest);
    }

    Future<void> deleteBordersOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteBordersOnlineRequest(requestDocumentData, nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.deleteBordersOnline(deleteRequest);
    }

    Future<void> deleteComment() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteCommentRequest(remoteFileName, 0, destFileName: remoteFileName);
        await wordsApi.deleteComment(deleteRequest);
    }

    Future<void> deleteCommentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteCommentOnlineRequest(requestDocumentData, 0);
        await wordsApi.deleteCommentOnline(deleteRequest);
    }

    Future<void> deleteComments() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteCommentsRequest(remoteFileName, destFileName: remoteFileName);
        await wordsApi.deleteComments(deleteRequest);
    }

    Future<void> deleteCommentsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteCommentsOnlineRequest(requestDocumentData);
        await wordsApi.deleteCommentsOnline(deleteRequest);
    }

    Future<void> deleteCustomXmlPart() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteCustomXmlPartRequest(remoteFileName, 0, destFileName: remoteFileName);
        await wordsApi.deleteCustomXmlPart(deleteRequest);
    }

    Future<void> deleteCustomXmlPartOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteCustomXmlPartOnlineRequest(requestDocumentData, 0);
        await wordsApi.deleteCustomXmlPartOnline(deleteRequest);
    }

    Future<void> deleteCustomXmlParts() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteCustomXmlPartsRequest(remoteFileName, destFileName: remoteFileName);
        await wordsApi.deleteCustomXmlParts(deleteRequest);
    }

    Future<void> deleteCustomXmlPartsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteCustomXmlPartsOnlineRequest(requestDocumentData);
        await wordsApi.deleteCustomXmlPartsOnline(deleteRequest);
    }

    Future<void> deleteDocumentProperty() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteDocumentPropertyRequest(remoteFileName, 'testProp', destFileName: remoteFileName);
        await wordsApi.deleteDocumentProperty(deleteRequest);
    }

    Future<void> deleteDocumentPropertyOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteDocumentPropertyOnlineRequest(requestDocumentData, 'testProp');
        await wordsApi.deleteDocumentPropertyOnline(deleteRequest);
    }

    Future<void> deleteDrawingObject() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteDrawingObjectRequest('Sample.docx', 0);
        await wordsApi.deleteDrawingObject(deleteRequest);
    }

    Future<void> deleteDrawingObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteDrawingObjectOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteDrawingObjectOnline(deleteRequest);
    }

    Future<void> deleteField() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteFieldRequest('Sample.docx', 0);
        await wordsApi.deleteField(deleteRequest);
    }

    Future<void> deleteFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.deleteFieldOnline(deleteRequest);
    }

    Future<void> deleteFields() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteFieldsRequest('Sample.docx', nodePath: '');
        await wordsApi.deleteFields(deleteRequest);
    }

    Future<void> deleteFieldsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteFieldsOnlineRequest(requestDocumentData, nodePath: '');
        await wordsApi.deleteFieldsOnline(deleteRequest);
    }

    Future<void> deleteFile() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteFileRequest('Sample.docx');
        await wordsApi.deleteFile(deleteRequest);
    }

    Future<void> deleteFolder() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteFolderRequest('');
        await wordsApi.deleteFolder(deleteRequest);
    }

    Future<void> deleteFootnote() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteFootnoteRequest('Sample.docx', 0);
        await wordsApi.deleteFootnote(deleteRequest);
    }

    Future<void> deleteFootnoteOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteFootnoteOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteFootnoteOnline(deleteRequest);
    }

    Future<void> deleteFormField() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteFormFieldRequest(remoteFileName, 0, destFileName: remoteFileName);
        await wordsApi.deleteFormField(deleteRequest);
    }

    Future<void> deleteFormFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteFormFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.deleteFormFieldOnline(deleteRequest);
    }

    Future<void> deleteHeaderFooter() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteHeaderFooterRequest('Sample.docx', '', 0);
        await wordsApi.deleteHeaderFooter(deleteRequest);
    }

    Future<void> deleteHeaderFooterOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteHeaderFooterOnlineRequest(requestDocumentData, '', 0);
        await wordsApi.deleteHeaderFooterOnline(deleteRequest);
    }

    Future<void> deleteHeadersFooters() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteHeadersFootersRequest('Sample.docx', '');
        await wordsApi.deleteHeadersFooters(deleteRequest);
    }

    Future<void> deleteHeadersFootersOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteHeadersFootersOnlineRequest(requestDocumentData, '');
        await wordsApi.deleteHeadersFootersOnline(deleteRequest);
    }

    Future<void> deleteMacros() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteMacrosRequest('Sample.docx');
        await wordsApi.deleteMacros(deleteRequest);
    }

    Future<void> deleteMacrosOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteMacrosOnlineRequest(requestDocumentData);
        await wordsApi.deleteMacrosOnline(deleteRequest);
    }

    Future<void> deleteOfficeMathObject() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteOfficeMathObjectRequest('Sample.docx', 0);
        await wordsApi.deleteOfficeMathObject(deleteRequest);
    }

    Future<void> deleteOfficeMathObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteOfficeMathObjectOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteOfficeMathObjectOnline(deleteRequest);
    }

    Future<void> deleteParagraph() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteParagraphRequest('Sample.docx', 0);
        await wordsApi.deleteParagraph(deleteRequest);
    }

    Future<void> deleteParagraphListFormat() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteParagraphListFormatRequest('Sample.docx', 0);
        await wordsApi.deleteParagraphListFormat(deleteRequest);
    }

    Future<void> deleteParagraphListFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphDeleteListFormat.doc").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteParagraphListFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteParagraphListFormatOnline(deleteRequest);
    }

    Future<void> deleteParagraphOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteParagraphOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.deleteParagraphOnline(deleteRequest);
    }

    Future<void> deleteParagraphTabStop() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteParagraphTabStopRequest('Sample.docx', 72.0, 0);
        await wordsApi.deleteParagraphTabStop(deleteRequest);
    }

    Future<void> deleteParagraphTabStopOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteParagraphTabStopOnlineRequest(requestDocumentData, 72.0, 0, nodePath: '');
        await wordsApi.deleteParagraphTabStopOnline(deleteRequest);
    }

    Future<void> deleteRun() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteRunRequest('Sample.docx', 'paragraphs/1', 0);
        await wordsApi.deleteRun(deleteRequest);
    }

    Future<void> deleteRunOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Runs/Run.doc").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteRunOnlineRequest(requestDocumentData, 'paragraphs/1', 0);
        await wordsApi.deleteRunOnline(deleteRequest);
    }

    Future<void> deleteSection() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteSectionRequest('Sample.docx', 0);
        await wordsApi.deleteSection(deleteRequest);
    }

    Future<void> deleteSectionOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteSectionOnlineRequest(requestDocumentData, 0);
        await wordsApi.deleteSectionOnline(deleteRequest);
    }

    Future<void> deleteTable() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteTableRequest('Sample.docx', 1);
        await wordsApi.deleteTable(deleteRequest);
    }

    Future<void> deleteTableCell() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteTableCellRequest('Sample.docx', 'sections/0/tables/2/rows/0', 0);
        await wordsApi.deleteTableCell(deleteRequest);
    }

    Future<void> deleteTableCellOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteTableCellOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', 0);
        await wordsApi.deleteTableCellOnline(deleteRequest);
    }

    Future<void> deleteTableOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteTableOnlineRequest(requestDocumentData, 1, nodePath: '');
        await wordsApi.deleteTableOnline(deleteRequest);
    }

    Future<void> deleteTableRow() async
    {
        final wordsApi = WordsApi(config);
        final deleteRequest = DeleteTableRowRequest('Sample.docx', 'tables/1', 0);
        await wordsApi.deleteTableRow(deleteRequest);
    }

    Future<void> deleteTableRowOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteTableRowOnlineRequest(requestDocumentData, 'tables/1', 0);
        await wordsApi.deleteTableRowOnline(deleteRequest);
    }

    Future<void> deleteWatermark() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final deleteRequest = DeleteWatermarkRequest(remoteFileName, destFileName: remoteFileName);
        await wordsApi.deleteWatermark(deleteRequest);
    }

    Future<void> deleteWatermarkOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final deleteRequest = DeleteWatermarkOnlineRequest(requestDocumentData);
        await wordsApi.deleteWatermarkOnline(deleteRequest);
    }

    Future<void> downloadFile() async
    {
        final wordsApi = WordsApi(config);
        final downloadRequest = DownloadFileRequest('Sample.docx');
        await wordsApi.downloadFile(downloadRequest);
    }

    Future<void> executeMailMerge() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final mailMergeRequest = ExecuteMailMergeRequest(remoteFileName, data: 'TestExecuteTemplateData.txt', destFileName: remoteFileName);
        await wordsApi.executeMailMerge(mailMergeRequest);
    }

    Future<void> executeMailMergeOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestTemplateData = (await File("TestExecuteTemplate.doc").readAsBytes()).buffer.asByteData();
        final requestDataData = (await File("TestExecuteTemplateData.txt").readAsBytes()).buffer.asByteData();
        final mailMergeRequest = ExecuteMailMergeOnlineRequest(requestTemplateData, requestDataData);
        await wordsApi.executeMailMergeOnline(mailMergeRequest);
    }

    Future<void> getAvailableFonts() async
    {
        final wordsApi = WordsApi(config);
        final request = GetAvailableFontsRequest();
        await wordsApi.getAvailableFonts(request);
    }

    Future<void> getBookmarkByName() async
    {
        final wordsApi = WordsApi(config);
        final request = GetBookmarkByNameRequest('Sample.docx', 'aspose');
        await wordsApi.getBookmarkByName(request);
    }

    Future<void> getBookmarkByNameOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetBookmarkByNameOnlineRequest(requestDocumentData, 'aspose');
        await wordsApi.getBookmarkByNameOnline(request);
    }

    Future<void> getBookmarks() async
    {
        final wordsApi = WordsApi(config);
        final request = GetBookmarksRequest('Sample.docx');
        await wordsApi.getBookmarks(request);
    }

    Future<void> getBookmarksOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetBookmarksOnlineRequest(requestDocumentData);
        await wordsApi.getBookmarksOnline(request);
    }

    Future<void> getBorder() async
    {
        final wordsApi = WordsApi(config);
        final request = GetBorderRequest('Sample.docx', 'left', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.getBorder(request);
    }

    Future<void> getBorderOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetBorderOnlineRequest(requestDocumentData, 'left', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.getBorderOnline(request);
    }

    Future<void> getBorders() async
    {
        final wordsApi = WordsApi(config);
        final request = GetBordersRequest('Sample.docx', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.getBorders(request);
    }

    Future<void> getBordersOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetBordersOnlineRequest(requestDocumentData, nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.getBordersOnline(request);
    }

    Future<void> getComment() async
    {
        final wordsApi = WordsApi(config);
        final request = GetCommentRequest('Sample.docx', 0);
        await wordsApi.getComment(request);
    }

    Future<void> getCommentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetCommentOnlineRequest(requestDocumentData, 0);
        await wordsApi.getCommentOnline(request);
    }

    Future<void> getComments() async
    {
        final wordsApi = WordsApi(config);
        final request = GetCommentsRequest('Sample.docx');
        await wordsApi.getComments(request);
    }

    Future<void> getCommentsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetCommentsOnlineRequest(requestDocumentData);
        await wordsApi.getCommentsOnline(request);
    }

    Future<void> getCustomXmlPart() async
    {
        final wordsApi = WordsApi(config);
        final request = GetCustomXmlPartRequest('Sample.docx', 0);
        await wordsApi.getCustomXmlPart(request);
    }

    Future<void> getCustomXmlPartOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetCustomXmlPartOnlineRequest(requestDocumentData, 0);
        await wordsApi.getCustomXmlPartOnline(request);
    }

    Future<void> getCustomXmlParts() async
    {
        final wordsApi = WordsApi(config);
        final request = GetCustomXmlPartsRequest('Sample.docx');
        await wordsApi.getCustomXmlParts(request);
    }

    Future<void> getCustomXmlPartsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetCustomXmlPartsOnlineRequest(requestDocumentData);
        await wordsApi.getCustomXmlPartsOnline(request);
    }

    Future<void> getDocument() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentRequest('Sample.docx');
        await wordsApi.getDocument(request);
    }

    Future<void> getDocumentDrawingObjectByIndex() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentDrawingObjectByIndexRequest('Sample.docx', 0);
        await wordsApi.getDocumentDrawingObjectByIndex(request);
    }

    Future<void> getDocumentDrawingObjectByIndexOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentDrawingObjectByIndexOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.getDocumentDrawingObjectByIndexOnline(request);
    }

    Future<void> getDocumentDrawingObjectImageData() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentDrawingObjectImageDataRequest('Sample.docx', 0);
        await wordsApi.getDocumentDrawingObjectImageData(request);
    }

    Future<void> getDocumentDrawingObjectImageDataOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentDrawingObjectImageDataOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.getDocumentDrawingObjectImageDataOnline(request);
    }

    Future<void> getDocumentDrawingObjectOleData() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentDrawingObjectOleDataRequest('Sample.docx', 0);
        await wordsApi.getDocumentDrawingObjectOleData(request);
    }

    Future<void> getDocumentDrawingObjectOleDataOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentDrawingObjectOleDataOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.getDocumentDrawingObjectOleDataOnline(request);
    }

    Future<void> getDocumentDrawingObjects() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentDrawingObjectsRequest('Sample.docx');
        await wordsApi.getDocumentDrawingObjects(request);
    }

    Future<void> getDocumentDrawingObjectsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentDrawingObjectsOnlineRequest(requestDocumentData, nodePath: 'sections/0');
        await wordsApi.getDocumentDrawingObjectsOnline(request);
    }

    Future<void> getDocumentFieldNames() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentFieldNamesRequest('Sample.docx');
        await wordsApi.getDocumentFieldNames(request);
    }

    Future<void> getDocumentFieldNamesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestTemplateData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentFieldNamesOnlineRequest(requestTemplateData, useNonMergeFields: true);
        await wordsApi.getDocumentFieldNamesOnline(request);
    }

    Future<void> getDocumentHyperlinkByIndex() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentHyperlinkByIndexRequest('Sample.docx', 0);
        await wordsApi.getDocumentHyperlinkByIndex(request);
    }

    Future<void> getDocumentHyperlinkByIndexOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentHyperlinkByIndexOnlineRequest(requestDocumentData, 0);
        await wordsApi.getDocumentHyperlinkByIndexOnline(request);
    }

    Future<void> getDocumentHyperlinks() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentHyperlinksRequest('Sample.docx');
        await wordsApi.getDocumentHyperlinks(request);
    }

    Future<void> getDocumentHyperlinksOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentHyperlinksOnlineRequest(requestDocumentData);
        await wordsApi.getDocumentHyperlinksOnline(request);
    }

    Future<void> getDocumentProperties() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentPropertiesRequest('Sample.docx');
        await wordsApi.getDocumentProperties(request);
    }

    Future<void> getDocumentPropertiesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentPropertiesOnlineRequest(requestDocumentData);
        await wordsApi.getDocumentPropertiesOnline(request);
    }

    Future<void> getDocumentProperty() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentPropertyRequest('Sample.docx', 'Author');
        await wordsApi.getDocumentProperty(request);
    }

    Future<void> getDocumentPropertyOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentPropertyOnlineRequest(requestDocumentData, 'Author');
        await wordsApi.getDocumentPropertyOnline(request);
    }

    Future<void> getDocumentProtection() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentProtectionRequest('Sample.docx');
        await wordsApi.getDocumentProtection(request);
    }

    Future<void> getDocumentProtectionOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentProtectionOnlineRequest(requestDocumentData);
        await wordsApi.getDocumentProtectionOnline(request);
    }

    Future<void> getDocumentStatistics() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentStatisticsRequest('Sample.docx');
        await wordsApi.getDocumentStatistics(request);
    }

    Future<void> getDocumentStatisticsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetDocumentStatisticsOnlineRequest(requestDocumentData);
        await wordsApi.getDocumentStatisticsOnline(request);
    }

    Future<void> getDocumentWithFormat() async
    {
        final wordsApi = WordsApi(config);
        final request = GetDocumentWithFormatRequest('Sample.docx', 'text', outPath: '/TestGetDocumentWithFormatAndOutPath.text');
        await wordsApi.getDocumentWithFormat(request);
    }

    Future<void> getField() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFieldRequest('Sample.docx', 0);
        await wordsApi.getField(request);
    }

    Future<void> getFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
        final request = GetFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.getFieldOnline(request);
    }

    Future<void> getFields() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFieldsRequest('Sample.docx');
        await wordsApi.getFields(request);
    }

    Future<void> getFieldsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
        final request = GetFieldsOnlineRequest(requestDocumentData, nodePath: 'sections/0');
        await wordsApi.getFieldsOnline(request);
    }

    Future<void> getFilesList() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFilesListRequest('');
        await wordsApi.getFilesList(request);
    }

    Future<void> getFootnote() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFootnoteRequest('Sample.docx', 0);
        await wordsApi.getFootnote(request);
    }

    Future<void> getFootnoteOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
        final request = GetFootnoteOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.getFootnoteOnline(request);
    }

    Future<void> getFootnotes() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFootnotesRequest('Sample.docx');
        await wordsApi.getFootnotes(request);
    }

    Future<void> getFootnotesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
        final request = GetFootnotesOnlineRequest(requestDocumentData, nodePath: '');
        await wordsApi.getFootnotesOnline(request);
    }

    Future<void> getFormField() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFormFieldRequest('Sample.docx', 0);
        await wordsApi.getFormField(request);
    }

    Future<void> getFormFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
        final request = GetFormFieldOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.getFormFieldOnline(request);
    }

    Future<void> getFormFields() async
    {
        final wordsApi = WordsApi(config);
        final request = GetFormFieldsRequest('Sample.docx');
        await wordsApi.getFormFields(request);
    }

    Future<void> getFormFieldsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
        final request = GetFormFieldsOnlineRequest(requestDocumentData, nodePath: 'sections/0');
        await wordsApi.getFormFieldsOnline(request);
    }

    Future<void> getHeaderFooter() async
    {
        final wordsApi = WordsApi(config);
        final request = GetHeaderFooterRequest('Sample.docx', 0);
        await wordsApi.getHeaderFooter(request);
    }

    Future<void> getHeaderFooterOfSection() async
    {
        final wordsApi = WordsApi(config);
        final request = GetHeaderFooterOfSectionRequest('Sample.docx', 0, 0);
        await wordsApi.getHeaderFooterOfSection(request);
    }

    Future<void> getHeaderFooterOfSectionOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final request = GetHeaderFooterOfSectionOnlineRequest(requestDocumentData, 0, 0);
        await wordsApi.getHeaderFooterOfSectionOnline(request);
    }

    Future<void> getHeaderFooterOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final request = GetHeaderFooterOnlineRequest(requestDocumentData, 0);
        await wordsApi.getHeaderFooterOnline(request);
    }

    Future<void> getHeaderFooters() async
    {
        final wordsApi = WordsApi(config);
        final request = GetHeaderFootersRequest('Sample.docx', '');
        await wordsApi.getHeaderFooters(request);
    }

    Future<void> getHeaderFootersOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final request = GetHeaderFootersOnlineRequest(requestDocumentData, '');
        await wordsApi.getHeaderFootersOnline(request);
    }

    Future<void> getList() async
    {
        final wordsApi = WordsApi(config);
        final request = GetListRequest('TestGetLists.doc', 1);
        await wordsApi.getList(request);
    }

    Future<void> getListOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
        final request = GetListOnlineRequest(requestDocumentData, 1);
        await wordsApi.getListOnline(request);
    }

    Future<void> getLists() async
    {
        final wordsApi = WordsApi(config);
        final request = GetListsRequest('TestGetLists.doc');
        await wordsApi.getLists(request);
    }

    Future<void> getListsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
        final request = GetListsOnlineRequest(requestDocumentData);
        await wordsApi.getListsOnline(request);
    }

    Future<void> getOfficeMathObject() async
    {
        final wordsApi = WordsApi(config);
        final request = GetOfficeMathObjectRequest('Sample.docx', 0);
        await wordsApi.getOfficeMathObject(request);
    }

    Future<void> getOfficeMathObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetOfficeMathObjectOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.getOfficeMathObjectOnline(request);
    }

    Future<void> getOfficeMathObjects() async
    {
        final wordsApi = WordsApi(config);
        final request = GetOfficeMathObjectsRequest('Sample.docx');
        await wordsApi.getOfficeMathObjects(request);
    }

    Future<void> getOfficeMathObjectsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetOfficeMathObjectsOnlineRequest(requestDocumentData, nodePath: '');
        await wordsApi.getOfficeMathObjectsOnline(request);
    }

    Future<void> getParagraph() async
    {
        final wordsApi = WordsApi(config);
        final request = GetParagraphRequest('Sample.docx', 0);
        await wordsApi.getParagraph(request);
    }

    Future<void> getParagraphFormat() async
    {
        final wordsApi = WordsApi(config);
        final request = GetParagraphFormatRequest('Sample.docx', 0);
        await wordsApi.getParagraphFormat(request);
    }

    Future<void> getParagraphFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetParagraphFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.getParagraphFormatOnline(request);
    }

    Future<void> getParagraphListFormat() async
    {
        final wordsApi = WordsApi(config);
        final request = GetParagraphListFormatRequest('Sample.docx', 0);
        await wordsApi.getParagraphListFormat(request);
    }

    Future<void> getParagraphListFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphGetListFormat.doc").readAsBytes()).buffer.asByteData();
        final request = GetParagraphListFormatOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.getParagraphListFormatOnline(request);
    }

    Future<void> getParagraphOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetParagraphOnlineRequest(requestDocumentData, 0, nodePath: 'sections/0');
        await wordsApi.getParagraphOnline(request);
    }

    Future<void> getParagraphs() async
    {
        final wordsApi = WordsApi(config);
        final request = GetParagraphsRequest('Sample.docx');
        await wordsApi.getParagraphs(request);
    }

    Future<void> getParagraphsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetParagraphsOnlineRequest(requestDocumentData, nodePath: 'sections/0');
        await wordsApi.getParagraphsOnline(request);
    }

    Future<void> getParagraphTabStops() async
    {
        final wordsApi = WordsApi(config);
        final request = GetParagraphTabStopsRequest('Sample.docx', 0);
        await wordsApi.getParagraphTabStops(request);
    }

    Future<void> getParagraphTabStopsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
        final request = GetParagraphTabStopsOnlineRequest(requestDocumentData, 0, nodePath: '');
        await wordsApi.getParagraphTabStopsOnline(request);
    }

    Future<void> getPublicKey() async
    {
        final wordsApi = WordsApi(config);
        final request = GetPublicKeyRequest();
        await wordsApi.getPublicKey(request);
    }

    Future<void> getRangeText() async
    {
        final wordsApi = WordsApi(config);
        final request = GetRangeTextRequest('Sample.docx', 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
        await wordsApi.getRangeText(request);
    }

    Future<void> getRangeTextOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Range/RangeGet.doc").readAsBytes()).buffer.asByteData();
        final request = GetRangeTextOnlineRequest(requestDocumentData, 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
        await wordsApi.getRangeTextOnline(request);
    }

    Future<void> getRun() async
    {
        final wordsApi = WordsApi(config);
        final request = GetRunRequest('Sample.docx', 'paragraphs/0', 0);
        await wordsApi.getRun(request);
    }

    Future<void> getRunFont() async
    {
        final wordsApi = WordsApi(config);
        final request = GetRunFontRequest('Sample.docx', 'paragraphs/0', 0);
        await wordsApi.getRunFont(request);
    }

    Future<void> getRunFontOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetRunFontOnlineRequest(requestDocumentData, 'paragraphs/0', 0);
        await wordsApi.getRunFontOnline(request);
    }

    Future<void> getRunOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetRunOnlineRequest(requestDocumentData, 'paragraphs/0', 0);
        await wordsApi.getRunOnline(request);
    }

    Future<void> getRuns() async
    {
        final wordsApi = WordsApi(config);
        final request = GetRunsRequest('Sample.docx', 'sections/0/paragraphs/0');
        await wordsApi.getRuns(request);
    }

    Future<void> getRunsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetRunsOnlineRequest(requestDocumentData, 'sections/0/paragraphs/0');
        await wordsApi.getRunsOnline(request);
    }

    Future<void> getSection() async
    {
        final wordsApi = WordsApi(config);
        final request = GetSectionRequest('Sample.docx', 0);
        await wordsApi.getSection(request);
    }

    Future<void> getSectionOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetSectionOnlineRequest(requestDocumentData, 0);
        await wordsApi.getSectionOnline(request);
    }

    Future<void> getSectionPageSetup() async
    {
        final wordsApi = WordsApi(config);
        final request = GetSectionPageSetupRequest('Sample.docx', 0);
        await wordsApi.getSectionPageSetup(request);
    }

    Future<void> getSectionPageSetupOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetSectionPageSetupOnlineRequest(requestDocumentData, 0);
        await wordsApi.getSectionPageSetupOnline(request);
    }

    Future<void> getSections() async
    {
        final wordsApi = WordsApi(config);
        final request = GetSectionsRequest('Sample.docx');
        await wordsApi.getSections(request);
    }

    Future<void> getSectionsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetSectionsOnlineRequest(requestDocumentData);
        await wordsApi.getSectionsOnline(request);
    }

    Future<void> getStyle() async
    {
        final wordsApi = WordsApi(config);
        final request = GetStyleRequest('Sample.docx', 'Heading 1');
        await wordsApi.getStyle(request);
    }

    Future<void> getStyleFromDocumentElement() async
    {
        final wordsApi = WordsApi(config);
        final request = GetStyleFromDocumentElementRequest('Sample.docx', 'paragraphs/1/paragraphFormat');
        await wordsApi.getStyleFromDocumentElement(request);
    }

    Future<void> getStyleFromDocumentElementOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetStyleFromDocumentElementOnlineRequest(requestDocumentData, 'paragraphs/1/paragraphFormat');
        await wordsApi.getStyleFromDocumentElementOnline(request);
    }

    Future<void> getStyleOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetStyleOnlineRequest(requestDocumentData, 'Heading 1');
        await wordsApi.getStyleOnline(request);
    }

    Future<void> getStyles() async
    {
        final wordsApi = WordsApi(config);
        final request = GetStylesRequest('Sample.docx');
        await wordsApi.getStyles(request);
    }

    Future<void> getStylesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetStylesOnlineRequest(requestDocumentData);
        await wordsApi.getStylesOnline(request);
    }

    Future<void> getTable() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTableRequest('Sample.docx', 1);
        await wordsApi.getTable(request);
    }

    Future<void> getTableCell() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTableCellRequest('Sample.docx', 'sections/0/tables/2/rows/0', 0);
        await wordsApi.getTableCell(request);
    }

    Future<void> getTableCellFormat() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTableCellFormatRequest('Sample.docx', 'sections/0/tables/2/rows/0', 0);
        await wordsApi.getTableCellFormat(request);
    }

    Future<void> getTableCellFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTableCellFormatOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', 0);
        await wordsApi.getTableCellFormatOnline(request);
    }

    Future<void> getTableCellOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTableCellOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', 0);
        await wordsApi.getTableCellOnline(request);
    }

    Future<void> getTableOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTableOnlineRequest(requestDocumentData, 1, nodePath: '');
        await wordsApi.getTableOnline(request);
    }

    Future<void> getTableProperties() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTablePropertiesRequest('Sample.docx', 1);
        await wordsApi.getTableProperties(request);
    }

    Future<void> getTablePropertiesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTablePropertiesOnlineRequest(requestDocumentData, 1, nodePath: '');
        await wordsApi.getTablePropertiesOnline(request);
    }

    Future<void> getTableRow() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTableRowRequest('Sample.docx', 'tables/1', 0);
        await wordsApi.getTableRow(request);
    }

    Future<void> getTableRowFormat() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTableRowFormatRequest('Sample.docx', 'sections/0/tables/2', 0);
        await wordsApi.getTableRowFormat(request);
    }

    Future<void> getTableRowFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTableRowFormatOnlineRequest(requestDocumentData, 'sections/0/tables/2', 0);
        await wordsApi.getTableRowFormatOnline(request);
    }

    Future<void> getTableRowOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTableRowOnlineRequest(requestDocumentData, 'tables/1', 0);
        await wordsApi.getTableRowOnline(request);
    }

    Future<void> getTables() async
    {
        final wordsApi = WordsApi(config);
        final request = GetTablesRequest('Sample.docx');
        await wordsApi.getTables(request);
    }

    Future<void> getTablesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final request = GetTablesOnlineRequest(requestDocumentData, nodePath: '');
        await wordsApi.getTablesOnline(request);
    }

    Future<void> insertComment() async
    {
        final wordsApi = WordsApi(config);
        final requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.nodeId = '0.3.0.3';
        final requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.node = requestCommentRangeStartNode;
        requestCommentRangeStart.offset = 0;
        final requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.nodeId = '0.3.0.3';
        final requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.node = requestCommentRangeEndNode;
        requestCommentRangeEnd.offset = 0;
        final requestComment = CommentInsert();
        requestComment.rangeStart = requestCommentRangeStart;
        requestComment.rangeEnd = requestCommentRangeEnd;
        requestComment.initial = 'IA';
        requestComment.author = 'Imran Anwar';
        requestComment.text = 'A new Comment';
        final insertRequest = InsertCommentRequest('Sample.docx', requestComment);
        await wordsApi.insertComment(insertRequest);
    }

    Future<void> insertCommentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.nodeId = '0.3.0.3';
        final requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.node = requestCommentRangeStartNode;
        requestCommentRangeStart.offset = 0;
        final requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.nodeId = '0.3.0.3';
        final requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.node = requestCommentRangeEndNode;
        requestCommentRangeEnd.offset = 0;
        final requestComment = CommentInsert();
        requestComment.rangeStart = requestCommentRangeStart;
        requestComment.rangeEnd = requestCommentRangeEnd;
        requestComment.initial = 'IA';
        requestComment.author = 'Imran Anwar';
        requestComment.text = 'A new Comment';
        final insertRequest = InsertCommentOnlineRequest(requestDocumentData, requestComment);
        await wordsApi.insertCommentOnline(insertRequest);
    }

    Future<void> insertCustomXmlPart() async
    {
        final wordsApi = WordsApi(config);
        final requestCustomXmlPart = CustomXmlPartInsert();
        requestCustomXmlPart.id = 'hello';
        requestCustomXmlPart.data = '<data>Hello world</data>';
        final insertRequest = InsertCustomXmlPartRequest('Sample.docx', requestCustomXmlPart);
        await wordsApi.insertCustomXmlPart(insertRequest);
    }

    Future<void> insertCustomXmlPartOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestCustomXmlPart = CustomXmlPartInsert();
        requestCustomXmlPart.id = 'hello';
        requestCustomXmlPart.data = '<data>Hello world</data>';
        final insertRequest = InsertCustomXmlPartOnlineRequest(requestDocumentData, requestCustomXmlPart);
        await wordsApi.insertCustomXmlPartOnline(insertRequest);
    }

    Future<void> insertDrawingObject() async
    {
        final wordsApi = WordsApi(config);
        final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
        final requestDrawingObject = DrawingObjectInsert();
        requestDrawingObject.height = 0;
        requestDrawingObject.left = 0;
        requestDrawingObject.top = 0;
        requestDrawingObject.width = 0;
        requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
        requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
        requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;
        final insertRequest = InsertDrawingObjectRequest('Sample.docx', requestDrawingObject, requestImageFileData);
        await wordsApi.insertDrawingObject(insertRequest);
    }

    Future<void> insertDrawingObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
        final requestDrawingObject = DrawingObjectInsert();
        requestDrawingObject.height = 0;
        requestDrawingObject.left = 0;
        requestDrawingObject.top = 0;
        requestDrawingObject.width = 0;
        requestDrawingObject.relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin;
        requestDrawingObject.relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin;
        requestDrawingObject.wrapType = DrawingObjectInsert_WrapTypeEnum.inline;
        final insertRequest = InsertDrawingObjectOnlineRequest(requestDocumentData, requestDrawingObject, requestImageFileData, nodePath: '');
        await wordsApi.insertDrawingObjectOnline(insertRequest);
    }

    Future<void> insertField() async
    {
        final wordsApi = WordsApi(config);
        final requestField = FieldInsert();
        requestField.fieldCode = '{ NUMPAGES }';
        final insertRequest = InsertFieldRequest('Sample.docx', requestField);
        await wordsApi.insertField(insertRequest);
    }

    Future<void> insertFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
        final requestField = FieldInsert();
        requestField.fieldCode = '{ NUMPAGES }';
        final insertRequest = InsertFieldOnlineRequest(requestDocumentData, requestField, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.insertFieldOnline(insertRequest);
    }

    Future<void> insertFootnote() async
    {
        final wordsApi = WordsApi(config);
        final requestFootnoteDto = FootnoteInsert();
        requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
        requestFootnoteDto.text = 'test endnote';
        final insertRequest = InsertFootnoteRequest('Sample.docx', requestFootnoteDto);
        await wordsApi.insertFootnote(insertRequest);
    }

    Future<void> insertFootnoteOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
        final requestFootnoteDto = FootnoteInsert();
        requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
        requestFootnoteDto.text = 'test endnote';
        final insertRequest = InsertFootnoteOnlineRequest(requestDocumentData, requestFootnoteDto, nodePath: '');
        await wordsApi.insertFootnoteOnline(insertRequest);
    }

    Future<void> insertFormField() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestFormField = FormFieldTextInput();
        requestFormField.name = 'FullName';
        requestFormField.enabled = true;
        requestFormField.calculateOnExit = true;
        requestFormField.statusText = '';
        requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
        requestFormField.textInputDefault = '123';
        requestFormField.textInputFormat = 'UPPERCASE';
        final insertRequest = InsertFormFieldRequest(remoteFileName, requestFormField, destFileName: remoteFileName);
        await wordsApi.insertFormField(insertRequest);
    }

    Future<void> insertFormFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
        final requestFormField = FormFieldTextInput();
        requestFormField.name = 'FullName';
        requestFormField.enabled = true;
        requestFormField.calculateOnExit = true;
        requestFormField.statusText = '';
        requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
        requestFormField.textInputDefault = '123';
        requestFormField.textInputFormat = 'UPPERCASE';
        final insertRequest = InsertFormFieldOnlineRequest(requestDocumentData, requestFormField, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.insertFormFieldOnline(insertRequest);
    }

    Future<void> insertHeaderFooter() async
    {
        final wordsApi = WordsApi(config);
        final insertRequest = InsertHeaderFooterRequest('Sample.docx', '', 'FooterEven');
        await wordsApi.insertHeaderFooter(insertRequest);
    }

    Future<void> insertHeaderFooterOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
        final insertRequest = InsertHeaderFooterOnlineRequest(requestDocumentData, '', 'FooterEven');
        await wordsApi.insertHeaderFooterOnline(insertRequest);
    }

    Future<void> insertList() async
    {
        final wordsApi = WordsApi(config);
        final requestListInsert = ListInsert();
        requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;
        final insertRequest = InsertListRequest('TestGetLists.doc', requestListInsert);
        await wordsApi.insertList(insertRequest);
    }

    Future<void> insertListOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
        final requestListInsert = ListInsert();
        requestListInsert.template = ListInsert_TemplateEnum.outlineLegal;
        final insertRequest = InsertListOnlineRequest(requestDocumentData, requestListInsert);
        await wordsApi.insertListOnline(insertRequest);
    }

    Future<void> insertOrUpdateParagraphTabStop() async
    {
        final wordsApi = WordsApi(config);
        final requestTabStopInsertDto = TabStopInsert();
        requestTabStopInsertDto.alignment = TabStopBase_AlignmentEnum.left;
        requestTabStopInsertDto.leader = TabStopBase_LeaderEnum.none;
        requestTabStopInsertDto.position = 100.0;
        final insertRequest = InsertOrUpdateParagraphTabStopRequest('Sample.docx', 0, requestTabStopInsertDto);
        await wordsApi.insertOrUpdateParagraphTabStop(insertRequest);
    }

    Future<void> insertOrUpdateParagraphTabStopOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphTabStops.docx").readAsBytes()).buffer.asByteData();
        final requestTabStopInsertDto = TabStopInsert();
        requestTabStopInsertDto.alignment = TabStopBase_AlignmentEnum.left;
        requestTabStopInsertDto.leader = TabStopBase_LeaderEnum.none;
        requestTabStopInsertDto.position = 72;
        final insertRequest = InsertOrUpdateParagraphTabStopOnlineRequest(requestDocumentData, requestTabStopInsertDto, 0, nodePath: '');
        await wordsApi.insertOrUpdateParagraphTabStopOnline(insertRequest);
    }

    Future<void> insertPageNumbers() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestPageNumber = PageNumber();
        requestPageNumber.alignment = 'center';
        requestPageNumber.format = '{PAGE} of {NUMPAGES}';
        final insertRequest = InsertPageNumbersRequest(remoteFileName, requestPageNumber, destFileName: remoteFileName);
        await wordsApi.insertPageNumbers(insertRequest);
    }

    Future<void> insertPageNumbersOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Common/Sample.docx").readAsBytes()).buffer.asByteData();
        final requestPageNumber = PageNumber();
        requestPageNumber.alignment = 'center';
        requestPageNumber.format = '{PAGE} of {NUMPAGES}';
        final insertRequest = InsertPageNumbersOnlineRequest(requestDocumentData, requestPageNumber);
        await wordsApi.insertPageNumbersOnline(insertRequest);
    }

    Future<void> insertParagraph() async
    {
        final wordsApi = WordsApi(config);
        final requestParagraph = ParagraphInsert();
        requestParagraph.text = 'This is a new paragraph for your document';
        final insertRequest = InsertParagraphRequest('Sample.docx', requestParagraph);
        await wordsApi.insertParagraph(insertRequest);
    }

    Future<void> insertParagraphOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestParagraph = ParagraphInsert();
        requestParagraph.text = 'This is a new paragraph for your document';
        final insertRequest = InsertParagraphOnlineRequest(requestDocumentData, requestParagraph, nodePath: 'sections/0');
        await wordsApi.insertParagraphOnline(insertRequest);
    }

    Future<void> insertRun() async
    {
        final wordsApi = WordsApi(config);
        final requestRun = RunInsert();
        requestRun.text = 'run with text';
        final insertRequest = InsertRunRequest('Sample.docx', 'paragraphs/1', requestRun);
        await wordsApi.insertRun(insertRequest);
    }

    Future<void> insertRunOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Runs/Run.doc").readAsBytes()).buffer.asByteData();
        final requestRun = RunInsert();
        requestRun.text = 'run with text';
        final insertRequest = InsertRunOnlineRequest(requestDocumentData, 'paragraphs/1', requestRun);
        await wordsApi.insertRunOnline(insertRequest);
    }

    Future<void> insertStyle() async
    {
        final wordsApi = WordsApi(config);
        final requestStyleInsert = StyleInsert();
        requestStyleInsert.styleName = 'My Style';
        requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;
        final insertRequest = InsertStyleRequest('Sample.docx', requestStyleInsert);
        await wordsApi.insertStyle(insertRequest);
    }

    Future<void> insertStyleOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestStyleInsert = StyleInsert();
        requestStyleInsert.styleName = 'My Style';
        requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;
        final insertRequest = InsertStyleOnlineRequest(requestDocumentData, requestStyleInsert);
        await wordsApi.insertStyleOnline(insertRequest);
    }

    Future<void> insertTable() async
    {
        final wordsApi = WordsApi(config);
        final requestTable = TableInsert();
        requestTable.columnsCount = 5;
        requestTable.rowsCount = 4;
        final insertRequest = InsertTableRequest('Sample.docx', requestTable);
        await wordsApi.insertTable(insertRequest);
    }

    Future<void> insertTableCell() async
    {
        final wordsApi = WordsApi(config);
        final requestCell = TableCellInsert();

        final insertRequest = InsertTableCellRequest('Sample.docx', 'sections/0/tables/2/rows/0', requestCell);
        await wordsApi.insertTableCell(insertRequest);
    }

    Future<void> insertTableCellOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestCell = TableCellInsert();

        final insertRequest = InsertTableCellOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', requestCell);
        await wordsApi.insertTableCellOnline(insertRequest);
    }

    Future<void> insertTableOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestTable = TableInsert();
        requestTable.columnsCount = 5;
        requestTable.rowsCount = 4;
        final insertRequest = InsertTableOnlineRequest(requestDocumentData, requestTable, nodePath: '');
        await wordsApi.insertTableOnline(insertRequest);
    }

    Future<void> insertTableRow() async
    {
        final wordsApi = WordsApi(config);
        final requestRow = TableRowInsert();
        requestRow.columnsCount = 5;
        final insertRequest = InsertTableRowRequest('Sample.docx', 'sections/0/tables/2', requestRow);
        await wordsApi.insertTableRow(insertRequest);
    }

    Future<void> insertTableRowOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestRow = TableRowInsert();
        requestRow.columnsCount = 5;
        final insertRequest = InsertTableRowOnlineRequest(requestDocumentData, 'sections/0/tables/2', requestRow);
        await wordsApi.insertTableRowOnline(insertRequest);
    }

    Future<void> insertWatermarkImage() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final insertRequest = InsertWatermarkImageRequest(remoteFileName, imageFile: null, destFileName: remoteFileName, image: 'Sample.png');
        await wordsApi.insertWatermarkImage(insertRequest);
    }

    Future<void> insertWatermarkImageOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
        final insertRequest = InsertWatermarkImageOnlineRequest(requestDocumentData, requestImageFileData);
        await wordsApi.insertWatermarkImageOnline(insertRequest);
    }

    Future<void> insertWatermarkText() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestWatermarkText = WatermarkText();
        requestWatermarkText.text = 'This is the text';
        requestWatermarkText.rotationAngle = 90.0;
        final insertRequest = InsertWatermarkTextRequest(remoteFileName, requestWatermarkText, destFileName: remoteFileName);
        await wordsApi.insertWatermarkText(insertRequest);
    }

    Future<void> insertWatermarkTextOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestWatermarkText = WatermarkText();
        requestWatermarkText.text = 'This is the text';
        requestWatermarkText.rotationAngle = 90;
        final insertRequest = InsertWatermarkTextOnlineRequest(requestDocumentData, requestWatermarkText);
        await wordsApi.insertWatermarkTextOnline(insertRequest);
    }

    Future<void> loadWebDocument() async
    {
        final wordsApi = WordsApi(config);
        final requestDataSaveOptions = SaveOptionsData();
        requestDataSaveOptions.fileName = 'google.doc';
        requestDataSaveOptions.saveFormat = 'doc';
        requestDataSaveOptions.dmlEffectsRenderingMode = '1';
        requestDataSaveOptions.dmlRenderingMode = '1';
        requestDataSaveOptions.updateSdtContent = false;
        requestDataSaveOptions.zipOutput = false;
        final requestData = LoadWebDocumentData();
        requestData.loadingDocumentUrl = 'http://google.com';
        requestData.saveOptions = requestDataSaveOptions;
        final loadRequest = LoadWebDocumentRequest(requestData);
        await wordsApi.loadWebDocument(loadRequest);
    }

    Future<void> moveFile() async
    {
        final wordsApi = WordsApi(config);
        final moveRequest = MoveFileRequest('/TestMoveFileDest_Sample.docx', 'Sample.docx');
        await wordsApi.moveFile(moveRequest);
    }

    Future<void> moveFolder() async
    {
        final wordsApi = WordsApi(config);
        final moveRequest = MoveFolderRequest('/TestMoveFolderDest_Sample', '/TestMoveFolderSrc');
        await wordsApi.moveFolder(moveRequest);
    }

    Future<void> optimizeDocument() async
    {
        final wordsApi = WordsApi(config);
        final requestOptions = OptimizationOptions();
        requestOptions.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002;
        final optimizeRequest = OptimizeDocumentRequest('Sample.docx', requestOptions);
        await wordsApi.optimizeDocument(optimizeRequest);
    }

    Future<void> optimizeDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestOptions = OptimizationOptions();
        requestOptions.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002;
        final optimizeRequest = OptimizeDocumentOnlineRequest(requestDocumentData, requestOptions);
        await wordsApi.optimizeDocumentOnline(optimizeRequest);
    }

    Future<void> protectDocument() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.password = '123';
        requestProtectionRequest.protectionType = 'ReadOnly';
        final protectRequest = ProtectDocumentRequest(remoteFileName, requestProtectionRequest, destFileName: remoteFileName);
        await wordsApi.protectDocument(protectRequest);
    }

    Future<void> protectDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.newPassword = '123';
        final protectRequest = ProtectDocumentOnlineRequest(requestDocumentData, requestProtectionRequest);
        await wordsApi.protectDocumentOnline(protectRequest);
    }

    Future<void> rejectAllRevisions() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final rejectRequest = RejectAllRevisionsRequest(remoteFileName, destFileName: remoteFileName);
        await wordsApi.rejectAllRevisions(rejectRequest);
    }

    Future<void> rejectAllRevisionsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final rejectRequest = RejectAllRevisionsOnlineRequest(requestDocumentData);
        await wordsApi.rejectAllRevisionsOnline(rejectRequest);
    }

    Future<void> removeRange() async
    {
        final wordsApi = WordsApi(config);
        final removeRequest = RemoveRangeRequest('Sample.docx', 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
        await wordsApi.removeRange(removeRequest);
    }

    Future<void> removeRangeOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Range/RangeGet.doc").readAsBytes()).buffer.asByteData();
        final removeRequest = RemoveRangeOnlineRequest(requestDocumentData, 'id0.0.0', rangeEndIdentifier: 'id0.0.1');
        await wordsApi.removeRangeOnline(removeRequest);
    }

    Future<void> renderDrawingObject() async
    {
        final wordsApi = WordsApi(config);
        final renderRequest = RenderDrawingObjectRequest('Sample.docx', 'png', 0);
        await wordsApi.renderDrawingObject(renderRequest);
    }

    Future<void> renderDrawingObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final renderRequest = RenderDrawingObjectOnlineRequest(requestDocumentData, 'png', 0, nodePath: 'sections/0');
        await wordsApi.renderDrawingObjectOnline(renderRequest);
    }

    Future<void> renderMathObject() async
    {
        final wordsApi = WordsApi(config);
        final renderRequest = RenderMathObjectRequest('Sample.docx', 'png', 0);
        await wordsApi.renderMathObject(renderRequest);
    }

    Future<void> renderMathObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final renderRequest = RenderMathObjectOnlineRequest(requestDocumentData, 'png', 0, nodePath: '');
        await wordsApi.renderMathObjectOnline(renderRequest);
    }

    Future<void> renderPage() async
    {
        final wordsApi = WordsApi(config);
        final renderRequest = RenderPageRequest('Sample.docx', 1, 'bmp');
        await wordsApi.renderPage(renderRequest);
    }

    Future<void> renderPageOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Text/SampleWordDocument.docx").readAsBytes()).buffer.asByteData();
        final renderRequest = RenderPageOnlineRequest(requestDocumentData, 1, 'bmp');
        await wordsApi.renderPageOnline(renderRequest);
    }

    Future<void> renderParagraph() async
    {
        final wordsApi = WordsApi(config);
        final renderRequest = RenderParagraphRequest('Sample.docx', 'png', 0);
        await wordsApi.renderParagraph(renderRequest);
    }

    Future<void> renderParagraphOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final renderRequest = RenderParagraphOnlineRequest(requestDocumentData, 'png', 0, nodePath: '');
        await wordsApi.renderParagraphOnline(renderRequest);
    }

    Future<void> renderTable() async
    {
        final wordsApi = WordsApi(config);
        final renderRequest = RenderTableRequest('Sample.docx', 'png', 0);
        await wordsApi.renderTable(renderRequest);
    }

    Future<void> renderTableOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final renderRequest = RenderTableOnlineRequest(requestDocumentData, 'png', 0, nodePath: '');
        await wordsApi.renderTableOnline(renderRequest);
    }

    Future<void> replaceText() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestReplaceText = ReplaceTextParameters();
        requestReplaceText.oldValue = 'Testing';
        requestReplaceText.newValue = 'Aspose testing';
        final replaceRequest = ReplaceTextRequest(remoteFileName, requestReplaceText, destFileName: remoteFileName);
        await wordsApi.replaceText(replaceRequest);
    }

    Future<void> replaceTextOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestReplaceText = ReplaceTextParameters();
        requestReplaceText.oldValue = 'aspose';
        requestReplaceText.newValue = 'aspose new';
        final replaceRequest = ReplaceTextOnlineRequest(requestDocumentData, requestReplaceText);
        await wordsApi.replaceTextOnline(replaceRequest);
    }

    Future<void> replaceWithText() async
    {
        final wordsApi = WordsApi(config);
        final requestRangeText = ReplaceRange();
        requestRangeText.text = 'Replaced header';
        final replaceRequest = ReplaceWithTextRequest('Sample.docx', 'id0.0.0', requestRangeText, rangeEndIdentifier: 'id0.0.1');
        await wordsApi.replaceWithText(replaceRequest);
    }

    Future<void> replaceWithTextOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Range/RangeGet.doc").readAsBytes()).buffer.asByteData();
        final requestRangeText = ReplaceRange();
        requestRangeText.text = 'Replaced header';
        final replaceRequest = ReplaceWithTextOnlineRequest(requestDocumentData, 'id0.0.0', requestRangeText, rangeEndIdentifier: 'id0.0.1');
        await wordsApi.replaceWithTextOnline(replaceRequest);
    }

    Future<void> resetCache() async
    {
        final wordsApi = WordsApi(config);
        final resetRequest = ResetCacheRequest();
        await wordsApi.resetCache(resetRequest);
    }

    Future<void> saveAs() async
    {
        final wordsApi = WordsApi(config);
        final requestSaveOptionsData = SaveOptionsData();
        requestSaveOptionsData.saveFormat = 'docx';
        requestSaveOptionsData.fileName = '/TestSaveAsFromPdfToDoc.docx';
        final saveRequest = SaveAsRequest('Sample.docx', requestSaveOptionsData);
        await wordsApi.saveAs(saveRequest);
    }

    Future<void> saveAsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Common/test_multi_pages.docx").readAsBytes()).buffer.asByteData();
        final requestSaveOptionsData = SaveOptionsData();
        requestSaveOptionsData.saveFormat = 'pdf';
        requestSaveOptionsData.fileName = '/TestSaveAs.pdf';
        final saveRequest = SaveAsOnlineRequest(requestDocumentData, requestSaveOptionsData);
        await wordsApi.saveAsOnline(saveRequest);
    }

    Future<void> saveAsRange() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentParameters = RangeDocument();
        requestDocumentParameters.documentName = '/NewDoc.docx';
        final saveRequest = SaveAsRangeRequest('Sample.docx', 'id0.0.0', requestDocumentParameters, rangeEndIdentifier: 'id0.0.1');
        await wordsApi.saveAsRange(saveRequest);
    }

    Future<void> saveAsRangeOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Range/RangeGet.doc").readAsBytes()).buffer.asByteData();
        final requestDocumentParameters = RangeDocument();
        requestDocumentParameters.documentName = '/NewDoc.docx';
        final saveRequest = SaveAsRangeOnlineRequest(requestDocumentData, 'id0.0.0', requestDocumentParameters, rangeEndIdentifier: 'id0.0.1');
        await wordsApi.saveAsRangeOnline(saveRequest);
    }

    Future<void> saveAsTiff() async
    {
        final wordsApi = WordsApi(config);
        final requestSaveOptions = TiffSaveOptionsData();
        requestSaveOptions.saveFormat = 'tiff';
        requestSaveOptions.fileName = '/abc.tiff';
        final saveRequest = SaveAsTiffRequest('Sample.docx', requestSaveOptions);
        await wordsApi.saveAsTiff(saveRequest);
    }

    Future<void> saveAsTiffOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Common/test_multi_pages.docx").readAsBytes()).buffer.asByteData();
        final requestSaveOptions = TiffSaveOptionsData();
        requestSaveOptions.saveFormat = 'tiff';
        requestSaveOptions.fileName = '/abc.tiff';
        final saveRequest = SaveAsTiffOnlineRequest(requestDocumentData, requestSaveOptions);
        await wordsApi.saveAsTiffOnline(saveRequest);
    }

    Future<void> search() async
    {
        final wordsApi = WordsApi(config);
        final searchRequest = SearchRequest('Sample.docx', 'aspose');
        await wordsApi.search(searchRequest);
    }

    Future<void> searchOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final searchRequest = SearchOnlineRequest(requestDocumentData, 'aspose');
        await wordsApi.searchOnline(searchRequest);
    }

    Future<void> splitDocument() async
    {
        final wordsApi = WordsApi(config);
        final splitRequest = SplitDocumentRequest('Sample.docx', 'text', destFileName: '/TestSplitDocument.text', from: 1, to: 2);
        await wordsApi.splitDocument(splitRequest);
    }

    Future<void> splitDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final splitRequest = SplitDocumentOnlineRequest(requestDocumentData, 'text', destFileName: '/TestSplitDocument.text', from: 1, to: 2);
        await wordsApi.splitDocumentOnline(splitRequest);
    }

    Future<void> unprotectDocument() async
    {
        final wordsApi = WordsApi(config);
        final requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.password = 'aspose';
        final unprotectRequest = UnprotectDocumentRequest('Sample.docx', requestProtectionRequest);
        await wordsApi.unprotectDocument(unprotectRequest);
    }

    Future<void> unprotectDocumentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestProtectionRequest = ProtectionRequest();
        requestProtectionRequest.password = 'aspose';
        final unprotectRequest = UnprotectDocumentOnlineRequest(requestDocumentData, requestProtectionRequest);
        await wordsApi.unprotectDocumentOnline(unprotectRequest);
    }

    Future<void> updateBookmark() async
    {
        final wordsApi = WordsApi(config);
        final bookmarkName = 'aspose';
        final remoteFileName = 'Sample.docx';

        final requestBookmarkData = BookmarkData();
        requestBookmarkData.name = bookmarkName;
        requestBookmarkData.text = 'This will be the text for Aspose';
        final updateRequest = UpdateBookmarkRequest(remoteFileName, bookmarkName, requestBookmarkData, destFileName: remoteFileName);
        await wordsApi.updateBookmark(updateRequest);
    }

    Future<void> updateBookmarkOnline() async
    {
        final wordsApi = WordsApi(config);
        final bookmarkName = 'aspose';

        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestBookmarkData = BookmarkData();
        requestBookmarkData.name = bookmarkName;
        requestBookmarkData.text = 'This will be the text for Aspose';
        final updateRequest = UpdateBookmarkOnlineRequest(requestDocumentData, bookmarkName, requestBookmarkData, destFileName: 'Sample.docx');
        await wordsApi.updateBookmarkOnline(updateRequest);
    }

    Future<void> updateBorder() async
    {
        final wordsApi = WordsApi(config);
        final requestBorderPropertiesColor = XmlColor();
        requestBorderPropertiesColor.web = '#AABBCC';
        final requestBorderProperties = Border();
        requestBorderProperties.borderType = Border_BorderTypeEnum.left;
        requestBorderProperties.color = requestBorderPropertiesColor;
        requestBorderProperties.distanceFromText = 6.0;
        requestBorderProperties.lineStyle = Border_LineStyleEnum.dashDotStroker;
        requestBorderProperties.lineWidth = 2.0;
        requestBorderProperties.shadow = true;
        final updateRequest = UpdateBorderRequest('Sample.docx', 'left', requestBorderProperties, nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.updateBorder(updateRequest);
    }

    Future<void> updateBorderOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestBorderPropertiesColor = XmlColor();
        requestBorderPropertiesColor.web = '#AABBCC';
        final requestBorderProperties = Border();
        requestBorderProperties.borderType = Border_BorderTypeEnum.left;
        requestBorderProperties.color = requestBorderPropertiesColor;
        requestBorderProperties.distanceFromText = 6;
        requestBorderProperties.lineStyle = Border_LineStyleEnum.dashDotStroker;
        requestBorderProperties.lineWidth = 2;
        requestBorderProperties.shadow = true;
        final updateRequest = UpdateBorderOnlineRequest(requestDocumentData, requestBorderProperties, 'left', nodePath: 'tables/1/rows/0/cells/0');
        await wordsApi.updateBorderOnline(updateRequest);
    }

    Future<void> updateComment() async
    {
        final wordsApi = WordsApi(config);
        final requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.nodeId = '0.3.0';
        final requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.node = requestCommentRangeStartNode;
        requestCommentRangeStart.offset = 0;
        final requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.nodeId = '0.3.0';
        final requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.node = requestCommentRangeEndNode;
        requestCommentRangeEnd.offset = 0;
        final requestComment = CommentUpdate();
        requestComment.rangeStart = requestCommentRangeStart;
        requestComment.rangeEnd = requestCommentRangeEnd;
        requestComment.initial = 'IA';
        requestComment.author = 'Imran Anwar';
        requestComment.text = 'A new Comment';
        final updateRequest = UpdateCommentRequest('Sample.docx', 0, requestComment);
        await wordsApi.updateComment(updateRequest);
    }

    Future<void> updateCommentOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestCommentRangeStartNode = NodeLink();
        requestCommentRangeStartNode.nodeId = '0.3.0';
        final requestCommentRangeStart = DocumentPosition();
        requestCommentRangeStart.node = requestCommentRangeStartNode;
        requestCommentRangeStart.offset = 0;
        final requestCommentRangeEndNode = NodeLink();
        requestCommentRangeEndNode.nodeId = '0.3.0';
        final requestCommentRangeEnd = DocumentPosition();
        requestCommentRangeEnd.node = requestCommentRangeEndNode;
        requestCommentRangeEnd.offset = 0;
        final requestComment = CommentUpdate();
        requestComment.rangeStart = requestCommentRangeStart;
        requestComment.rangeEnd = requestCommentRangeEnd;
        requestComment.initial = 'IA';
        requestComment.author = 'Imran Anwar';
        requestComment.text = 'A new Comment';
        final updateRequest = UpdateCommentOnlineRequest(requestDocumentData, 0, requestComment);
        await wordsApi.updateCommentOnline(updateRequest);
    }

    Future<void> updateCustomXmlPart() async
    {
        final wordsApi = WordsApi(config);
        final requestCustomXmlPart = CustomXmlPartUpdate();
        requestCustomXmlPart.data = '<data>Hello world</data>';
        final updateRequest = UpdateCustomXmlPartRequest('Sample.docx', 0, requestCustomXmlPart);
        await wordsApi.updateCustomXmlPart(updateRequest);
    }

    Future<void> updateCustomXmlPartOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestCustomXmlPart = CustomXmlPartUpdate();
        requestCustomXmlPart.data = '<data>Hello world</data>';
        final updateRequest = UpdateCustomXmlPartOnlineRequest(requestDocumentData, 0, requestCustomXmlPart);
        await wordsApi.updateCustomXmlPartOnline(updateRequest);
    }

    Future<void> updateDrawingObject() async
    {
        final wordsApi = WordsApi(config);
        final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
        final requestDrawingObject = DrawingObjectUpdate();
        requestDrawingObject.left = 0;
        final updateRequest = UpdateDrawingObjectRequest('Sample.docx', requestDrawingObject, requestImageFileData, 0);
        await wordsApi.updateDrawingObject(updateRequest);
    }

    Future<void> updateDrawingObjectOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestImageFileData = (await File("Common/aspose-cloud.png").readAsBytes()).buffer.asByteData();
        final requestDrawingObject = DrawingObjectUpdate();
        requestDrawingObject.left = 0;
        final updateRequest = UpdateDrawingObjectOnlineRequest(requestDocumentData, requestDrawingObject, requestImageFileData, 0, nodePath: '');
        await wordsApi.updateDrawingObjectOnline(updateRequest);
    }

    Future<void> updateField() async
    {
        final wordsApi = WordsApi(config);
        final requestField = FieldUpdate();
        requestField.fieldCode = '{ NUMPAGES }';
        final updateRequest = UpdateFieldRequest('Sample.docx', 0, requestField, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.updateField(updateRequest);
    }

    Future<void> updateFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/GetField.docx").readAsBytes()).buffer.asByteData();
        final requestField = FieldUpdate();
        requestField.fieldCode = '{ NUMPAGES }';
        final updateRequest = UpdateFieldOnlineRequest(requestDocumentData, requestField, 0, nodePath: 'sections/0/paragraphs/0');
        await wordsApi.updateFieldOnline(updateRequest);
    }

    Future<void> updateFields() async
    {
        final wordsApi = WordsApi(config);
        final updateRequest = UpdateFieldsRequest('Sample.docx');
        await wordsApi.updateFields(updateRequest);
    }

    Future<void> updateFieldsOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final updateRequest = UpdateFieldsOnlineRequest(requestDocumentData);
        await wordsApi.updateFieldsOnline(updateRequest);
    }

    Future<void> updateFootnote() async
    {
        final wordsApi = WordsApi(config);
        final requestFootnoteDto = FootnoteUpdate();
        requestFootnoteDto.text = 'new text is here';
        final updateRequest = UpdateFootnoteRequest('Sample.docx', 0, requestFootnoteDto);
        await wordsApi.updateFootnote(updateRequest);
    }

    Future<void> updateFootnoteOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/Footnote.doc").readAsBytes()).buffer.asByteData();
        final requestFootnoteDto = FootnoteUpdate();
        requestFootnoteDto.text = 'new text is here';
        final updateRequest = UpdateFootnoteOnlineRequest(requestDocumentData, requestFootnoteDto, 0, nodePath: '');
        await wordsApi.updateFootnoteOnline(updateRequest);
    }

    Future<void> updateFormField() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestFormField = FormFieldTextInput();
        requestFormField.name = 'FullName';
        requestFormField.enabled = true;
        requestFormField.calculateOnExit = true;
        requestFormField.statusText = '';
        requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
        requestFormField.textInputDefault = 'No name';
        final updateRequest = UpdateFormFieldRequest(remoteFileName, 0, requestFormField, destFileName: remoteFileName);
        await wordsApi.updateFormField(updateRequest);
    }

    Future<void> updateFormFieldOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/FormFilled.docx").readAsBytes()).buffer.asByteData();
        final requestFormField = FormFieldTextInput();
        requestFormField.name = 'FullName';
        requestFormField.enabled = true;
        requestFormField.calculateOnExit = true;
        requestFormField.statusText = '';
        requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
        requestFormField.textInputDefault = 'No name';
        final updateRequest = UpdateFormFieldOnlineRequest(requestDocumentData, requestFormField, 0, nodePath: 'sections/0');
        await wordsApi.updateFormFieldOnline(updateRequest);
    }

    Future<void> updateList() async
    {
        final wordsApi = WordsApi(config);
        final requestListUpdate = ListUpdate();
        requestListUpdate.isRestartAtEachSection = true;
        final updateRequest = UpdateListRequest('TestGetLists.doc', 1, requestListUpdate);
        await wordsApi.updateList(updateRequest);
    }

    Future<void> updateListLevel() async
    {
        final wordsApi = WordsApi(config);
        final requestListUpdate = ListLevelUpdate();
        requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;
        final updateRequest = UpdateListLevelRequest('TestGetLists.doc', 1, 1, requestListUpdate);
        await wordsApi.updateListLevel(updateRequest);
    }

    Future<void> updateListLevelOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
        final requestListUpdate = ListLevelUpdate();
        requestListUpdate.alignment = ListLevelUpdate_AlignmentEnum.right;
        final updateRequest = UpdateListLevelOnlineRequest(requestDocumentData, 1, requestListUpdate, 1);
        await wordsApi.updateListLevelOnline(updateRequest);
    }

    Future<void> updateListOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
        final requestListUpdate = ListUpdate();
        requestListUpdate.isRestartAtEachSection = true;
        final updateRequest = UpdateListOnlineRequest(requestDocumentData, 1, requestListUpdate);
        await wordsApi.updateListOnline(updateRequest);
    }

    Future<void> updateParagraphFormat() async
    {
        final wordsApi = WordsApi(config);
        final requestParagraphFormatDto = ParagraphFormatUpdate();
        requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;
        final updateRequest = UpdateParagraphFormatRequest('Sample.docx', 0, requestParagraphFormatDto, nodePath: '');
        await wordsApi.updateParagraphFormat(updateRequest);
    }

    Future<void> updateParagraphFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestParagraphFormatDto = ParagraphFormatUpdate();
        requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;
        final updateRequest = UpdateParagraphFormatOnlineRequest(requestDocumentData, requestParagraphFormatDto, 0, nodePath: '');
        await wordsApi.updateParagraphFormatOnline(updateRequest);
    }

    Future<void> updateParagraphListFormat() async
    {
        final wordsApi = WordsApi(config);
        final requestListFormatDto = ListFormatUpdate();
        requestListFormatDto.listId = 2;
        final updateRequest = UpdateParagraphListFormatRequest('Sample.docx', 0, requestListFormatDto);
        await wordsApi.updateParagraphListFormat(updateRequest);
    }

    Future<void> updateParagraphListFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("/ParagraphUpdateListFormat.doc").readAsBytes()).buffer.asByteData();
        final requestListFormatDto = ListFormatUpdate();
        requestListFormatDto.listId = 2;
        final updateRequest = UpdateParagraphListFormatOnlineRequest(requestDocumentData, requestListFormatDto, 0, nodePath: '');
        await wordsApi.updateParagraphListFormatOnline(updateRequest);
    }

    Future<void> updateRun() async
    {
        final wordsApi = WordsApi(config);
        final requestRun = RunUpdate();
        requestRun.text = 'run with text';
        final updateRequest = UpdateRunRequest('Sample.docx', 'paragraphs/1', 0, requestRun);
        await wordsApi.updateRun(updateRequest);
    }

    Future<void> updateRunFont() async
    {
        final wordsApi = WordsApi(config);
        final remoteFileName = 'Sample.docx';

        final requestFontDto = Font();
        requestFontDto.bold = true;
        final updateRequest = UpdateRunFontRequest(remoteFileName, 'paragraphs/0', 0, requestFontDto, destFileName: remoteFileName);
        await wordsApi.updateRunFont(updateRequest);
    }

    Future<void> updateRunFontOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestFontDto = Font();
        requestFontDto.bold = true;
        final updateRequest = UpdateRunFontOnlineRequest(requestDocumentData, 'paragraphs/0', requestFontDto, 0);
        await wordsApi.updateRunFontOnline(updateRequest);
    }

    Future<void> updateRunOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("DocumentElements/Runs/Run.doc").readAsBytes()).buffer.asByteData();
        final requestRun = RunUpdate();
        requestRun.text = 'run with text';
        final updateRequest = UpdateRunOnlineRequest(requestDocumentData, 'paragraphs/1', requestRun, 0);
        await wordsApi.updateRunOnline(updateRequest);
    }

    Future<void> updateSectionPageSetup() async
    {
        final wordsApi = WordsApi(config);
        final requestPageSetup = PageSetup();
        requestPageSetup.rtlGutter = true;
        requestPageSetup.leftMargin = 10.0;
        requestPageSetup.orientation = PageSetup_OrientationEnum.landscape;
        requestPageSetup.paperSize = PageSetup_PaperSizeEnum.a5;
        final updateRequest = UpdateSectionPageSetupRequest('Sample.docx', 0, requestPageSetup);
        await wordsApi.updateSectionPageSetup(updateRequest);
    }

    Future<void> updateSectionPageSetupOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestPageSetup = PageSetup();
        requestPageSetup.rtlGutter = true;
        requestPageSetup.leftMargin = 10;
        requestPageSetup.orientation = PageSetup_OrientationEnum.landscape;
        requestPageSetup.paperSize = PageSetup_PaperSizeEnum.a5;
        final updateRequest = UpdateSectionPageSetupOnlineRequest(requestDocumentData, 0, requestPageSetup);
        await wordsApi.updateSectionPageSetupOnline(updateRequest);
    }

    Future<void> updateStyle() async
    {
        final wordsApi = WordsApi(config);
        final requestStyleUpdate = StyleUpdate();
        requestStyleUpdate.name = 'My Style';
        final updateRequest = UpdateStyleRequest('Sample.docx', 'Heading 1', requestStyleUpdate);
        await wordsApi.updateStyle(updateRequest);
    }

    Future<void> updateStyleOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestStyleUpdate = StyleUpdate();
        requestStyleUpdate.name = 'My Style';
        final updateRequest = UpdateStyleOnlineRequest(requestDocumentData, 'Heading 1', requestStyleUpdate);
        await wordsApi.updateStyleOnline(updateRequest);
    }

    Future<void> updateTableCellFormat() async
    {
        final wordsApi = WordsApi(config);
        final requestFormat = TableCellFormat();
        requestFormat.bottomPadding = 5.0;
        requestFormat.fitText = true;
        requestFormat.horizontalMerge = TableCellFormat_HorizontalMergeEnum.first;
        requestFormat.wrapText = true;
        final updateRequest = UpdateTableCellFormatRequest('Sample.docx', 'sections/0/tables/2/rows/0', 0, requestFormat);
        await wordsApi.updateTableCellFormat(updateRequest);
    }

    Future<void> updateTableCellFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestFormat = TableCellFormat();
        requestFormat.bottomPadding = 5;
        requestFormat.fitText = true;
        requestFormat.horizontalMerge = TableCellFormat_HorizontalMergeEnum.first;
        requestFormat.wrapText = true;
        final updateRequest = UpdateTableCellFormatOnlineRequest(requestDocumentData, 'sections/0/tables/2/rows/0', requestFormat, 0);
        await wordsApi.updateTableCellFormatOnline(updateRequest);
    }

    Future<void> updateTableProperties() async
    {
        final wordsApi = WordsApi(config);
        final requestProperties = TableProperties();
        requestProperties.alignment = TableProperties_AlignmentEnum.right;
        requestProperties.allowAutoFit = false;
        requestProperties.bidi = true;
        requestProperties.bottomPadding = 1.0;
        requestProperties.cellSpacing = 2.0;
        requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;
        final updateRequest = UpdateTablePropertiesRequest('Sample.docx', 1, requestProperties);
        await wordsApi.updateTableProperties(updateRequest);
    }

    Future<void> updateTablePropertiesOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestProperties = TableProperties();
        requestProperties.alignment = TableProperties_AlignmentEnum.right;
        requestProperties.allowAutoFit = false;
        requestProperties.bidi = true;
        requestProperties.bottomPadding = 1;
        requestProperties.cellSpacing = 2;
        requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;
        final updateRequest = UpdateTablePropertiesOnlineRequest(requestDocumentData, requestProperties, 1, nodePath: '');
        await wordsApi.updateTablePropertiesOnline(updateRequest);
    }

    Future<void> updateTableRowFormat() async
    {
        final wordsApi = WordsApi(config);
        final requestFormat = TableRowFormat();
        requestFormat.allowBreakAcrossPages = true;
        requestFormat.headingFormat = true;
        requestFormat.height = 10.0;
        requestFormat.heightRule = TableRowFormat_HeightRuleEnum.exactly;
        final updateRequest = UpdateTableRowFormatRequest('Sample.docx', 'sections/0/tables/2', 0, requestFormat);
        await wordsApi.updateTableRowFormat(updateRequest);
    }

    Future<void> updateTableRowFormatOnline() async
    {
        final wordsApi = WordsApi(config);
        final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final requestFormat = TableRowFormat();
        requestFormat.allowBreakAcrossPages = true;
        requestFormat.headingFormat = true;
        requestFormat.height = 10;
        requestFormat.heightRule = TableRowFormat_HeightRuleEnum.auto;
        final updateRequest = UpdateTableRowFormatOnlineRequest(requestDocumentData, 'sections/0/tables/2', requestFormat, 0);
        await wordsApi.updateTableRowFormatOnline(updateRequest);
    }

    Future<void> uploadFile() async
    {
        final wordsApi = WordsApi(config);
        final requestFileContentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
        final uploadRequest = UploadFileRequest(requestFileContentData, 'Sample.docx');
        await wordsApi.uploadFile(uploadRequest);
    }
}