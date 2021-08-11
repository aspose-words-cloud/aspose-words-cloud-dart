final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentParameters = RangeDocument();
requestDocumentParameters.documentName = '/NewDoc.docx';
final saveRequest = SaveAsRangeRequest('Sample.docx', 'id0.0.0', requestDocumentParameters, rangeEndIdentifier: 'id0.0.1');
await wordsApi.saveAsRange(saveRequest);