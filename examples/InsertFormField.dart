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
requestFormField.textInputDefault = '123';
requestFormField.textInputFormat = 'UPPERCASE';
final insertRequest = InsertFormFieldRequest(remoteFileName, requestFormField, destFileName: remoteFileName);
await wordsApi.insertFormField(insertRequest);