/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="byte_data_extensions.dart">
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

import 'dart:typed_data';

extension ByteDataExtensions on ByteData {
  bool compare(final ByteData part, { int offset = 0 }) {
    if (part.lengthInBytes > this.lengthInBytes - offset) {
      return false;
    }

    for (int i = 0; i < part.lengthInBytes; i++) {
      if (part.getUint8(i) != this.getUint8(i + offset)) {
        return false;
      }
    }

    return true;
  }

  int indexOf(final ByteData part, {int startIndex = 0}) {
    if (part.lengthInBytes > this.lengthInBytes - startIndex) {
      return null;
    }

    int partLength = part.lengthInBytes;
    int totalLength = this.lengthInBytes - partLength;
    for (int i = startIndex; i < totalLength; i++) {
      bool expression = true;
      for (int q = 0; q < partLength; q++) {
        if (this.getUint8(i + q) != part.getUint8(q)) {
          expression = false;
          break;
        }
      }

      if (expression) {
        return i;
      }
    }

    return null;
  }

  List<ByteData> split(final ByteData separator, {bool skipEmptyParts = true}) {
    var result = new List<ByteData>();

    int offset = 0;
    int separatorSize = separator.lengthInBytes;
    while (true) {
      var newOffset = this.indexOf(separator, startIndex: offset);
      if (newOffset == null) {
        result.add(ByteData.sublistView(this, offset));
        break;
      }
      else {
        if (!skipEmptyParts || (newOffset != offset)) {
          result.add(ByteData.sublistView(this, offset, newOffset));
        }
        offset = newOffset + separatorSize;
      }
    };

    return result;
  }
}