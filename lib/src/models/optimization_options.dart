/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="optimization_options.dart">
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

/// Container class for the document optimization options.
class OptimizationOptions implements ModelBase {
  /// Gets or sets specific MSWord version.
  OptimizationOptions_MsWordVersionEnum msWordVersion;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('MsWordVersion')) {
      switch (json['MsWordVersion']) {
        case 'Word2000': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2000; break;
        case 'Word2002': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002; break;
        case 'Word2003': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2003; break;
        case 'Word2007': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2007; break;
        case 'Word2010': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2010; break;
        case 'Word2013': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2013; break;
        case 'Word2016': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2016; break;
        case 'Word2019': this.msWordVersion = OptimizationOptions_MsWordVersionEnum.word2019; break;
        default: this.msWordVersion = null; break;
      }
    } else {
      this.msWordVersion = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.msWordVersion != null) {
      switch (this.msWordVersion) {
        case OptimizationOptions_MsWordVersionEnum.word2000: _result['MsWordVersion'] = 'Word2000'; break;
        case OptimizationOptions_MsWordVersionEnum.word2002: _result['MsWordVersion'] = 'Word2002'; break;
        case OptimizationOptions_MsWordVersionEnum.word2003: _result['MsWordVersion'] = 'Word2003'; break;
        case OptimizationOptions_MsWordVersionEnum.word2007: _result['MsWordVersion'] = 'Word2007'; break;
        case OptimizationOptions_MsWordVersionEnum.word2010: _result['MsWordVersion'] = 'Word2010'; break;
        case OptimizationOptions_MsWordVersionEnum.word2013: _result['MsWordVersion'] = 'Word2013'; break;
        case OptimizationOptions_MsWordVersionEnum.word2016: _result['MsWordVersion'] = 'Word2016'; break;
        case OptimizationOptions_MsWordVersionEnum.word2019: _result['MsWordVersion'] = 'Word2019'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets specific MSWord version.
enum OptimizationOptions_MsWordVersionEnum
{ 
  word2000,
  word2002,
  word2003,
  word2007,
  word2010,
  word2013,
  word2016,
  word2019
}

