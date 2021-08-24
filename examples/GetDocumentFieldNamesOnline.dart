final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestTemplate = (await File('Sample.docx').readAsBytes()).buffer.asByteData();
final request = GetDocumentFieldNamesOnlineRequest(requestTemplate, useNonMergeFields: true);
await wordsApi.getDocumentFieldNamesOnline(request);