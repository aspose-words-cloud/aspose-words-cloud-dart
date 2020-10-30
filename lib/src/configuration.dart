/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="configuration.dart">
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

class Configuration {
  final String appKey;
  final String appSid;
  final String baseUrl;
  final bool debugMode;

  Configuration(final this.appKey, final this.appSid, {final this.baseUrl = 'https://api.aspose.cloud', final this.debugMode = false});

  Configuration.fromJson(final Map<String, dynamic> json)
    : appKey = json['AppKey'] as String,
      appSid = json['AppSid'] as String,
      baseUrl = json['BaseUrl'] as String,
      debugMode = json['DebugMode'] as bool;

  String getApiRootUrl()
  {
    return '$baseUrl/v4.0';
  }
}