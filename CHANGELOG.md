## [22.3.0] - Aspose Words Cloud for Dart 22.3 Release Notes

- Online methods returns the dictionary of files with included original filename as key instead of single file content in responses.
- Parameters contained sensitive data should be passed in encrypted form. Names of the parameters have 'encrypted' prefix.
- Added Encrypt method to encrypt data on the API public key. Use it to prepare values for parameters required encrypted data.
- GetPublicKey method is not billable.


## [22.2.0] - Aspose Words Cloud for Dart 22.2 Release Notes

- Made 'SaveOprionsData.SaveFormat' property readonly with default value.
- Added subclasses for all formats of SaveOprionsData with specified SaveFormat.
- 'SaveOptionsData', 'FixedPageSaveOptionsData', 'ImageSaveOptionsData', 'OoxmlSaveOptionsData', 'TxtSaveOptionsBaseData' classes now is abstract.


## [22.1.0] - Aspose Words Cloud for Dart 22.1 Release Notes

- Added 'FieldOptions.FieldUpdateCultureName' to set Culture for fields
- Added 'DocumentEntry.Password' to set an encrypted password for appending document
- Added 'encryptedPassword2' query parameter to CompareDocuments to set an encrypted password for the second comparing document


## [21.12.0] - Aspose Words Cloud for Dart 21.12 Release Notes

- Added FieldOptions parameter to mail merge operations
- Added timeout parameter to api configuration


## [21.11.0] - Aspose Words Cloud for Dart 21.11 Release Notes

- Support encryption of 'CommonRequest.Password'. Automatic encryption of all passwords sent to the API server as request parameters.

## [21.10.0] - Aspose Words Cloud for Dart 21.10 Release Notes

- Removed 'GraphicsQualityOptions' image save option as it no longer supported.
- Added query parameter 'displayIntermediateResults' for batch requests. If 'false', the last response in batch will be returned only. Default is 'true'
- Added 'JsonDataLoadOptions' and 'XmlDataLoadOptions' to 'ReportEngineSettings'


## [21.8.0] - Aspose Words Cloud for Dart 21.8 Release Notes

- Added new api methods to get, insert, update or delete custom xml parts from documents.
- Added parameter 'ResultDocumentFormat' to Compare API
- Added 'ExportLanguageToSpanTag' pdf save option
- Added 'FlatOpcXmlMappingOnly' save option


## [21.7.0] - Aspose Words Cloud for Dart 21.7 Release Notes

- ImlRenderingMode option introduced witch is used to determine how ink (InkML) objects are rendered
- MaxCharactersPerLine option introduced which is used to specify the maximum number of characters per one line
- Added new API method to get a RSA public key to encrypt document passwords
- Added encryptedPassword common query option to pass an encrypted document password


## [21.6.0] - Aspose Words Cloud for Dart 21.6 Release Notes

- Implemented beta version of CompareDocumentOnline feature with both document sending in request
- CompareDocument method now can handle PDF files
- AcceptAllRevisionsBeforeComparison option introduced which is used to specify if accept all revisions before comparison


## [21.5.0] - Aspose Words Cloud for Dart 21.5 Release Notes

- Update dependencies in sdk


## [21.4.0] - Aspose Words Cloud for Dart 21.4 Release Notes

- Removed obsolete pdf save option 'EscapeUri'
- SaveOptions now contains CustomTimeZoneInfo to set custom timezone when SdtType.Date structured document tag updated from custom XML
- Url of child requests in batch can be full now (earlier it can be only relative)
- Added 'RquestId' header to all responses
- Support batch requests
- Added DependsOn and ResultOf features support for batch requests

## [21.3.0] - Aspose Words Cloud for Dart 21.3 Release Notes

- Added 'UpdateCreatedTimeProperty' save option
- Added Tables into HeaderFooter so it's possible to address paragraphs inside table which is located in headerfooter (sections/0/headersfooters/1/tables/0/rows/0/cells/0/paragraphs/0)


## [21.2.0] - Aspose Words Cloud for Dart 21.2 Release Notes

- Added delete all comments method


## [21.1.0] - Aspose Words Cloud for Dart 21.1 Release Notes

- Added online version for all API methods


## [20.11.0] - Aspose Words Cloud for Dart 20.11 Release Notes

- In configuration json file appSid / appKey has been replaced to clientId / clientSecret.
- In Words API initialization methods clientId parameter precedes clientSecret parameter.


## [20.10.0] - Aspose Words Cloud for Dart 20.10 Release Notes

- Internal API changes.
- First released version of Dart SDK.

## [20.9.0] - Aspose Words Cloud for Dart 20.9 Release Notes

- Added Batch API feature


## [20.8.0] - Aspose Words Cloud for Dart 20.8 Release Notes

- Added new api method (PUT '/words/{name}/compatibility/optimize') which is allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word
- Added 'ApplyBaseDocumentHeadersAndFootersToAppendingDocuments' option to 'DocumentEntryList' for AppendDocument API
- WithoutNodePath methods have been removed, pass null values instead


## [20.7.0] - Aspose Words Cloud for Dart 20.7 Release Notes

- Added 'Markdown' save format
- Added endpoint to update paragraph format without node path (PUT '/words/{name}/paragraphs/{index}/format')


## [20.6.0] - Aspose Words Cloud for Dart 20.6 Release Notes

- Added new methods:
  - DeleteAllParagraphTabStopsWithoutNodePath
  - DeleteParagraphTabStopWithoutNodePath
  - GetParagraphTabStopsWithoutNodePath
  - InsertOrUpdateParagraphTabStopWithoutNodePath
  - InsertParagraphWithoutNodePath
  - UpdateParagraphFormatWithoutNodePath
  - UpdateParagraphListFormatWithoutNodePath
  - DeleteParagraphListFormatWithoutNodePath
- DrawingObject related methods have been changed body content. Special request classes are introduced instead of strings.
- InsertOrUpdateParagraphTabStop, DeleteParagraphTabStop methods have been changed parameter order
- OoxmlSaveOptionsData.CompressionLevel property has been added


## [20.5.0] - Aspose Words Cloud for Dart 20.5 Release Notes

- Added methods to work with Word document lists
  - GetLists
  - GetList
  - InsertList
  - UpdateList
  - UpdateListLevel
- Added methods to work with styles
  - GetStyles
  - UpdateStyle
  - InsertStyle
  - CopyStyle
  - GetStyleFromDocumentElement
  - ApplyStyleToDocumentElement
- Added methods to work with paragraph list format
  - GetParagraphListFormat
  - GetParagraphListFormatWithoutNodePath
  - UpdateParagraphListFormat
  - DeleteParagraphListFormat
- Added methods to work with paragraph tab stops
  - GetParagraphTabStops
  - InsertOrUpdateParagraphTabStop
  - DeleteAllParagraphTabStops
  - DeleteParagraphTabStop
- Added methods to build reports
  - BuildReport
  - BuildReportOnline
- Added Shading property to ParagraphFormat
