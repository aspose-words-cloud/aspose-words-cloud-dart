final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestTemplateData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final request = GetDocumentFieldNamesOnlineRequest(requestTemplateData, useNonMergeFields: true);
await wordsApi.getDocumentFieldNamesOnline(request);