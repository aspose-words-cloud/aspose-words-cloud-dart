final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final requestRun = RunInsert();
requestRun.text = 'run with text';
final insertRequest = InsertRunOnlineRequest(requestDocumentData, 'paragraphs/1', requestRun);
await wordsApi.insertRunOnline(insertRequest);