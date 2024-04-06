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
enum ReactionTypeType {
  @JsonValue('emoji')
  emoji,
  @JsonValue('custom_emoji')
  customEmoji
}

extension ReactionTypeTypeExtenson on ReactionTypeType {
  String value() => _$ReactionTypeTypeEnumMap[this]!;
}

/// This object describes the type of a reaction. Currently, it can be one of
///
/// * [ReactionTypeEmoji](https://core.telegram.org/bots/api#reactiontypeemoji)
/// * [ReactionTypeCustomEmoji](https://core.telegram.org/bots/api#reactiontypecustomemoji)
///
/// https://core.telegram.org/bots/api#reactiontype
@JsonSerializable(fieldRename: FieldRename.snake)
class ReactionType {
  ReactionTypeType type;

  ReactionType({required this.type});
  
  factory ReactionType.fromJson(Map<String, dynamic> json) =>
      _$ReactionTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ReactionTypeToJson(this);
}
