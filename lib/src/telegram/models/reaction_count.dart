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

/// Represents a reaction added to a message along with the number of times it was added.
///
/// https://core.telegram.org/bots/api#reactioncount
@JsonSerializable(fieldRename: FieldRename.snake)
class ReactionCount {
  ReactionType type;
  int totalCount;
  ReactionCount({
    required this.type,
    required this.totalCount,
  });
  factory ReactionCount.fromJson(Map<String, dynamic> json) =>
      _$ReactionCountFromJson(json);
  Map<String, dynamic> toJson() => _$ReactionCountToJson(this);
}
