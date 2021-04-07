final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final fileName  = 'test_doc.docx';

// Calls AcceptAllRevisionsOnline method for document in cloud.
final documentData = (await File(fileName).readAsBytes()).buffer.asByteData();
final request = AcceptAllRevisionsOnlineRequest(documentData);
final acceptAllRevisionsOnlineResult = await wordsApi.acceptAllRevisionsOnline(request);
await File('test_result.docx').writeAsBytes(
    acceptAllRevisionsOnlineResult.document.buffer.asUint8List(acceptAllRevisionsOnlineResult.document.offsetInBytes, acceptAllRevisionsOnlineResult.document.lengthInBytes)
);