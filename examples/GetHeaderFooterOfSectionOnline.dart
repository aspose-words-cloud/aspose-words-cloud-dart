final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.doc").readAsBytes()).buffer.asByteData();
final request = GetHeaderFooterOfSectionOnlineRequest(requestDocumentData, 0, 0);
await wordsApi.getHeaderFooterOfSectionOnline(request);