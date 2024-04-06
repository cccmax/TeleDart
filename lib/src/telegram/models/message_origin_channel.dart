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

/// The message was originally sent to a channel chat.
///
/// https://core.telegram.org/bots/api#messageoriginchannel
@JsonSerializable(fieldRename: FieldRename.snake)
class MessageOriginChannel implements MessageOrigin {
  @override
  MessageOriginType type;
  @override
  int date;
  Chat chat;
  int messageId;
  String? authorSignature;

  MessageOriginChannel({
    required this.type,
    required this.date,
    required this.chat,
    required this.messageId,
    this.authorSignature,
  });

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date_ =>
      TimeHelper.toDateTime(date);
  @override
  set date_(DateTime dateTime) =>
      date = TimeHelper.toUnixTime(dateTime);

  factory MessageOriginChannel.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginChannelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MessageOriginChannelToJson(this);
}
