/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="office_math_object.dart">
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

/// OfficeMath object.
class OfficeMathObject extends OfficeMathLink {
  /// Gets or sets content of footnote.
  StoryChildNodes content;

  /// Gets or sets /sets Office Math display format type which represents whether an equation is displayed inline with the text
  /// or displayed on its own line.
  OfficeMathObject_DisplayTypeEnum displayType;

  /// Gets or sets /sets Office Math justification.
  OfficeMathObject_JustificationEnum justification;

  /// Gets or sets type Aspose.Words.Math.OfficeMath.MathObjectType of this Office Math object.
  OfficeMathObject_MathObjectTypeEnum mathObjectType;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('Content')) {
      this.content = new StoryChildNodes();
      this.content.deserialize(json['Content']);
    } else {
      this.content = null;
    }

    if (json.containsKey('DisplayType')) {
      switch (json['DisplayType']) {
        case 'Display': this.displayType = OfficeMathObject_DisplayTypeEnum.display; break;
        case 'Inline': this.displayType = OfficeMathObject_DisplayTypeEnum.inline; break;
        default: this.displayType = null; break;
      }
    } else {
      this.displayType = null;
    }

    if (json.containsKey('Justification')) {
      switch (json['Justification']) {
        case 'CenterGroup': this.justification = OfficeMathObject_JustificationEnum.centerGroup; break;
        case 'Default': this.justification = OfficeMathObject_JustificationEnum.default_; break;
        case 'Center': this.justification = OfficeMathObject_JustificationEnum.center; break;
        case 'Left': this.justification = OfficeMathObject_JustificationEnum.left; break;
        case 'Right': this.justification = OfficeMathObject_JustificationEnum.right; break;
        case 'Inline': this.justification = OfficeMathObject_JustificationEnum.inline; break;
        default: this.justification = null; break;
      }
    } else {
      this.justification = null;
    }

    if (json.containsKey('MathObjectType')) {
      switch (json['MathObjectType']) {
        case 'OMath': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.oMath; break;
        case 'OMathPara': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.oMathPara; break;
        case 'Accent': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.accent; break;
        case 'Bar': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.bar; break;
        case 'BorderBox': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.borderBox; break;
        case 'Box': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.box; break;
        case 'Delimiter': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.delimiter; break;
        case 'Degree': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.degree; break;
        case 'Argument': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.argument; break;
        case 'Array': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.array; break;
        case 'Fraction': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.fraction; break;
        case 'Denominator': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.denominator; break;
        case 'Numerator': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.numerator; break;
        case 'Function': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.function; break;
        case 'FunctionName': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.functionName; break;
        case 'GroupCharacter': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.groupCharacter; break;
        case 'Limit': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.limit; break;
        case 'LowerLimit': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.lowerLimit; break;
        case 'UpperLimit': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.upperLimit; break;
        case 'Matrix': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.matrix; break;
        case 'MatrixRow': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.matrixRow; break;
        case 'NAry': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.nAry; break;
        case 'Phantom': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.phantom; break;
        case 'Radical': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.radical; break;
        case 'SubscriptPart': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.subscriptPart; break;
        case 'SuperscriptPart': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.superscriptPart; break;
        case 'PreSubSuperscript': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.preSubSuperscript; break;
        case 'Subscript': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.subscript; break;
        case 'SubSuperscript': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.subSuperscript; break;
        case 'Supercript': this.mathObjectType = OfficeMathObject_MathObjectTypeEnum.supercript; break;
        default: this.mathObjectType = null; break;
      }
    } else {
      this.mathObjectType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.content != null) {
      _result['Content'] = this.content.serialize();
    }

    if (this.displayType != null) {
      switch (this.displayType) {
        case OfficeMathObject_DisplayTypeEnum.display: _result['DisplayType'] = 'Display'; break;
        case OfficeMathObject_DisplayTypeEnum.inline: _result['DisplayType'] = 'Inline'; break;
        default: break;
      }
    }

    if (this.justification != null) {
      switch (this.justification) {
        case OfficeMathObject_JustificationEnum.centerGroup: _result['Justification'] = 'CenterGroup'; break;
        case OfficeMathObject_JustificationEnum.default_: _result['Justification'] = 'Default'; break;
        case OfficeMathObject_JustificationEnum.center: _result['Justification'] = 'Center'; break;
        case OfficeMathObject_JustificationEnum.left: _result['Justification'] = 'Left'; break;
        case OfficeMathObject_JustificationEnum.right: _result['Justification'] = 'Right'; break;
        case OfficeMathObject_JustificationEnum.inline: _result['Justification'] = 'Inline'; break;
        default: break;
      }
    }

    if (this.mathObjectType != null) {
      switch (this.mathObjectType) {
        case OfficeMathObject_MathObjectTypeEnum.oMath: _result['MathObjectType'] = 'OMath'; break;
        case OfficeMathObject_MathObjectTypeEnum.oMathPara: _result['MathObjectType'] = 'OMathPara'; break;
        case OfficeMathObject_MathObjectTypeEnum.accent: _result['MathObjectType'] = 'Accent'; break;
        case OfficeMathObject_MathObjectTypeEnum.bar: _result['MathObjectType'] = 'Bar'; break;
        case OfficeMathObject_MathObjectTypeEnum.borderBox: _result['MathObjectType'] = 'BorderBox'; break;
        case OfficeMathObject_MathObjectTypeEnum.box: _result['MathObjectType'] = 'Box'; break;
        case OfficeMathObject_MathObjectTypeEnum.delimiter: _result['MathObjectType'] = 'Delimiter'; break;
        case OfficeMathObject_MathObjectTypeEnum.degree: _result['MathObjectType'] = 'Degree'; break;
        case OfficeMathObject_MathObjectTypeEnum.argument: _result['MathObjectType'] = 'Argument'; break;
        case OfficeMathObject_MathObjectTypeEnum.array: _result['MathObjectType'] = 'Array'; break;
        case OfficeMathObject_MathObjectTypeEnum.fraction: _result['MathObjectType'] = 'Fraction'; break;
        case OfficeMathObject_MathObjectTypeEnum.denominator: _result['MathObjectType'] = 'Denominator'; break;
        case OfficeMathObject_MathObjectTypeEnum.numerator: _result['MathObjectType'] = 'Numerator'; break;
        case OfficeMathObject_MathObjectTypeEnum.function: _result['MathObjectType'] = 'Function'; break;
        case OfficeMathObject_MathObjectTypeEnum.functionName: _result['MathObjectType'] = 'FunctionName'; break;
        case OfficeMathObject_MathObjectTypeEnum.groupCharacter: _result['MathObjectType'] = 'GroupCharacter'; break;
        case OfficeMathObject_MathObjectTypeEnum.limit: _result['MathObjectType'] = 'Limit'; break;
        case OfficeMathObject_MathObjectTypeEnum.lowerLimit: _result['MathObjectType'] = 'LowerLimit'; break;
        case OfficeMathObject_MathObjectTypeEnum.upperLimit: _result['MathObjectType'] = 'UpperLimit'; break;
        case OfficeMathObject_MathObjectTypeEnum.matrix: _result['MathObjectType'] = 'Matrix'; break;
        case OfficeMathObject_MathObjectTypeEnum.matrixRow: _result['MathObjectType'] = 'MatrixRow'; break;
        case OfficeMathObject_MathObjectTypeEnum.nAry: _result['MathObjectType'] = 'NAry'; break;
        case OfficeMathObject_MathObjectTypeEnum.phantom: _result['MathObjectType'] = 'Phantom'; break;
        case OfficeMathObject_MathObjectTypeEnum.radical: _result['MathObjectType'] = 'Radical'; break;
        case OfficeMathObject_MathObjectTypeEnum.subscriptPart: _result['MathObjectType'] = 'SubscriptPart'; break;
        case OfficeMathObject_MathObjectTypeEnum.superscriptPart: _result['MathObjectType'] = 'SuperscriptPart'; break;
        case OfficeMathObject_MathObjectTypeEnum.preSubSuperscript: _result['MathObjectType'] = 'PreSubSuperscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.subscript: _result['MathObjectType'] = 'Subscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.subSuperscript: _result['MathObjectType'] = 'SubSuperscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.supercript: _result['MathObjectType'] = 'Supercript'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets /sets Office Math display format type which represents whether an equation is displayed inline with the text
/// or displayed on its own line.
enum OfficeMathObject_DisplayTypeEnum
{ 
  display,
  inline
}

/// Gets or sets /sets Office Math justification.
enum OfficeMathObject_JustificationEnum
{ 
  centerGroup,
  default_,
  center,
  left,
  right,
  inline
}

/// Gets or sets type Aspose.Words.Math.OfficeMath.MathObjectType of this Office Math object.
enum OfficeMathObject_MathObjectTypeEnum
{ 
  oMath,
  oMathPara,
  accent,
  bar,
  borderBox,
  box,
  delimiter,
  degree,
  argument,
  array,
  fraction,
  denominator,
  numerator,
  function,
  functionName,
  groupCharacter,
  limit,
  lowerLimit,
  upperLimit,
  matrix,
  matrixRow,
  nAry,
  phantom,
  radical,
  subscriptPart,
  superscriptPart,
  preSubSuperscript,
  subscript,
  subSuperscript,
  supercript
}

