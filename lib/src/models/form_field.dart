/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field.dart">
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

/// FromField.
class FormField extends NodeLink {
  /// Gets or sets true if references to the specified form field are automatically updated whenever the field is exited.
  bool calculateOnExit;

  /// Gets or sets true if a form field is enabled.
  bool enabled;

  /// Gets or sets returns or sets an entry macro name for the form field.
  String entryMacro;

  /// Gets or sets returns or sets an exit macro name for the form field.
  String exitMacro;

  /// Gets or sets returns or sets the text that's displayed in a message box when the form field has the focus and the user presses F1.
  String helpText;

  /// Gets or sets the form field name.
  String name;

  /// Gets or sets specifies the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
  bool ownHelp;

  /// Gets or sets specifies the source of the text that's displayed in the status bar when a form field has the focus.
  bool ownStatus;

  /// Gets or sets returns or sets the text that's displayed in the status bar when a form field has the focus.
  String statusText;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('CalculateOnExit')) {
      this.calculateOnExit = json['CalculateOnExit'];
    } else {
      this.calculateOnExit = null;
    }

    if (json.containsKey('Enabled')) {
      this.enabled = json['Enabled'];
    } else {
      this.enabled = null;
    }

    if (json.containsKey('EntryMacro')) {
      this.entryMacro = json['EntryMacro'];
    } else {
      this.entryMacro = null;
    }

    if (json.containsKey('ExitMacro')) {
      this.exitMacro = json['ExitMacro'];
    } else {
      this.exitMacro = null;
    }

    if (json.containsKey('HelpText')) {
      this.helpText = json['HelpText'];
    } else {
      this.helpText = null;
    }

    if (json.containsKey('Name')) {
      this.name = json['Name'];
    } else {
      this.name = null;
    }

    if (json.containsKey('OwnHelp')) {
      this.ownHelp = json['OwnHelp'];
    } else {
      this.ownHelp = null;
    }

    if (json.containsKey('OwnStatus')) {
      this.ownStatus = json['OwnStatus'];
    } else {
      this.ownStatus = null;
    }

    if (json.containsKey('StatusText')) {
      this.statusText = json['StatusText'];
    } else {
      this.statusText = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.calculateOnExit != null) {
      _result['CalculateOnExit'] = this.calculateOnExit;
    }

    if (this.enabled != null) {
      _result['Enabled'] = this.enabled;
    }

    if (this.entryMacro != null) {
      _result['EntryMacro'] = this.entryMacro;
    }

    if (this.exitMacro != null) {
      _result['ExitMacro'] = this.exitMacro;
    }

    if (this.helpText != null) {
      _result['HelpText'] = this.helpText;
    }

    if (this.name != null) {
      _result['Name'] = this.name;
    }

    if (this.ownHelp != null) {
      _result['OwnHelp'] = this.ownHelp;
    }

    if (this.ownStatus != null) {
      _result['OwnStatus'] = this.ownStatus;
    }

    if (this.statusText != null) {
      _result['StatusText'] = this.statusText;
    }
    return _result;
  }
}


