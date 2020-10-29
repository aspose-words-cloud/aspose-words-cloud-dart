/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_insert.dart">
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

/// Insert document to document list.
class ListInsert implements ModelBase {
  /// Gets or sets a value indicating whether specifies whether list should be restarted at each section. Default value is false.
  ListInsert_TemplateEnum template;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('Template')) {
      switch (json['Template']) {
        case 'BulletDefault': this.template = ListInsert_TemplateEnum.bulletDefault; break;
        case 'BulletDisk': this.template = ListInsert_TemplateEnum.bulletDisk; break;
        case 'BulletCircle': this.template = ListInsert_TemplateEnum.bulletCircle; break;
        case 'BulletSquare': this.template = ListInsert_TemplateEnum.bulletSquare; break;
        case 'BulletDiamonds': this.template = ListInsert_TemplateEnum.bulletDiamonds; break;
        case 'BulletArrowHead': this.template = ListInsert_TemplateEnum.bulletArrowHead; break;
        case 'BulletTick': this.template = ListInsert_TemplateEnum.bulletTick; break;
        case 'NumberDefault': this.template = ListInsert_TemplateEnum.numberDefault; break;
        case 'NumberArabicDot': this.template = ListInsert_TemplateEnum.numberArabicDot; break;
        case 'NumberArabicParenthesis': this.template = ListInsert_TemplateEnum.numberArabicParenthesis; break;
        case 'NumberUppercaseRomanDot': this.template = ListInsert_TemplateEnum.numberUppercaseRomanDot; break;
        case 'NumberUppercaseLetterDot': this.template = ListInsert_TemplateEnum.numberUppercaseLetterDot; break;
        case 'NumberLowercaseLetterParenthesis': this.template = ListInsert_TemplateEnum.numberLowercaseLetterParenthesis; break;
        case 'NumberLowercaseLetterDot': this.template = ListInsert_TemplateEnum.numberLowercaseLetterDot; break;
        case 'NumberLowercaseRomanDot': this.template = ListInsert_TemplateEnum.numberLowercaseRomanDot; break;
        case 'OutlineNumbers': this.template = ListInsert_TemplateEnum.outlineNumbers; break;
        case 'OutlineLegal': this.template = ListInsert_TemplateEnum.outlineLegal; break;
        case 'OutlineBullets': this.template = ListInsert_TemplateEnum.outlineBullets; break;
        case 'OutlineHeadingsArticleSection': this.template = ListInsert_TemplateEnum.outlineHeadingsArticleSection; break;
        case 'OutlineHeadingsLegal': this.template = ListInsert_TemplateEnum.outlineHeadingsLegal; break;
        case 'OutlineHeadingsNumbers': this.template = ListInsert_TemplateEnum.outlineHeadingsNumbers; break;
        case 'OutlineHeadingsChapter': this.template = ListInsert_TemplateEnum.outlineHeadingsChapter; break;
        default: this.template = null; break;
      }
    } else {
      this.template = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.template != null) {
      switch (this.template) {
        case ListInsert_TemplateEnum.bulletDefault: _result['Template'] = 'BulletDefault'; break;
        case ListInsert_TemplateEnum.bulletDisk: _result['Template'] = 'BulletDisk'; break;
        case ListInsert_TemplateEnum.bulletCircle: _result['Template'] = 'BulletCircle'; break;
        case ListInsert_TemplateEnum.bulletSquare: _result['Template'] = 'BulletSquare'; break;
        case ListInsert_TemplateEnum.bulletDiamonds: _result['Template'] = 'BulletDiamonds'; break;
        case ListInsert_TemplateEnum.bulletArrowHead: _result['Template'] = 'BulletArrowHead'; break;
        case ListInsert_TemplateEnum.bulletTick: _result['Template'] = 'BulletTick'; break;
        case ListInsert_TemplateEnum.numberDefault: _result['Template'] = 'NumberDefault'; break;
        case ListInsert_TemplateEnum.numberArabicDot: _result['Template'] = 'NumberArabicDot'; break;
        case ListInsert_TemplateEnum.numberArabicParenthesis: _result['Template'] = 'NumberArabicParenthesis'; break;
        case ListInsert_TemplateEnum.numberUppercaseRomanDot: _result['Template'] = 'NumberUppercaseRomanDot'; break;
        case ListInsert_TemplateEnum.numberUppercaseLetterDot: _result['Template'] = 'NumberUppercaseLetterDot'; break;
        case ListInsert_TemplateEnum.numberLowercaseLetterParenthesis: _result['Template'] = 'NumberLowercaseLetterParenthesis'; break;
        case ListInsert_TemplateEnum.numberLowercaseLetterDot: _result['Template'] = 'NumberLowercaseLetterDot'; break;
        case ListInsert_TemplateEnum.numberLowercaseRomanDot: _result['Template'] = 'NumberLowercaseRomanDot'; break;
        case ListInsert_TemplateEnum.outlineNumbers: _result['Template'] = 'OutlineNumbers'; break;
        case ListInsert_TemplateEnum.outlineLegal: _result['Template'] = 'OutlineLegal'; break;
        case ListInsert_TemplateEnum.outlineBullets: _result['Template'] = 'OutlineBullets'; break;
        case ListInsert_TemplateEnum.outlineHeadingsArticleSection: _result['Template'] = 'OutlineHeadingsArticleSection'; break;
        case ListInsert_TemplateEnum.outlineHeadingsLegal: _result['Template'] = 'OutlineHeadingsLegal'; break;
        case ListInsert_TemplateEnum.outlineHeadingsNumbers: _result['Template'] = 'OutlineHeadingsNumbers'; break;
        case ListInsert_TemplateEnum.outlineHeadingsChapter: _result['Template'] = 'OutlineHeadingsChapter'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets a value indicating whether specifies whether list should be restarted at each section. Default value is false.
enum ListInsert_TemplateEnum
{ 
  bulletDefault,
  bulletDisk,
  bulletCircle,
  bulletSquare,
  bulletDiamonds,
  bulletArrowHead,
  bulletTick,
  numberDefault,
  numberArabicDot,
  numberArabicParenthesis,
  numberUppercaseRomanDot,
  numberUppercaseLetterDot,
  numberLowercaseLetterParenthesis,
  numberLowercaseLetterDot,
  numberLowercaseRomanDot,
  outlineNumbers,
  outlineLegal,
  outlineBullets,
  outlineHeadingsArticleSection,
  outlineHeadingsLegal,
  outlineHeadingsNumbers,
  outlineHeadingsChapter
}

