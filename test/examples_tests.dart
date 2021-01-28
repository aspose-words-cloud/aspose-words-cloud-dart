import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

class ExamplesTests
{
    final Configuration config;

    ExamplesTests(final this.config);

    Future<void> init() async
    {
        Directory.current = Directory.current.path + '/examples_data';
        final api = WordsApi(config);
        await api.uploadFile(UploadFileRequest(
            (await File('test_doc.docx').readAsBytes()).buffer.asByteData(),
            'test_doc.docx'
        ));
    }

    Future<void> acceptAllRevisions() async
    {
        final wordsApi = WordsApi(config);
        final fileName  = 'test_doc.docx';

        // Upload original document to cloud storage.
        final fileContentData = (await File(fileName).readAsBytes()).buffer.asByteData();
        final uploadFileRequest = UploadFileRequest(fileContentData, fileName);
        await wordsApi.uploadFile(uploadFileRequest);

        // Calls AcceptAllRevisions method for document in cloud.
        final request = AcceptAllRevisionsRequest(fileName);
        await wordsApi.acceptAllRevisions(request);
    }

    Future<void> acceptAllRevisions2() async
    {
        final wordsApi = WordsApi(config);
        final fileName  = 'test_doc.docx';

        // Calls AcceptAllRevisions method for document in cloud.
        final request = AcceptAllRevisionsRequest(fileName);
        await wordsApi.acceptAllRevisions(request);
    }
}