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

/// This object represents reaction changes on a message with anonymous reactions.
///
/// https://core.telegram.org/bots/api#messagereactioncountupdated
@JsonSerializable(fieldRename: FieldRename.snake)
class MessageReactionCountUpdated {
  Chat chat;
  int messageId;
  int date;
  List<ReactionCount> reactions;

  MessageReactionCountUpdated({
    required this.chat,
    required this.messageId,
    required this.date,
    required this.reactions,
  });

 @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date_ => TimeHelper.toDateTime(date);
  set date_(DateTime dateTime) =>
      date = TimeHelper.toUnixTime(dateTime);

  factory MessageReactionCountUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionCountUpdatedFromJson(json);
  Map<String, dynamic> toJson() => _$MessageReactionCountUpdatedToJson(this);
}
