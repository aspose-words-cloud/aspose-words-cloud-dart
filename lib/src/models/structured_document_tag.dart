/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="structured_document_tag.dart">
 *   Copyright (c) 2023 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

library aspose_words_cloud;

import '../../aspose_words_cloud.dart';

/// DTO container with a StructuredDocumentTag.
class StructuredDocumentTag extends NodeLink {
  /// Gets or sets Aspose.Words.Markup.SdtListItemCollection associated with this SDT.
  List<StructuredDocumentTagListItem?>? _listItems;

  List<StructuredDocumentTagListItem?>? get listItems => _listItems;
  set listItems(List<StructuredDocumentTagListItem?>? val) => _listItems = val;


  /// Gets or sets a value indicating whether current state of the Checkbox SDT. Default value for this property.
  bool? _checked;

  bool? get checked => _checked;
  set checked(bool? val) => _checked = val;


  /// Gets or sets the appearance of a structured document tag.
  StructuredDocumentTag_AppearanceEnum? _appearance;

  StructuredDocumentTag_AppearanceEnum? get appearance => _appearance;
  set appearance(StructuredDocumentTag_AppearanceEnum? val) => _appearance = val;


  /// Gets or sets the language format for the date displayed in this SDT.
  int? _dateDisplayLocale;

  int? get dateDisplayLocale => _dateDisplayLocale;
  set dateDisplayLocale(int? val) => _dateDisplayLocale = val;


  /// Gets or sets String that represents the format in which dates are displayed. Can not be null. The dates for English (U.S.) is "mm/dd/yyyy".
  String? _dateDisplayFormat;

  String? get dateDisplayFormat => _dateDisplayFormat;
  set dateDisplayFormat(String? val) => _dateDisplayFormat = val;


  /// Gets or sets the full date and time last entered into this SDT.
  DateTime? _fullDate;

  DateTime? get fullDate => _fullDate;
  set fullDate(DateTime? val) => _fullDate = val;


  /// Gets or sets the friendly name associated with this SDT. Can not be null.
  String? _title;

  String? get title => _title;
  set title(String? val) => _title = val;


  /// Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store.
  /// Default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime.
  StructuredDocumentTag_DateStorageFormatEnum? _dateStorageFormat;

  StructuredDocumentTag_DateStorageFormatEnum? get dateStorageFormat => _dateStorageFormat;
  set dateStorageFormat(StructuredDocumentTag_DateStorageFormatEnum? val) => _dateStorageFormat = val;


  /// Gets or sets type of building block for this SDT. Can not be null.
  String? _buildingBlockGallery;

  String? get buildingBlockGallery => _buildingBlockGallery;
  set buildingBlockGallery(String? val) => _buildingBlockGallery = val;


  /// Gets or sets category of building block for this SDT node. Can not be null.
  String? _buildingBlockCategory;

  String? get buildingBlockCategory => _buildingBlockCategory;
  set buildingBlockCategory(String? val) => _buildingBlockCategory = val;


  /// Gets or sets a value indicating whether this SDT allows multiple lines of text.
  bool? _multiline;

  bool? get multiline => _multiline;
  set multiline(bool? val) => _multiline = val;


  /// Gets or sets the color of the structured document tag.
  String? _color;

  String? get color => _color;
  set color(String? val) => _color = val;


  /// Gets or sets the name of the style applied to the structured document tag.
  String? _styleName;

  String? get styleName => _styleName;
  set styleName(String? val) => _styleName = val;


  /// Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default.
  StructuredDocumentTag_CalendarTypeEnum? _calendarType;

  StructuredDocumentTag_CalendarTypeEnum? get calendarType => _calendarType;
  set calendarType(StructuredDocumentTag_CalendarTypeEnum? val) => _calendarType = val;


  /// Gets or sets a value indicating whether this SDT shall be removed from the WordProcessingML document when its contents are modified.
  bool? _isTemporary;

  bool? get isTemporary => _isTemporary;
  set isTemporary(bool? val) => _isTemporary = val;


  /// Gets or sets the level at which this SDT occurs in the document tree.
  StructuredDocumentTag_LevelEnum? _level;

  StructuredDocumentTag_LevelEnum? get level => _level;
  set level(StructuredDocumentTag_LevelEnum? val) => _level = val;


  /// Gets or sets type of this Structured document tag.
  StructuredDocumentTag_SdtTypeEnum? _sdtType;

  StructuredDocumentTag_SdtTypeEnum? get sdtType => _sdtType;
  set sdtType(StructuredDocumentTag_SdtTypeEnum? val) => _sdtType = val;


  /// Gets or sets Name of the Aspose.Words.BuildingBlocks.BuildingBlock containing placeholder text.
  /// Aspose.Words.BuildingBlocks.BuildingBlock with this name Aspose.Words.BuildingBlocks.BuildingBlock.Name has to be present in the Aspose.Words.Document.GlossaryDocument otherwise System.InvalidOperationException will occur.
  String? _placeholderName;

  String? get placeholderName => _placeholderName;
  set placeholderName(String? val) => _placeholderName = val;


  /// Gets or sets a value indicating whether, this property will prohibit a user from deleting this SDT.
  bool? _lockContentControl;

  bool? get lockContentControl => _lockContentControl;
  set lockContentControl(bool? val) => _lockContentControl = val;


  /// Gets or sets a value indicating whether, this property will prohibit a user from editing the contents of this SDT.
  bool? _lockContents;

  bool? get lockContents => _lockContents;
  set lockContents(bool? val) => _lockContents = val;


  /// Gets or sets a value indicating whether the content of this SDT shall be interpreted to contain placeholder text (as opposed to regular text contents within the SDT).
  /// If set to true, this state shall be resumed (showing placeholder text) upon opening his document.
  bool? _isShowingPlaceholderText;

  bool? get isShowingPlaceholderText => _isShowingPlaceholderText;
  set isShowingPlaceholderText(bool? val) => _isShowingPlaceholderText = val;


  /// Gets or sets a tag associated with the current SDT node. Can not be null.
  String? _tag;

  String? get tag => _tag;
  set tag(String? val) => _tag = val;


  /// Gets or sets a unique read-only persistent numerical Id for this SDT.
  int? _id;

  int? get id => _id;
  set id(int? val) => _id = val;


  /// Gets a string that represents the XML contained within the node in the Aspose.Words.SaveFormat.FlatOpc format.
  String? _wordOpenXML;

  String? get wordOpenXML => _wordOpenXML;
  set wordOpenXML(String? val) => _wordOpenXML = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StructuredDocumentTag data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('ListItems')) {
      // Array processing
      listItems = <StructuredDocumentTagListItem>[];
      for(final _element in json['ListItems']) {
        listItems!.add(ModelBase.createInstance< StructuredDocumentTagListItem >(_element as Map<String, dynamic>));
      }
    } else {
      listItems = null;
    }

    if (json.containsKey('Checked')) {
      checked = json['Checked'] as bool;
    } else {
      checked = null;
    }

    if (json.containsKey('Appearance')) {
      switch (json['Appearance'] as String) {
        case 'Default': appearance = StructuredDocumentTag_AppearanceEnum.defaultValue; break;
        case 'BoundingBox': appearance = StructuredDocumentTag_AppearanceEnum.boundingBox; break;
        case 'Tags': appearance = StructuredDocumentTag_AppearanceEnum.tags; break;
        case 'Hidden': appearance = StructuredDocumentTag_AppearanceEnum.hidden; break;
        default: appearance = null; break;
      }
    } else {
      appearance = null;
    }

    if (json.containsKey('DateDisplayLocale')) {
      dateDisplayLocale = json['DateDisplayLocale'] as int;
    } else {
      dateDisplayLocale = null;
    }

    if (json.containsKey('DateDisplayFormat')) {
      dateDisplayFormat = json['DateDisplayFormat'] as String;
    } else {
      dateDisplayFormat = null;
    }

    if (json.containsKey('FullDate')) {
      fullDate = DateTime.parse(json['FullDate'] as String);
    } else {
      fullDate = null;
    }

    if (json.containsKey('Title')) {
      title = json['Title'] as String;
    } else {
      title = null;
    }

    if (json.containsKey('DateStorageFormat')) {
      switch (json['DateStorageFormat'] as String) {
        case 'Date': dateStorageFormat = StructuredDocumentTag_DateStorageFormatEnum.date; break;
        case 'DateTime': dateStorageFormat = StructuredDocumentTag_DateStorageFormatEnum.dateTime; break;
        case 'Default': dateStorageFormat = StructuredDocumentTag_DateStorageFormatEnum.defaultValue; break;
        case 'Text': dateStorageFormat = StructuredDocumentTag_DateStorageFormatEnum.text; break;
        default: dateStorageFormat = null; break;
      }
    } else {
      dateStorageFormat = null;
    }

    if (json.containsKey('BuildingBlockGallery')) {
      buildingBlockGallery = json['BuildingBlockGallery'] as String;
    } else {
      buildingBlockGallery = null;
    }

    if (json.containsKey('BuildingBlockCategory')) {
      buildingBlockCategory = json['BuildingBlockCategory'] as String;
    } else {
      buildingBlockCategory = null;
    }

    if (json.containsKey('Multiline')) {
      multiline = json['Multiline'] as bool;
    } else {
      multiline = null;
    }

    if (json.containsKey('Color')) {
      color = json['Color'] as String;
    } else {
      color = null;
    }

    if (json.containsKey('StyleName')) {
      styleName = json['StyleName'] as String;
    } else {
      styleName = null;
    }

    if (json.containsKey('CalendarType')) {
      switch (json['CalendarType'] as String) {
        case 'Default': calendarType = StructuredDocumentTag_CalendarTypeEnum.defaultValue; break;
        case 'Gregorian': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorian; break;
        case 'GregorianArabic': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorianArabic; break;
        case 'GregorianMeFrench': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorianMeFrench; break;
        case 'GregorianUs': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorianUs; break;
        case 'GregorianXlitEnglish': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorianXlitEnglish; break;
        case 'GregorianXlitFrench': calendarType = StructuredDocumentTag_CalendarTypeEnum.gregorianXlitFrench; break;
        case 'Hebrew': calendarType = StructuredDocumentTag_CalendarTypeEnum.hebrew; break;
        case 'Hijri': calendarType = StructuredDocumentTag_CalendarTypeEnum.hijri; break;
        case 'Japan': calendarType = StructuredDocumentTag_CalendarTypeEnum.japan; break;
        case 'Korea': calendarType = StructuredDocumentTag_CalendarTypeEnum.korea; break;
        case 'None': calendarType = StructuredDocumentTag_CalendarTypeEnum.none; break;
        case 'Saka': calendarType = StructuredDocumentTag_CalendarTypeEnum.saka; break;
        case 'Taiwan': calendarType = StructuredDocumentTag_CalendarTypeEnum.taiwan; break;
        case 'Thai': calendarType = StructuredDocumentTag_CalendarTypeEnum.thai; break;
        default: calendarType = null; break;
      }
    } else {
      calendarType = null;
    }

    if (json.containsKey('IsTemporary')) {
      isTemporary = json['IsTemporary'] as bool;
    } else {
      isTemporary = null;
    }

    if (json.containsKey('Level')) {
      switch (json['Level'] as String) {
        case 'Unknown': level = StructuredDocumentTag_LevelEnum.unknown; break;
        case 'Inline': level = StructuredDocumentTag_LevelEnum.inline; break;
        case 'Block': level = StructuredDocumentTag_LevelEnum.block; break;
        case 'Row': level = StructuredDocumentTag_LevelEnum.row; break;
        case 'Cell': level = StructuredDocumentTag_LevelEnum.cell; break;
        default: level = null; break;
      }
    } else {
      level = null;
    }

    if (json.containsKey('SdtType')) {
      switch (json['SdtType'] as String) {
        case 'None': sdtType = StructuredDocumentTag_SdtTypeEnum.none; break;
        case 'Bibliography': sdtType = StructuredDocumentTag_SdtTypeEnum.bibliography; break;
        case 'Citation': sdtType = StructuredDocumentTag_SdtTypeEnum.citation; break;
        case 'Equation': sdtType = StructuredDocumentTag_SdtTypeEnum.equation; break;
        case 'DropDownList': sdtType = StructuredDocumentTag_SdtTypeEnum.dropDownList; break;
        case 'ComboBox': sdtType = StructuredDocumentTag_SdtTypeEnum.comboBox; break;
        case 'Date': sdtType = StructuredDocumentTag_SdtTypeEnum.date; break;
        case 'BuildingBlockGallery': sdtType = StructuredDocumentTag_SdtTypeEnum.buildingBlockGallery; break;
        case 'DocPartObj': sdtType = StructuredDocumentTag_SdtTypeEnum.docPartObj; break;
        case 'Group': sdtType = StructuredDocumentTag_SdtTypeEnum.group; break;
        case 'Picture': sdtType = StructuredDocumentTag_SdtTypeEnum.picture; break;
        case 'RichText': sdtType = StructuredDocumentTag_SdtTypeEnum.richText; break;
        case 'PlainText': sdtType = StructuredDocumentTag_SdtTypeEnum.plainText; break;
        case 'Checkbox': sdtType = StructuredDocumentTag_SdtTypeEnum.checkbox; break;
        case 'RepeatingSection': sdtType = StructuredDocumentTag_SdtTypeEnum.repeatingSection; break;
        case 'RepeatingSectionItem': sdtType = StructuredDocumentTag_SdtTypeEnum.repeatingSectionItem; break;
        case 'EntityPicker': sdtType = StructuredDocumentTag_SdtTypeEnum.entityPicker; break;
        default: sdtType = null; break;
      }
    } else {
      sdtType = null;
    }

    if (json.containsKey('PlaceholderName')) {
      placeholderName = json['PlaceholderName'] as String;
    } else {
      placeholderName = null;
    }

    if (json.containsKey('LockContentControl')) {
      lockContentControl = json['LockContentControl'] as bool;
    } else {
      lockContentControl = null;
    }

    if (json.containsKey('LockContents')) {
      lockContents = json['LockContents'] as bool;
    } else {
      lockContents = null;
    }

    if (json.containsKey('IsShowingPlaceholderText')) {
      isShowingPlaceholderText = json['IsShowingPlaceholderText'] as bool;
    } else {
      isShowingPlaceholderText = null;
    }

    if (json.containsKey('Tag')) {
      tag = json['Tag'] as String;
    } else {
      tag = null;
    }

    if (json.containsKey('Id')) {
      id = json['Id'] as int;
    } else {
      id = null;
    }

    if (json.containsKey('WordOpenXML')) {
      wordOpenXML = json['WordOpenXML'] as String;
    } else {
      wordOpenXML = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (listItems != null) {
      _result['ListItems'] = listItems!.map((_element) => _element?.serialize()).toList();
    }

    if (checked != null) {
      _result['Checked'] = checked!;
    }

    if (appearance != null) {
      switch (appearance!) {
        case StructuredDocumentTag_AppearanceEnum.defaultValue: _result['Appearance'] = 'Default'; break;
        case StructuredDocumentTag_AppearanceEnum.boundingBox: _result['Appearance'] = 'BoundingBox'; break;
        case StructuredDocumentTag_AppearanceEnum.tags: _result['Appearance'] = 'Tags'; break;
        case StructuredDocumentTag_AppearanceEnum.hidden: _result['Appearance'] = 'Hidden'; break;
        default: break;
      }
    }

    if (dateDisplayLocale != null) {
      _result['DateDisplayLocale'] = dateDisplayLocale!;
    }

    if (dateDisplayFormat != null) {
      _result['DateDisplayFormat'] = dateDisplayFormat!;
    }

    if (fullDate != null) {
      _result['FullDate'] = fullDate!.toIso8601String();
    }

    if (title != null) {
      _result['Title'] = title!;
    }

    if (dateStorageFormat != null) {
      switch (dateStorageFormat!) {
        case StructuredDocumentTag_DateStorageFormatEnum.date: _result['DateStorageFormat'] = 'Date'; break;
        case StructuredDocumentTag_DateStorageFormatEnum.dateTime: _result['DateStorageFormat'] = 'DateTime'; break;
        case StructuredDocumentTag_DateStorageFormatEnum.defaultValue: _result['DateStorageFormat'] = 'Default'; break;
        case StructuredDocumentTag_DateStorageFormatEnum.text: _result['DateStorageFormat'] = 'Text'; break;
        default: break;
      }
    }

    if (buildingBlockGallery != null) {
      _result['BuildingBlockGallery'] = buildingBlockGallery!;
    }

    if (buildingBlockCategory != null) {
      _result['BuildingBlockCategory'] = buildingBlockCategory!;
    }

    if (multiline != null) {
      _result['Multiline'] = multiline!;
    }

    if (color != null) {
      _result['Color'] = color!;
    }

    if (styleName != null) {
      _result['StyleName'] = styleName!;
    }

    if (calendarType != null) {
      switch (calendarType!) {
        case StructuredDocumentTag_CalendarTypeEnum.defaultValue: _result['CalendarType'] = 'Default'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorian: _result['CalendarType'] = 'Gregorian'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorianArabic: _result['CalendarType'] = 'GregorianArabic'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorianMeFrench: _result['CalendarType'] = 'GregorianMeFrench'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorianUs: _result['CalendarType'] = 'GregorianUs'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorianXlitEnglish: _result['CalendarType'] = 'GregorianXlitEnglish'; break;
        case StructuredDocumentTag_CalendarTypeEnum.gregorianXlitFrench: _result['CalendarType'] = 'GregorianXlitFrench'; break;
        case StructuredDocumentTag_CalendarTypeEnum.hebrew: _result['CalendarType'] = 'Hebrew'; break;
        case StructuredDocumentTag_CalendarTypeEnum.hijri: _result['CalendarType'] = 'Hijri'; break;
        case StructuredDocumentTag_CalendarTypeEnum.japan: _result['CalendarType'] = 'Japan'; break;
        case StructuredDocumentTag_CalendarTypeEnum.korea: _result['CalendarType'] = 'Korea'; break;
        case StructuredDocumentTag_CalendarTypeEnum.none: _result['CalendarType'] = 'None'; break;
        case StructuredDocumentTag_CalendarTypeEnum.saka: _result['CalendarType'] = 'Saka'; break;
        case StructuredDocumentTag_CalendarTypeEnum.taiwan: _result['CalendarType'] = 'Taiwan'; break;
        case StructuredDocumentTag_CalendarTypeEnum.thai: _result['CalendarType'] = 'Thai'; break;
        default: break;
      }
    }

    if (isTemporary != null) {
      _result['IsTemporary'] = isTemporary!;
    }

    if (level != null) {
      switch (level!) {
        case StructuredDocumentTag_LevelEnum.unknown: _result['Level'] = 'Unknown'; break;
        case StructuredDocumentTag_LevelEnum.inline: _result['Level'] = 'Inline'; break;
        case StructuredDocumentTag_LevelEnum.block: _result['Level'] = 'Block'; break;
        case StructuredDocumentTag_LevelEnum.row: _result['Level'] = 'Row'; break;
        case StructuredDocumentTag_LevelEnum.cell: _result['Level'] = 'Cell'; break;
        default: break;
      }
    }

    if (sdtType != null) {
      switch (sdtType!) {
        case StructuredDocumentTag_SdtTypeEnum.none: _result['SdtType'] = 'None'; break;
        case StructuredDocumentTag_SdtTypeEnum.bibliography: _result['SdtType'] = 'Bibliography'; break;
        case StructuredDocumentTag_SdtTypeEnum.citation: _result['SdtType'] = 'Citation'; break;
        case StructuredDocumentTag_SdtTypeEnum.equation: _result['SdtType'] = 'Equation'; break;
        case StructuredDocumentTag_SdtTypeEnum.dropDownList: _result['SdtType'] = 'DropDownList'; break;
        case StructuredDocumentTag_SdtTypeEnum.comboBox: _result['SdtType'] = 'ComboBox'; break;
        case StructuredDocumentTag_SdtTypeEnum.date: _result['SdtType'] = 'Date'; break;
        case StructuredDocumentTag_SdtTypeEnum.buildingBlockGallery: _result['SdtType'] = 'BuildingBlockGallery'; break;
        case StructuredDocumentTag_SdtTypeEnum.docPartObj: _result['SdtType'] = 'DocPartObj'; break;
        case StructuredDocumentTag_SdtTypeEnum.group: _result['SdtType'] = 'Group'; break;
        case StructuredDocumentTag_SdtTypeEnum.picture: _result['SdtType'] = 'Picture'; break;
        case StructuredDocumentTag_SdtTypeEnum.richText: _result['SdtType'] = 'RichText'; break;
        case StructuredDocumentTag_SdtTypeEnum.plainText: _result['SdtType'] = 'PlainText'; break;
        case StructuredDocumentTag_SdtTypeEnum.checkbox: _result['SdtType'] = 'Checkbox'; break;
        case StructuredDocumentTag_SdtTypeEnum.repeatingSection: _result['SdtType'] = 'RepeatingSection'; break;
        case StructuredDocumentTag_SdtTypeEnum.repeatingSectionItem: _result['SdtType'] = 'RepeatingSectionItem'; break;
        case StructuredDocumentTag_SdtTypeEnum.entityPicker: _result['SdtType'] = 'EntityPicker'; break;
        default: break;
      }
    }

    if (placeholderName != null) {
      _result['PlaceholderName'] = placeholderName!;
    }

    if (lockContentControl != null) {
      _result['LockContentControl'] = lockContentControl!;
    }

    if (lockContents != null) {
      _result['LockContents'] = lockContents!;
    }

    if (isShowingPlaceholderText != null) {
      _result['IsShowingPlaceholderText'] = isShowingPlaceholderText!;
    }

    if (tag != null) {
      _result['Tag'] = tag!;
    }

    if (id != null) {
      _result['Id'] = id!;
    }

    if (wordOpenXML != null) {
      _result['WordOpenXML'] = wordOpenXML!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }
}

/// Gets or sets the appearance of a structured document tag.
enum StructuredDocumentTag_AppearanceEnum
{ 
  defaultValue,
  boundingBox,
  tags,
  hidden
}

/// Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store.
/// Default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime.
enum StructuredDocumentTag_DateStorageFormatEnum
{ 
  date,
  dateTime,
  defaultValue,
  text
}

/// Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default.
enum StructuredDocumentTag_CalendarTypeEnum
{ 
  defaultValue,
  gregorian,
  gregorianArabic,
  gregorianMeFrench,
  gregorianUs,
  gregorianXlitEnglish,
  gregorianXlitFrench,
  hebrew,
  hijri,
  japan,
  korea,
  none,
  saka,
  taiwan,
  thai
}

/// Gets or sets the level at which this SDT occurs in the document tree.
enum StructuredDocumentTag_LevelEnum
{ 
  unknown,
  inline,
  block,
  row,
  cell
}

/// Gets or sets type of this Structured document tag.
enum StructuredDocumentTag_SdtTypeEnum
{ 
  none,
  bibliography,
  citation,
  equation,
  dropDownList,
  comboBox,
  date,
  buildingBlockGallery,
  docPartObj,
  group,
  picture,
  richText,
  plainText,
  checkbox,
  repeatingSection,
  repeatingSectionItem,
  entityPicker
}

