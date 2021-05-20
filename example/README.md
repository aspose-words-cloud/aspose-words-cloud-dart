```dart
// Import dependencies
import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'dart:convert';
import 'dart:io';

// Configure words api client
var configuration = Configuration('ClientId', 'ClientSecret');
var wordsApi = WordsApi(configuration);

// Upload file to cloud
var localFileContent = await (File('./test_data/Common/test_doc.docx').readAsBytes());
var uploadRequest = UploadFileRequest(ByteData.view(localFileContent.buffer), 'fileStoredInCloud.docx');
await wordsApi.uploadFile(uploadRequest);

// Save file as pdf in cloud
var saveOptionsData = SaveOptionsData()
  ..saveFormat = 'pdf'
  ..fileName = 'destStoredInCloud.pdf';
var saveAsRequest = SaveAsRequest('fileStoredInCloud.docx', saveOptionsData);
await wordsApi.saveAs(saveAsRequest);
```