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

/// Represents a [chat member] that has some additional privileges.
///
/// https://core.telegram.org/bots/api#chatmemberadministrator
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember
@JsonSerializable(fieldRename: FieldRename.snake)
class ChatMemberAdministrator implements ChatMember {
  @override
  ChatMemberStatus status;
  @override
  User user;
  bool canBeEdited;
  bool isAnonymous;
  bool canManageChat;
  bool canDeleteMessages;
  bool canManageVideoChats;
  bool canRestrictMembers;
  bool canPromoteMembers;
  bool canChangeInfo;
  bool canInviteUsers;
  bool canPostStories;
  bool canEditStories;
  bool canDeleteStories;
  bool? canPostMessages;
  bool? canEditMessages;
  bool? canPinMessages;
  bool? canManageTopics;
  String? customTitle;

  ChatMemberAdministrator({
    required this.user,
    this.status = ChatMemberStatus.administrator,
    this.canBeEdited = false,
    this.isAnonymous = false,
    this.canManageChat = false,
    this.canDeleteMessages = false,
    this.canManageVideoChats = false,
    this.canRestrictMembers = false,
    this.canPromoteMembers = false,
    this.canChangeInfo = false,
    this.canInviteUsers = false,
    this.canPostStories = false,
    this.canEditStories = false,
    this.canDeleteStories = false,
    this.canPostMessages,
    this.canEditMessages,
    this.canPinMessages,
    this.canManageTopics,
    this.customTitle,
  });

  factory ChatMemberAdministrator.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberAdministratorFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatMemberAdministratorToJson(this);
}
