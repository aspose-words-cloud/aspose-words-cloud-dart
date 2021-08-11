final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestRun = RunUpdate();
requestRun.text = 'run with text';
final updateRequest = UpdateRunRequest('Sample.docx', 'paragraphs/1', 0, requestRun);
await wordsApi.updateRun(updateRequest);