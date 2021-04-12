import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final fileName  = 'test_doc.docx';

// Upload original document to cloud storage.
final fileContentData = (await File(fileName).readAsBytes()).buffer.asByteData();
final uploadFileRequest = UploadFileRequest(fileContentData, fileName);
await wordsApi.uploadFile(uploadFileRequest);

// Calls AcceptAllRevisions method for document in cloud.
final request = AcceptAllRevisionsRequest(fileName);
await wordsApi.acceptAllRevisions(request);