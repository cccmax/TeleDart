/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2021  Dino PH Leung
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
enum BotCommandScopeType {
  @JsonValue('default')
  defaultCommand,
  @JsonValue('all_private_chats')
  allPrivateChats,
  @JsonValue('all_group_chats')
  allGroupChats,
  @JsonValue('all_chat_administrators')
  allChatAdministrators,
  @JsonValue('chat')
  chat,
  @JsonValue('chat_administrators')
  chatAdministrators,
  @JsonValue('chat_member')
  chatMember,
}

extension BotCommandScopeTypeExtenson on BotCommandScopeType {
  String value() => _$BotCommandScopeTypeEnumMap[this]!;
}

/// This object represents the scope to which bot commands are applied.
///
/// Currently, the following 7 scopes are supported:
/// * [BotCommandScopeDefault](https://core.telegram.org/bots/api#botcommandscopedefault)
/// * [BotCommandScopeAllPrivateChats](https://core.telegram.org/bots/api#botcommandscopeallprivatechats)
/// * [BotCommandScopeAllGroupChats](https://core.telegram.org/bots/api#botcommandscopeallgroupchats)
/// * [BotCommandScopeAllChatAdministrators](https://core.telegram.org/bots/api#botcommandscopeallchatadministrators)
/// * [BotCommandScopeChat](https://core.telegram.org/bots/api#botcommandscopechat)
/// * [BotCommandScopeChatAdministrators](https://core.telegram.org/bots/api#botcommandscopechatadministrators)
/// * [BotCommandScopeChatMember](https://core.telegram.org/bots/api#botcommandscopechatmember)
///
/// https://core.telegram.org/bots/api#botcommandscope
@JsonSerializable(fieldRename: FieldRename.snake)
class BotCommandScope {
  BotCommandScopeType type;

  BotCommandScope({required this.type});

  factory BotCommandScope.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeFromJson(json);
  Map<String, dynamic> toJson() => _$BotCommandScopeToJson(this);
}
