final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestProperty = DocumentPropertyCreateOrUpdate();
requestProperty.value = 'Imran Anwar';
final createRequest = CreateOrUpdateDocumentPropertyRequest('Sample.docx', 'AsposeAuthor', requestProperty);
await wordsApi.createOrUpdateDocumentProperty(createRequest);