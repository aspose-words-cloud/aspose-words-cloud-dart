final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestFormat = TableRowFormat();
requestFormat.allowBreakAcrossPages = true;
requestFormat.headingFormat = true;
requestFormat.height = 10.0;
requestFormat.heightRule = TableRowFormat_HeightRuleEnum.exactly;
final updateRequest = UpdateTableRowFormatRequest('Sample.docx', 'sections/0/tables/2', 0, requestFormat);
await wordsApi.updateTableRowFormat(updateRequest);