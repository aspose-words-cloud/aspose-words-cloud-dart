/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="report_engine_settings.dart">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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
  /// Gets or sets options for parsing CSV data.
  CsvDataLoadOptions csvDataLoadOptions;

  /// Gets or sets a name to reference the data source object in the template.
  String dataSourceName;

  /// Gets or sets type of datasource.
  ReportEngineSettings_DataSourceTypeEnum dataSourceType;

  /// Gets or sets type of options to build report.
  List<ReportBuildOptionsEnum> reportBuildOptions;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('CsvDataLoadOptions')) {
      this.csvDataLoadOptions = new CsvDataLoadOptions();
      this.csvDataLoadOptions.deserialize(json['CsvDataLoadOptions']);
    } else {
      this.csvDataLoadOptions = null;
    }

    if (json.containsKey('DataSourceName')) {
      this.dataSourceName = json['DataSourceName'];
    } else {
      this.dataSourceName = null;
    }

    if (json.containsKey('DataSourceType')) {
      switch (json['DataSourceType']) {
        case 'Xml': this.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.xml; break;
        case 'Json': this.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.json; break;
        case 'Csv': this.dataSourceType = ReportEngineSettings_DataSourceTypeEnum.csv; break;
        default: this.dataSourceType = null; break;
      }
    } else {
      this.dataSourceType = null;
    }

    if (json.containsKey('ReportBuildOptions')) {
      // Array processing
      this.reportBuildOptions = new List<ReportBuildOptionsEnum>();
      for(final _element in json['ReportBuildOptions']) {
        switch (_element) {
          case 'None': this.reportBuildOptions.add(ReportBuildOptionsEnum.none); break;
          case 'AllowMissingMembers': this.reportBuildOptions.add(ReportBuildOptionsEnum.allowMissingMembers); break;
          case 'RemoveEmptyParagraphs': this.reportBuildOptions.add(ReportBuildOptionsEnum.removeEmptyParagraphs); break;
          case 'InlineErrorMessages': this.reportBuildOptions.add(ReportBuildOptionsEnum.inlineErrorMessages); break;
          default: break;
        }
      }
    } else {
      this.reportBuildOptions = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.csvDataLoadOptions != null) {
      _result['CsvDataLoadOptions'] = this.csvDataLoadOptions.serialize();
    }

    if (this.dataSourceName != null) {
      _result['DataSourceName'] = this.dataSourceName;
    }

    if (this.dataSourceType != null) {
      switch (this.dataSourceType) {
        case ReportEngineSettings_DataSourceTypeEnum.xml: _result['DataSourceType'] = 'Xml'; break;
        case ReportEngineSettings_DataSourceTypeEnum.json: _result['DataSourceType'] = 'Json'; break;
        case ReportEngineSettings_DataSourceTypeEnum.csv: _result['DataSourceType'] = 'Csv'; break;
        default: break;
      }
    }

    if (this.reportBuildOptions != null) {
      _result['ReportBuildOptions'] = this.reportBuildOptions.map((_element) {
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

