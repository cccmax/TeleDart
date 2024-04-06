/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2024  Dino PH Leung
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
enum MessageOriginType {
  @JsonValue('user')
  user,
  @JsonValue('hidden_user')
  hiddenUser,
  @JsonValue('chat')
  chat,
  @JsonValue('channel')
  channel,
}

extension MessageOriginTypeExtenson on MessageOriginType {
  String value() => _$MessageOriginTypeEnumMap[this]!;
}

/// This object describes the origin of a message. It can be one of
/// * [MessageOriginUser](https://core.telegram.org/bots/api#messageoriginuser)
/// * [MessageOriginHiddenUser](https://core.telegram.org/bots/api#messageoriginhiddenuser)
/// * [MessageOriginChat](https://core.telegram.org/bots/api#messageoriginchat)
/// * [MessageOriginChannel](https://core.telegram.org/bots/api#messageoriginchannel)
///
/// https://core.telegram.org/bots/api#messageorigin
@JsonSerializable(fieldRename: FieldRename.snake)
class MessageOrigin {
  MessageOriginType type;
  int date;

  MessageOrigin({
    required this.type,
    required this.date,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date_ =>
      TimeHelper.toDateTime(date);
  set date_(DateTime dateTime) =>
      date = TimeHelper.toUnixTime(dateTime);

  factory MessageOrigin.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginFromJson(json);
  Map<String, dynamic> toJson() => _$MessageOriginToJson(this);
}
