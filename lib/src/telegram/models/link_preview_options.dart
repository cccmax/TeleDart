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

/// Describes the options used for link preview generation.
///
/// https://core.telegram.org/bots/api#linkpreviewoptions
@JsonSerializable(fieldRename: FieldRename.snake)
class LinkPreviewOptions {
  bool? isDisabled;
  String? url;
  bool? preferSmallMedia;
  bool? preferLargeMedia;
  bool? showAboveText;

  LinkPreviewOptions({
    this.isDisabled,
    this.url,
    this.preferSmallMedia,
    this.preferLargeMedia,
    this.showAboveText,
  });

  factory LinkPreviewOptions.fromJson(Map<String, dynamic> json) =>
      _$LinkPreviewOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$LinkPreviewOptionsToJson(this);
}
