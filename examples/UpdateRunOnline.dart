final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestRun = RunUpdate();
requestRun.text = 'run with text';
final updateRequest = UpdateRunOnlineRequest(requestDocument, 'paragraphs/1', requestRun, 0);
await wordsApi.updateRunOnline(updateRequest);