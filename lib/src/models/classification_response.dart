/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="classification_response.dart">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

/// The REST response with data on multi-class text classification.
class ClassificationResponse extends WordsResponse {
  /// Gets or sets the best class name.
  String _bestClassName;

  String get bestClassName => _bestClassName;
  set bestClassName(String val) => _bestClassName = val;


  /// Gets or sets the best class probability.
  double _bestClassProbability;

  double get bestClassProbability => _bestClassProbability;
  set bestClassProbability(double val) => _bestClassProbability = val;


  /// Gets or sets the array of best classes results.
  List<ClassificationResult> _bestResults;

  List<ClassificationResult> get bestResults => _bestResults;
  set bestResults(List<ClassificationResult> val) => _bestResults = val;


  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ClassificationResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('BestClassName')) {
      bestClassName = json['BestClassName'] as String;
    } else {
      bestClassName = null;
    }

    if (json.containsKey('BestClassProbability')) {
      bestClassProbability = json['BestClassProbability'] as double;
    } else {
      bestClassProbability = null;
    }

    if (json.containsKey('BestResults')) {
      // Array processing
      bestResults = <ClassificationResult>[];
      for(final _element in json['BestResults']) {
        var _elementValue = ClassificationResult();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        bestResults.add(_elementValue);
      }
    } else {
      bestResults = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (bestClassName != null) {
      _result['BestClassName'] = bestClassName;
    }

    if (bestClassProbability != null) {
      _result['BestClassProbability'] = bestClassProbability;
    }

    if (bestResults != null) {
      _result['BestResults'] = bestResults.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


