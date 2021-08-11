final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestRun = RunInsert();
requestRun.text = 'run with text';
final insertRequest = InsertRunRequest('Sample.docx', 'paragraphs/1', requestRun);
await wordsApi.insertRun(insertRequest);