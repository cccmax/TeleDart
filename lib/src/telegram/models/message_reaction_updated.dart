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

/// This object represents a change of a reaction on a message performed by a user.
///
/// https://core.telegram.org/bots/api#messagereactionupdated
@JsonSerializable(fieldRename: FieldRename.snake)
class MessageReactionUpdated {
  Chat chat;
  int messageId;
  User? user;
  Chat? actorChat;
  int date;
  List<ReactionType> oldReaction;
  List<ReactionType> newReaction;

  MessageReactionUpdated({
    required this.chat,
    required this.messageId,
    this.user,
    this.actorChat,
    required this.date,
    required this.oldReaction,
    required this.newReaction,
  });

 @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get date_ => TimeHelper.toDateTime(date);
  set date_(DateTime dateTime) =>
      date = TimeHelper.toUnixTime(dateTime);

  factory MessageReactionUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionUpdatedFromJson(json);
  Map<String, dynamic> toJson() => _$MessageReactionUpdatedToJson(this);
}
