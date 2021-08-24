final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestRun = RunInsert();
requestRun.text = 'run with text';
final insertRequest = InsertRunOnlineRequest(requestDocument, 'paragraphs/1', requestRun);
await wordsApi.insertRunOnline(insertRequest);