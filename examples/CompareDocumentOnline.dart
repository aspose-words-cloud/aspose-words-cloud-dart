final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestDocumentData = (await File("compareTestDoc1.doc").readAsBytes()).buffer.asByteData();
final requestComparingDocumentData = (await File("compareTestDoc2.doc").readAsBytes()).buffer.asByteData();
final requestCompareData = CompareData();
requestCompareData.author = 'author';
requestCompareData.comparingWithDocument = 'TestCompareDocument2.doc';
requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
final compareRequest = CompareDocumentOnlineRequest(requestDocumentData, requestCompareData, comparingDocument: requestComparingDocumentData, destFileName: '/TestCompareDocumentOut.doc');
await wordsApi.compareDocumentOnline(compareRequest);