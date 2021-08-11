final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestReportEngineSettingsReportBuildOptions = [
  ReportBuildOptionsEnum.allowMissingMembers,
ReportBuildOptionsEnum.removeEmptyParagraphs];
final requestReportEngineSettings = ReportEngineSettings();
requestReportEngineSettings.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json;
requestReportEngineSettings.reportBuildOptions = requestReportEngineSettingsReportBuildOptions;
final buildReportRequest = BuildReportRequest('Sample.docx', 'Data.json', requestReportEngineSettings);
await wordsApi.buildReport(buildReportRequest);