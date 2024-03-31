/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

@JsonEnum()
enum InlineQueryResultType {
  @JsonValue('article')
  article,
  @JsonValue('audio')
  audio,
  @JsonValue('document')
  document,
  @JsonValue('gif')
  gif,
  @JsonValue('mpeg4_gif')
  mpeg4Gif,
  @JsonValue('photo')
  photo,
  @JsonValue('sticker')
  sticker,
  @JsonValue('video')
  video,
  @JsonValue('voice')
  voice,
  @JsonValue('contact')
  contact,
  @JsonValue('game')
  game,
  @JsonValue('location')
  location,
  @JsonValue('venue')
  venue,
}

extension InlineQueryResultTypeExtenson on InlineQueryResultType {
  String value() => _$InlineQueryResultTypeEnumMap[this]!;
}

/// This object represents one result of an inline query.
///
/// Telegram clients currently support results of the following 20 types:
/// * [InlineQueryResultCachedAudio](https://core.telegram.org/bots/api#inlinequeryresultcachedaudio)
/// * [InlineQueryResultCachedDocument](https://core.telegram.org/bots/api#inlinequeryresultcacheddocument)
/// * [InlineQueryResultCachedGif](https://core.telegram.org/bots/api#inlinequeryresultcachedgif)
/// * [InlineQueryResultCachedMpeg4Gif](https://core.telegram.org/bots/api#inlinequeryresultcachedmpeg4gif)
/// * [InlineQueryResultCachedPhoto](https://core.telegram.org/bots/api#inlinequeryresultcachedphoto)
/// * [InlineQueryResultCachedSticker](https://core.telegram.org/bots/api#inlinequeryresultcachedsticker)
/// * [InlineQueryResultCachedVideo](https://core.telegram.org/bots/api#inlinequeryresultcachedvideo)
/// * [InlineQueryResultCachedVoice](https://core.telegram.org/bots/api#inlinequeryresultcachedvoice)
/// * [InlineQueryResultArticle](https://core.telegram.org/bots/api#inlinequeryresultarticle)
/// * [InlineQueryResultAudio](https://core.telegram.org/bots/api#inlinequeryresultaudio)
/// * [InlineQueryResultContact](https://core.telegram.org/bots/api#inlinequeryresultcontact)
/// * [InlineQueryResultGame](https://core.telegram.org/bots/api#inlinequeryresultgame)
/// * [InlineQueryResultDocument](https://core.telegram.org/bots/api#inlinequeryresultdocument)
/// * [InlineQueryResultGif](https://core.telegram.org/bots/api#inlinequeryresultgif)
/// * [InlineQueryResultLocation](https://core.telegram.org/bots/api#inlinequeryresultlocation)
/// * [InlineQueryResultMpeg4Gif](https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif)
/// * [InlineQueryResultPhoto](https://core.telegram.org/bots/api#inlinequeryresultphoto)
/// * [InlineQueryResultVenue](https://core.telegram.org/bots/api#inlinequeryresultvenue)
/// * [InlineQueryResultVideo](https://core.telegram.org/bots/api#inlinequeryresultvideo)
/// * [InlineQueryResultVoice](https://core.telegram.org/bots/api#inlinequeryresultvoice)
///
/// https://core.telegram.org/bots/api#inlinequeryresult
@JsonSerializable(fieldRename: FieldRename.snake)
class InlineQueryResult {
  InlineQueryResultType type;
  String id;
  InlineKeyboardMarkup? replyMarkup;
  InlineQueryResult({
    required this.type,
    required this.id,
    this.replyMarkup,
  });
  factory InlineQueryResult.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultFromJson(json);
  Map<String, dynamic> toJson() => _$InlineQueryResultToJson(this);
}
