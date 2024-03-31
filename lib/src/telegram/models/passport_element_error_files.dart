/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
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

/// Represents an issue with a list of scans.
///
/// The error is considered resolved when the list of files containing the scans changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorfiles
@JsonSerializable(fieldRename: FieldRename.snake)
class PassportElementErrorFiles implements PassportElementError {
  @override
  String source;
  @override
  PassportElementErrorType type;
  @override
  String message;
  List<String> fileHashes;
  PassportElementErrorFiles({
    required this.source,
    required this.type,
    required this.message,
    required this.fileHashes,
  });
  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFilesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PassportElementErrorFilesToJson(this);
}
