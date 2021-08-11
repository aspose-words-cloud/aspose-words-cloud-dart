final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("DocumentElements/HeaderFooters/HeadersFooters.doc").readAsBytes()).buffer.asByteData();
final deleteRequest = DeleteHeadersFootersOnlineRequest(requestDocumentData, '');
await wordsApi.deleteHeadersFootersOnline(deleteRequest);