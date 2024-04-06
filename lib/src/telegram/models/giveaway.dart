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

/// This object represents a message about a scheduled giveaway.
///
/// https://core.telegram.org/bots/api#giveaway
@JsonSerializable(fieldRename: FieldRename.snake)
class Giveaway {
  List<Chat> chats;
  int winnersSelectionDate;
  int winnerCount;
  bool? onlyNewMembers;
  bool? hasPublicWinners;
  String? prizeDescription;
  List<String>? premiumSubscriptionMonthCount;

  Giveaway({
    required this.chats,
    required this.winnersSelectionDate,
    required this.winnerCount,
    this.onlyNewMembers,
    this.hasPublicWinners,
    this.prizeDescription,
    this.premiumSubscriptionMonthCount,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get winnersSelectionDate_ => TimeHelper.toDateTime(winnersSelectionDate);
  set winnersSelectionDate_(DateTime dateTime) =>
      winnersSelectionDate = TimeHelper.toUnixTime(dateTime);

  factory Giveaway.fromJson(Map<String, dynamic> json) =>
      _$GiveawayFromJson(json);
  Map<String, dynamic> toJson() => _$GiveawayToJson(this);
}
