final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("DocumentElements/Lists/ListsGet.doc").readAsBytes()).buffer.asByteData();
final request = GetListOnlineRequest(requestDocumentData, 1);
await wordsApi.getListOnline(request);