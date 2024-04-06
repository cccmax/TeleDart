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

/// This object represents a message about the completion of a giveaway with public winners.
///
/// https://core.telegram.org/bots/api#giveawaywinners
@JsonSerializable(fieldRename: FieldRename.snake)
class GiveawayWinners {
  List<Chat> chats;
  int giveawayMessageId;
  int winnersSelectionDate;
  int winnerCount;
  List<User> winners;
  int? additionalChatCount;
  int? premiumSubscriptionMonthCount;
  int? unclaimedPrizeCount;
  bool? onlyNewMembers;
  bool? wasRefunded;
  String? prizeDescription;

  GiveawayWinners({
    required this.chats,
    required this.giveawayMessageId,
    required this.winnersSelectionDate,
    required this.winnerCount,
    required this.winners,
    this.additionalChatCount,
    this.premiumSubscriptionMonthCount,
    this.unclaimedPrizeCount,
    this.onlyNewMembers,
    this.wasRefunded,
    this.prizeDescription,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get winnersSelectionDate_ =>
      TimeHelper.toDateTime(winnersSelectionDate);
  set winnersSelectionDate_(DateTime dateTime) =>
      winnersSelectionDate = TimeHelper.toUnixTime(dateTime);

  factory GiveawayWinners.fromJson(Map<String, dynamic> json) =>
      _$GiveawayWinnersFromJson(json);
  Map<String, dynamic> toJson() => _$GiveawayWinnersToJson(this);
}
