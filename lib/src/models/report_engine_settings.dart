/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="report_engine_settings.dart">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

/// Report engine settings.
class ReportEngineSettings implements ModelBase {
  /// Gets or sets the options for parsing CSV data.
  CsvDataLoadOptions csvDataLoadOptions;

  /// Gets or sets the name to reference the data source object in the template.
  String dataSourceName;

  /// Gets or sets type of datasource.
  ReportEngineSettings_DataSourceTypeEnum dataSourceType;

  /// Gets or sets type of options to build report.
  List<ReportBuildOptionsEnum> reportBuildOptions;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ReportEngineSettings data model.');
    }

    if (json.containsKey('CsvDataLoadOptions')) {
      csvDataLoadOptions = CsvDataLoadOptions();
      csvDataLoadOptions.deserialize(json['CsvDataLoadOptions'] as Map<String, dynamic>);
    } else {
      csvDataLoadOptions = null;
    }

    if (json.containsKey('DataSourceName')) {
      dataSourceName = json['DataSourceName'] as String;
    } else {
      dataSourceName = null;
    }

    if (json.containsKey('DataSourceType')) {
      switch (json['DataSourceType'] as String) {
        case 'Xml': dataSourceType = ReportEngineSettings_DataSourceTypeEnum.xml; break;
        case 'Json': dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json; break;
        case 'Csv': dataSourceType = ReportEngineSettings_DataSourceTypeEnum.csv; break;
        default: dataSourceType = null; break;
      }
    } else {
      dataSourceType = null;
    }

    if (json.containsKey('ReportBuildOptions')) {
      // Array processing
      reportBuildOptions = <ReportBuildOptionsEnum>[];
      for(final _element in json['ReportBuildOptions']) {
        switch (_element as String) {
          case 'None': reportBuildOptions.add(ReportBuildOptionsEnum.none); break;
          case 'AllowMissingMembers': reportBuildOptions.add(ReportBuildOptionsEnum.allowMissingMembers); break;
          case 'RemoveEmptyParagraphs': reportBuildOptions.add(ReportBuildOptionsEnum.removeEmptyParagraphs); break;
          case 'InlineErrorMessages': reportBuildOptions.add(ReportBuildOptionsEnum.inlineErrorMessages); break;
          default: break;
        }
      }
    } else {
      reportBuildOptions = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (csvDataLoadOptions != null) {
      _result['CsvDataLoadOptions'] = csvDataLoadOptions.serialize();
    }

    if (dataSourceName != null) {
      _result['DataSourceName'] = dataSourceName;
    }

    if (dataSourceType != null) {
      switch (dataSourceType) {
        case ReportEngineSettings_DataSourceTypeEnum.xml: _result['DataSourceType'] = 'Xml'; break;
        case ReportEngineSettings_DataSourceTypeEnum.json: _result['DataSourceType'] = 'Json'; break;
        case ReportEngineSettings_DataSourceTypeEnum.csv: _result['DataSourceType'] = 'Csv'; break;
        default: break;
      }
    }

    if (reportBuildOptions != null) {
      _result['ReportBuildOptions'] = reportBuildOptions.map((_element) {
        switch (_element) {
            case ReportBuildOptionsEnum.none: return 'None';
            case ReportBuildOptionsEnum.allowMissingMembers: return 'AllowMissingMembers';
            case ReportBuildOptionsEnum.removeEmptyParagraphs: return 'RemoveEmptyParagraphs';
            case ReportBuildOptionsEnum.inlineErrorMessages: return 'InlineErrorMessages';
            default: return null;
        }
      }).toList();
    }
    return _result;
  }
}

/// Gets or sets type of datasource.
enum ReportEngineSettings_DataSourceTypeEnum
{ 
  xml,
  json,
  csv
}

