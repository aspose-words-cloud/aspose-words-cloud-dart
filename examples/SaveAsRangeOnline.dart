final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocument = (await File('Sample.doc').readAsBytes()).buffer.asByteData();
final requestDocumentParameters = RangeDocument();
requestDocumentParameters.documentName = '/NewDoc.docx';
final saveRequest = SaveAsRangeOnlineRequest(requestDocument, 'id0.0.0', requestDocumentParameters, rangeEndIdentifier: 'id0.0.1');
await wordsApi.saveAsRangeOnline(saveRequest);