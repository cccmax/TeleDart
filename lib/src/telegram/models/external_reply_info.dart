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

/// This object contains information about a message that is being replied to,
/// which may come from another chat or forum topic.
///
/// https://core.telegram.org/bots/api#externalreplyinfo
@JsonSerializable(fieldRename: FieldRename.snake)
class ExternalReplyInfo {
  MessageOrigin origin;
  Chat? chat;
  int? messageId;
  LinkPreviewOptions? linkPreviewOptions;
  Animation? animation;
  Audio? audio;
  Document? document;
  List<PhotoSize>? photo;
  Sticker? sticker;
  Story? story;
  Video? video;
  VideoNote? videoNote;
  Voice? voice;
  bool? hasMediaSpoiler;
  Contact? contact;
  Dice? dice;
  Game? game;
  Giveaway? giveaway;
  GiveawayWinners? giveawayWinners;
  Invoice? invoice;
  Location? location;
  Poll? poll;
  Venue? venue;

  ExternalReplyInfo({
    required this.origin,
    this.chat,
    this.messageId,
    this.linkPreviewOptions,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.story,
    this.video,
    this.videoNote,
    this.voice,
    this.hasMediaSpoiler,
    this.contact,
    this.dice,
    this.game,
    this.giveaway,
    this.giveawayWinners,
    this.invoice,
    this.location,
    this.poll,
    this.venue,
  });

  factory ExternalReplyInfo.fromJson(Map<String, dynamic> json) =>
      _$ExternalReplyInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalReplyInfoToJson(this);
}
