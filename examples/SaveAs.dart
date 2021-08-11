final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestSaveOptionsData = SaveOptionsData();
requestSaveOptionsData.saveFormat = 'docx';
requestSaveOptionsData.fileName = '/TestSaveAsFromPdfToDoc.docx';
final saveRequest = SaveAsRequest('Sample.docx', requestSaveOptionsData);
await wordsApi.saveAs(saveRequest);