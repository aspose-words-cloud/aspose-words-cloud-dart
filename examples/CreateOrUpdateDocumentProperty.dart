final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestProperty = DocumentPropertyCreateOrUpdate();
requestProperty.value = 'Imran Anwar';
final createRequest = CreateOrUpdateDocumentPropertyRequest(remoteFileName, 'AsposeAuthor', requestProperty, destFileName: remoteFileName);
await wordsApi.createOrUpdateDocumentProperty(createRequest);