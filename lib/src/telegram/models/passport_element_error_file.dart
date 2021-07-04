/// TeleDart - Telegram Bot API for Dart
/// Copyright (C) 2019  Dino PH Leung
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.

part of '../model.dart';

/// Represents an issue with a document scan.
/// The error is considered resolved when the file with the document scan changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorfile
@JsonSerializable()
class PassportElementErrorFile implements PassportElementError {
  @override
  String source;
  @override
  String type;
  @override
  String message;
  String file_hash;
  PassportElementErrorFile({
    required this.source,
    required this.type,
    required this.message,
    required this.file_hash,
  });
  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFileFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PassportElementErrorFileToJson(this);
}
