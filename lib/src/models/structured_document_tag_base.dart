/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="structured_document_tag_base.dart">
 *   Copyright (c) 2026 Aspose.Words for Cloud
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

/// DTO container with a StructuredDocumentTagBaseDto.
abstract class StructuredDocumentTagBase extends NodeLink {
  /// Gets or sets Aspose.Words.Markup.SdtListItemCollection associated with this SDT.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.ComboBox or Aspose.Words.Markup.SdtType.DropDownList SDT types.
  /// For all other SDT types, an exception will occur.
  List<StructuredDocumentTagListItem?>? _listItems;

  List<StructuredDocumentTagListItem?>? get listItems => _listItems;
  set listItems(List<StructuredDocumentTagListItem?>? val) => _listItems = val;


  /// Gets or sets a value indicating whether current state of the Checkbox SDT. Default value for this property.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Checkbox SDT types.
  /// For all other SDT types, an exception will occur.
  bool? _checked;

  bool? get checked => _checked;
  set checked(bool? val) => _checked = val;


  /// Gets or sets the appearance of a structured document tag.
  StructuredDocumentTagBase_AppearanceEnum? _appearance;

  StructuredDocumentTagBase_AppearanceEnum? get appearance => _appearance;
  set appearance(StructuredDocumentTagBase_AppearanceEnum? val) => _appearance = val;


  /// Gets or sets the language format for the date displayed in this SDT.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
  /// For all other SDT types, an exception will occur.
  int? _dateDisplayLocale;

  int? get dateDisplayLocale => _dateDisplayLocale;
  set dateDisplayLocale(int? val) => _dateDisplayLocale = val;


  /// Gets or sets String that represents the format in which dates are displayed. Can not be null. The dates for English (U.S.) is "mm/dd/yyyy".
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
  /// For all other SDT types, an exception will occur.
  String? _dateDisplayFormat;

  String? get dateDisplayFormat => _dateDisplayFormat;
  set dateDisplayFormat(String? val) => _dateDisplayFormat = val;


  /// Gets or sets the full date and time last entered into this SDT.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
  /// For all other SDT types, an exception will occur.
  DateTime? _fullDate;

  DateTime? get fullDate => _fullDate;
  set fullDate(DateTime? val) => _fullDate = val;


  /// Gets or sets the friendly name associated with this SDT. Can not be null.
  String? _title;

  String? get title => _title;
  set title(String? val) => _title = val;


  /// Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store.
  /// The default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
  /// For all other SDT types, an exception will occur.
  StructuredDocumentTagBase_DateStorageFormatEnum? _dateStorageFormat;

  StructuredDocumentTagBase_DateStorageFormatEnum? get dateStorageFormat => _dateStorageFormat;
  set dateStorageFormat(StructuredDocumentTagBase_DateStorageFormatEnum? val) => _dateStorageFormat = val;


  /// Gets or sets type of building block for this SDT. Can not be null.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types.
  /// It is read-only for SDT of the document part type.
  /// For all other SDT types, an exception will occur.
  String? _buildingBlockGallery;

  String? get buildingBlockGallery => _buildingBlockGallery;
  set buildingBlockGallery(String? val) => _buildingBlockGallery = val;


  /// Gets or sets category of building block for this SDT node. Can not be null.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types.
  /// It is read-only for SDT of the document part type. For all other SDT types, an exception will occur.
  String? _buildingBlockCategory;

  String? get buildingBlockCategory => _buildingBlockCategory;
  set buildingBlockCategory(String? val) => _buildingBlockCategory = val;


  /// Gets or sets a value indicating whether this SDT allows multiple lines of text.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.RichText and Aspose.Words.Markup.SdtType.PlainText SDT type.
  /// For all other SDT types, an exception will occur.
  bool? _multiline;

  bool? get multiline => _multiline;
  set multiline(bool? val) => _multiline = val;


  /// Gets or sets the color of the structured document tag.
  XmlColor? _color;

  XmlColor? get color => _color;
  set color(XmlColor? val) => _color = val;


  /// Gets or sets the name of the style applied to the structured document tag.
  String? _styleName;

  String? get styleName => _styleName;
  set styleName(String? val) => _styleName = val;


  /// Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default.
  /// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
  /// For all other SDT types, an exception will occur.
  StructuredDocumentTagBase_CalendarTypeEnum? _calendarType;

  StructuredDocumentTagBase_CalendarTypeEnum? get calendarType => _calendarType;
  set calendarType(StructuredDocumentTagBase_CalendarTypeEnum? val) => _calendarType = val;


  /// Gets or sets a value indicating whether this SDT shall be removed from the WordProcessingML document when its contents are modified.
  bool? _isTemporary;

  bool? get isTemporary => _isTemporary;
  set isTemporary(bool? val) => _isTemporary = val;


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
  /// A tag is an arbitrary string which applications can associate with SDT in order to identify it without providing a visible friendly name.
  String? _tag;

  String? get tag => _tag;
  set tag(String? val) => _tag = val;


  /// Gets or sets a unique read-only persistent numerical Id for this SDT.
  /// Id attribute shall follow these rules:
  /// - The document shall retain SDT ids only if the whole document is cloned Aspose.Words.Document.Clone.
  /// - During Aspose.Words.DocumentBase.ImportNode(Aspose.Words.Node,System.Boolean)
  /// - Id shall be retained if import does not cause conflicts with other SDT Ids in the target document.
  /// - If multiple SDT nodes specify the same decimal number value for the Id attribute, then the first SDT in the document shall maintain this original Id, and all subsequent
  /// - SDT nodes shall have new identifiers assigned to them when the document is loaded.
  /// - During standalone SDT Aspose.Words.Markup.StructuredDocumentTag.Clone(System.Boolean,Aspose.Words.INodeCloningListener) operation new unique ID will be generated for the cloned SDT node.
  /// - If Id is not specified in the source document, then the SDT node shall have a new unique identifier assigned to it when the document is loaded.
  int? _id;

  int? get id => _id;
  set id(int? val) => _id = val;


  /// Gets a string that represents the XML contained within the node in the Aspose.Words.SaveFormat.FlatOpc format.
  String? _wordOpenXML;

  String? get wordOpenXML => _wordOpenXML;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StructuredDocumentTagBase data model.');
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
        case 'BoundingBox': appearance = StructuredDocumentTagBase_AppearanceEnum.boundingBox; break;
        case 'Default': appearance = StructuredDocumentTagBase_AppearanceEnum.defaultValue; break;
        case 'Tags': appearance = StructuredDocumentTagBase_AppearanceEnum.tags; break;
        case 'Hidden': appearance = StructuredDocumentTagBase_AppearanceEnum.hidden; break;
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
        case 'Date': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.date; break;
        case 'DateTime': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.dateTime; break;
        case 'Default': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.defaultValue; break;
        case 'Text': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.text; break;
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
      color = ModelBase.createInstance< XmlColor >(json['Color'] as Map<String, dynamic>);
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
        case 'Default': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.defaultValue; break;
        case 'Gregorian': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorian; break;
        case 'GregorianArabic': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianArabic; break;
        case 'GregorianMeFrench': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianMeFrench; break;
        case 'GregorianUs': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianUs; break;
        case 'GregorianXlitEnglish': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitEnglish; break;
        case 'GregorianXlitFrench': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitFrench; break;
        case 'Hebrew': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.hebrew; break;
        case 'Hijri': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.hijri; break;
        case 'Japan': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.japan; break;
        case 'Korea': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.korea; break;
        case 'None': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.none; break;
        case 'Saka': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.saka; break;
        case 'Taiwan': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.taiwan; break;
        case 'Thai': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.thai; break;
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
        case StructuredDocumentTagBase_AppearanceEnum.boundingBox: _result['Appearance'] = 'BoundingBox'; break;
        case StructuredDocumentTagBase_AppearanceEnum.defaultValue: _result['Appearance'] = 'Default'; break;
        case StructuredDocumentTagBase_AppearanceEnum.tags: _result['Appearance'] = 'Tags'; break;
        case StructuredDocumentTagBase_AppearanceEnum.hidden: _result['Appearance'] = 'Hidden'; break;
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
        case StructuredDocumentTagBase_DateStorageFormatEnum.date: _result['DateStorageFormat'] = 'Date'; break;
        case StructuredDocumentTagBase_DateStorageFormatEnum.dateTime: _result['DateStorageFormat'] = 'DateTime'; break;
        case StructuredDocumentTagBase_DateStorageFormatEnum.defaultValue: _result['DateStorageFormat'] = 'Default'; break;
        case StructuredDocumentTagBase_DateStorageFormatEnum.text: _result['DateStorageFormat'] = 'Text'; break;
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
      _result['Color'] = color!.serialize();
    }

    if (styleName != null) {
      _result['StyleName'] = styleName!;
    }

    if (calendarType != null) {
      switch (calendarType!) {
        case StructuredDocumentTagBase_CalendarTypeEnum.defaultValue: _result['CalendarType'] = 'Default'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorian: _result['CalendarType'] = 'Gregorian'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorianArabic: _result['CalendarType'] = 'GregorianArabic'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorianMeFrench: _result['CalendarType'] = 'GregorianMeFrench'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorianUs: _result['CalendarType'] = 'GregorianUs'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitEnglish: _result['CalendarType'] = 'GregorianXlitEnglish'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitFrench: _result['CalendarType'] = 'GregorianXlitFrench'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.hebrew: _result['CalendarType'] = 'Hebrew'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.hijri: _result['CalendarType'] = 'Hijri'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.japan: _result['CalendarType'] = 'Japan'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.korea: _result['CalendarType'] = 'Korea'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.none: _result['CalendarType'] = 'None'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.saka: _result['CalendarType'] = 'Saka'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.taiwan: _result['CalendarType'] = 'Taiwan'; break;
        case StructuredDocumentTagBase_CalendarTypeEnum.thai: _result['CalendarType'] = 'Thai'; break;
        default: break;
      }
    }

    if (isTemporary != null) {
      _result['IsTemporary'] = isTemporary!;
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

  @override
  void validate() {
    super.validate();

    for (final elementListItems in listItems ?? [])
    {
        elementListItems?.validate();
    }













    color?.validate();











  }
}

/// Gets or sets the appearance of a structured document tag.
enum StructuredDocumentTagBase_AppearanceEnum
{ 
  boundingBox,
  defaultValue,
  tags,
  hidden
}

/// Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store.
/// The default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime.
/// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
/// For all other SDT types, an exception will occur.
enum StructuredDocumentTagBase_DateStorageFormatEnum
{ 
  date,
  dateTime,
  defaultValue,
  text
}

/// Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default.
/// Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
/// For all other SDT types, an exception will occur.
enum StructuredDocumentTagBase_CalendarTypeEnum
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

