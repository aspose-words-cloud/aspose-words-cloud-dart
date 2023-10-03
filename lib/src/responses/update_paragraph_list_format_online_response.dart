/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="update_paragraph_list_format_online_response.dart">
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

import 'dart:convert';
import 'dart:typed_data';

import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../body_part_data.dart';

/// Updates the formatting properties of a paragraph list in the document node.
class UpdateParagraphListFormatOnlineResponse implements ResponseBase {
  /// The REST response with a list format for a paragraph.
  /// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/listFormat" REST API requests.
  ParagraphListFormatResponse? model;

  /// The document after modification.
  Map<String, ByteData>? document;

  @override
  void deserialize(ApiClient apiClient, Map<String, BodyPartData> _parts) {
    final _modelBody = _parts['model'];
    if (_modelBody != null) {
        final _modelJsonData = utf8.decode(_modelBody.content.buffer.asUint8List(_modelBody.content.offsetInBytes, _modelBody.content.lengthInBytes));
        model = ModelBase.createInstance< ParagraphListFormatResponse >(jsonDecode(_modelJsonData) as Map<String, dynamic>);
    }

    final _documentFile = _parts['document'];
    if (_documentFile != null) {
        document = apiClient.deserializeFilesCollection(_documentFile);
    }
  }
}

