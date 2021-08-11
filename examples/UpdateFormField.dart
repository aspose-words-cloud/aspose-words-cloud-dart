final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final remoteFileName = 'Sample.docx';

final requestFormField = FormFieldTextInput();
requestFormField.name = 'FullName';
requestFormField.enabled = true;
requestFormField.calculateOnExit = true;
requestFormField.statusText = '';
requestFormField.textInputType = FormFieldTextInput_TextInputTypeEnum.regular;
requestFormField.textInputDefault = 'No name';
final updateRequest = UpdateFormFieldRequest(remoteFileName, 0, requestFormField, destFileName: remoteFileName);
await wordsApi.updateFormField(updateRequest);