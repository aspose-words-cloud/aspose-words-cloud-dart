final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestPageSetup = PageSetup();
requestPageSetup.rtlGutter = true;
requestPageSetup.leftMargin = 10.0;
requestPageSetup.orientation = PageSetup_OrientationEnum.landscape;
requestPageSetup.paperSize = PageSetup_PaperSizeEnum.a5;
final updateRequest = UpdateSectionPageSetupRequest('Sample.docx', 0, requestPageSetup);
await wordsApi.updateSectionPageSetup(updateRequest);