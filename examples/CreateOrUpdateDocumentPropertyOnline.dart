final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("Sample.docx").readAsBytes()).buffer.asByteData();
final requestProperty = DocumentPropertyCreateOrUpdate();
requestProperty.value = 'Imran Anwar';
final createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(requestDocumentData, 'AsposeAuthor', requestProperty);
await wordsApi.createOrUpdateDocumentPropertyOnline(createRequest);