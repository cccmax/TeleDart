/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2023  Dino PH Leung
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
enum InputMediaType {
  @JsonValue('animation')
  animation,
  @JsonValue('audio')
  audio,
  @JsonValue('document')
  document,
  @JsonValue('photo')
  photo,
  @JsonValue('video')
  video,
}

extension InputMediaTypeExtenson on InputMediaType {
  String value() => _$InputMediaTypeEnumMap[this]!;
}

/// This object represents the content of a media message to be sent.
///
/// It should be one of
/// * [InputMediaAnimation](https://core.telegram.org/bots/api#inputmediaanimation)
/// * [InputMediaDocument](https://core.telegram.org/bots/api#inputmediadocument)
/// * [InputMediaAudio](https://core.telegram.org/bots/api#inputmediaaudio)
/// * [InputMediaPhoto](https://core.telegram.org/bots/api#inputmediaphoto)
/// * [InputMediaVideo](https://core.telegram.org/bots/api#inputmediavideo)
///
/// https://core.telegram.org/bots/api#inputmedia
@JsonSerializable(fieldRename: FieldRename.snake)
class InputMedia {
  InputMediaType type;
  String media;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;

  @JsonKey(includeFromJson: false, includeToJson: false)
  MultipartFile? mediaFile;

  InputMedia({
    required this.type,
    required this.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.mediaFile,
  });

  factory InputMedia.fromJson(Map<String, dynamic> json) =>
      _$InputMediaFromJson(json);
  Map<String, dynamic> toJson() => _$InputMediaToJson(this);
}
