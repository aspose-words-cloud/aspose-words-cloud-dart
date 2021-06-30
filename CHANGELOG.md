## [21.6.0] - Aspose Words Cloud for Dart 21.6 Release Notes

- Implemented beta version of CompareDocumentOnline feature with both document sending in request.
- CompareDocument method now can handle PDF files


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
