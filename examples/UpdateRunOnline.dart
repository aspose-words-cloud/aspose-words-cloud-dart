final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("DocumentElements/Runs/Run.doc").readAsBytes()).buffer.asByteData();
final requestRun = RunUpdate();
requestRun.text = 'run with text';
final updateRequest = UpdateRunOnlineRequest(requestDocumentData, 'paragraphs/1', requestRun, 0);
await wordsApi.updateRunOnline(updateRequest);